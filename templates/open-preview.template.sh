#!/bin/bash

# Bloom Brain Hook: Smart Preview URL Generator
# Provides relevant preview URLs based on file changes

set -e

# Configuration - These will be customized per project
MAIN_PORT={{MAIN_PORT}}
STORYBOOK_PORT={{STORYBOOK_PORT}}
BASE_URL="http://localhost:$MAIN_PORT"
STORYBOOK_URL="http://localhost:$STORYBOOK_PORT"
PROJECT_DIR="{{PROJECT_DIR}}"
LOG_FILE="$PROJECT_DIR/.claude/hooks/preview.log"

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

# Extract component name from file path
get_component_name() {
    local file_path="$1"
    local filename=$(basename "$file_path" .tsx)
    filename=$(basename "$filename" .ts)
    echo "$filename"
}

# Generate URLs based on changed files
generate_urls() {
    local changed_files="${CLAUDE_CHANGED_FILES:-}"
    local tool="${CLAUDE_TOOL:-unknown}"
    
    log "Generating preview URLs for tool: $tool"
    log "Changed files: ${changed_files:-none}"
    
    if [[ -z "$changed_files" ]]; then
        # Default URLs when no specific files are known
        echo "View at: $BASE_URL"
        if is_port_in_use $STORYBOOK_PORT; then
            echo "Storybook: $STORYBOOK_URL"
        fi
        return
    fi
    
    # Process each changed file
    local urls_generated=false
    
    while IFS= read -r file_path; do
        [[ -z "$file_path" ]] && continue
        
        case "$file_path" in
            # UI Components
            */components/ui/*.tsx)
                local component_name=$(get_component_name "$file_path")
                echo "View component: $BASE_URL (updated: $component_name)"
                
                # Add Storybook URL if available
                if is_port_in_use $STORYBOOK_PORT; then
                    echo "Storybook: $STORYBOOK_URL"
                fi
                urls_generated=true
                ;;
                
            # Stories
            *.stories.tsx|*.mdx)
                if is_port_in_use $STORYBOOK_PORT; then
                    echo "Storybook: $STORYBOOK_URL"
                    urls_generated=true
                fi
                ;;
                
            # Styles and Config
            *.css|*.ts|*.config.*)
                echo "View updated styles: $BASE_URL"
                urls_generated=true
                ;;
                
            # General files
            *)
                echo "View at: $BASE_URL"
                urls_generated=true
                ;;
        esac
    done <<< "$(echo "$changed_files" | tr ',' '\n')"
    
    # Default fallback if no specific URLs were generated
    if [[ "$urls_generated" == false ]]; then
        echo "View at: $BASE_URL"
        if is_port_in_use $STORYBOOK_PORT; then
            echo "Storybook: $STORYBOOK_URL"
        fi
    fi
}

# Wait for servers to be ready
wait_for_servers() {
    log "Waiting for servers to be ready..."
    
    # Wait for main server
    for i in {1..30}; do
        if is_port_in_use $MAIN_PORT; then
            log "Main server is ready on port $MAIN_PORT"
            break
        fi
        sleep 1
    done
    
    # Check Storybook if it should be running
    if is_port_in_use $STORYBOOK_PORT; then
        log "Storybook is ready on port $STORYBOOK_PORT"
    fi
}

# Main execution
main() {
    log "=== Preview URL Generator Started ==="
    
    # Wait for servers to be ready
    wait_for_servers
    
    # Generate and output URLs
    generate_urls
    
    log "=== Preview URLs Generated ==="
    exit 0
}

# Handle script termination
trap 'log "Script interrupted"; exit 1' INT TERM

# Run main function
main "$@"