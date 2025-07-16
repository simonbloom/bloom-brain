#!/bin/bash

# Bloom Brain Hook: Intelligent Server Restart
# Automatically restarts development servers for any project

set -e

# Configuration - These will be customized per project
MAIN_PORT={{MAIN_PORT}}
STORYBOOK_PORT={{STORYBOOK_PORT}}
PROJECT_DIR="{{PROJECT_DIR}}"
PACKAGE_MANAGER="{{PACKAGE_MANAGER}}"
LOG_FILE="$PROJECT_DIR/.claude/hooks/restart.log"

# Create log file if it doesn't exist
mkdir -p "$(dirname "$LOG_FILE")"
touch "$LOG_FILE"

# Logging function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# Check if port is in use
is_port_in_use() {
    lsof -ti:$1 >/dev/null 2>&1
}

# Kill processes on specified ports
kill_servers() {
    log "Stopping existing servers..."
    
    # Kill main dev server
    if is_port_in_use $MAIN_PORT; then
        log "Killing process on port $MAIN_PORT"
        lsof -ti:$MAIN_PORT | xargs kill -9 2>/dev/null || true
    fi
    
    # Kill Storybook if running
    if is_port_in_use $STORYBOOK_PORT; then
        log "Killing process on port $STORYBOOK_PORT"
        lsof -ti:$STORYBOOK_PORT | xargs kill -9 2>/dev/null || true
    fi
    
    # Additional cleanup for any remaining processes
    pkill -f "vite.*$MAIN_PORT" 2>/dev/null || true
    pkill -f "storybook.*$STORYBOOK_PORT" 2>/dev/null || true
    
    # Wait a moment for processes to die
    sleep 2
}

# Start main development server
start_main_server() {
    log "Starting main development server on port $MAIN_PORT..."
    cd "$PROJECT_DIR"
    
    # Start in background with explicit port configuration
    nohup $PACKAGE_MANAGER dev --host 0.0.0.0 --port $MAIN_PORT > "$LOG_FILE.dev" 2>&1 &
    DEV_PID=$!
    
    # Wait for server to start
    for i in {1..45}; do
        if is_port_in_use $MAIN_PORT; then
            log "Main server started successfully (PID: $DEV_PID)"
            return 0
        fi
        sleep 1
    done
    
    log "ERROR: Main server failed to start within 45 seconds"
    return 1
}

# Determine if Storybook should be started based on file changes
should_start_storybook() {
    # Check if we're dealing with component changes
    if [[ -n "${CLAUDE_CHANGED_FILES:-}" ]]; then
        # Start Storybook for UI component changes
        if echo "$CLAUDE_CHANGED_FILES" | grep -E "(src/components/ui/|src/stories/|\.stories\.|\.mdx)" >/dev/null; then
            return 0
        fi
    fi
    
    # Check if Storybook was previously running
    if is_port_in_use $STORYBOOK_PORT; then
        return 0
    fi
    
    return 1
}

# Start Storybook if needed
start_storybook() {
    if should_start_storybook; then
        log "Starting Storybook on port $STORYBOOK_PORT..."
        cd "$PROJECT_DIR"
        
        # Start in background
        nohup $PACKAGE_MANAGER storybook > "$LOG_FILE.storybook" 2>&1 &
        STORYBOOK_PID=$!
        
        # Wait for server to start
        for i in {1..30}; do
            if is_port_in_use $STORYBOOK_PORT; then
                log "Storybook started successfully (PID: $STORYBOOK_PID)"
                return 0
            fi
            sleep 1
        done
        
        log "WARNING: Storybook failed to start within 30 seconds"
        return 1
    else
        log "Storybook not needed for this change"
        return 0
    fi
}

# Main execution
main() {
    log "=== Server Restart Hook Started ==="
    log "Changed files: ${CLAUDE_CHANGED_FILES:-none}"
    log "Tool: ${CLAUDE_TOOL:-unknown}"
    
    # Navigate to project directory
    cd "$PROJECT_DIR" || {
        log "ERROR: Cannot access project directory: $PROJECT_DIR"
        exit 1
    }
    
    # Kill existing servers
    kill_servers
    
    # Start main server
    if ! start_main_server; then
        log "ERROR: Failed to start main server"
        exit 1
    fi
    
    # Start Storybook if needed
    start_storybook
    
    log "=== Server Restart Complete ==="
    log "Main app: http://localhost:$MAIN_PORT"
    
    if is_port_in_use $STORYBOOK_PORT; then
        log "Storybook: http://localhost:$STORYBOOK_PORT"
    fi
    
    exit 0
}

# Handle script termination
trap 'log "Script interrupted"; exit 1' INT TERM

# Run main function
main "$@"