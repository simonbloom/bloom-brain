#!/bin/bash

# Bloom Brain: Update from central repository
# This script updates the Bloom Brain submodule and applies any necessary customizations

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging function
log() {
    echo -e "${BLUE}[Bloom Brain Update]${NC} $1"
}

success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in a git repository
check_git_repo() {
    if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        error "Not inside a git repository"
        exit 1
    fi
}

# Check if Bloom Brain submodule exists
check_bloom_brain_submodule() {
    if [ ! -d ".claude/bloom-brain" ]; then
        error "Bloom Brain submodule not found at .claude/bloom-brain"
        error "Run /init-bloom-brain first to set up Bloom Brain"
        exit 1
    fi
}

# Update the Bloom Brain submodule
update_submodule() {
    log "Updating Bloom Brain submodule..."
    
    # Navigate to the submodule directory
    cd .claude/bloom-brain
    
    # Fetch latest changes
    git fetch origin main
    
    # Get current and latest commit hashes
    CURRENT_COMMIT=$(git rev-parse HEAD)
    LATEST_COMMIT=$(git rev-parse origin/main)
    
    if [ "$CURRENT_COMMIT" = "$LATEST_COMMIT" ]; then
        success "Bloom Brain is already up to date"
        cd ../..
        return 0
    fi
    
    # Show what's changing
    log "Changes since last update:"
    git log --oneline --no-merges $CURRENT_COMMIT..$LATEST_COMMIT | head -10
    
    # Update to latest
    git checkout main
    git pull origin main
    
    cd ../..
    
    success "Bloom Brain updated to latest version"
}

# Apply project-specific customizations
apply_customizations() {
    log "Applying project-specific customizations..."
    
    # Check if bloom-brain.config.json exists
    if [ -f ".claude/bloom-brain.config.json" ]; then
        log "Found project configuration, applying customizations..."
        
        # Read configuration
        CONFIG_FILE=".claude/bloom-brain.config.json"
        
        # Extract values using basic shell parsing (can be improved with jq if available)
        MAIN_PORT=$(grep -o '"main_port":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
        STORYBOOK_PORT=$(grep -o '"storybook_port":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
        PACKAGE_MANAGER=$(grep -o '"package_manager":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
        PROJECT_DIR=$(pwd)
        
        # Apply customizations to hooks
        if [ -f ".claude/bloom-brain/templates/restart-server.template.sh" ]; then
            log "Customizing restart-server.sh..."
            sed -e "s|{{MAIN_PORT}}|$MAIN_PORT|g" \
                -e "s|{{STORYBOOK_PORT}}|$STORYBOOK_PORT|g" \
                -e "s|{{PACKAGE_MANAGER}}|$PACKAGE_MANAGER|g" \
                -e "s|{{PROJECT_DIR}}|$PROJECT_DIR|g" \
                ".claude/bloom-brain/templates/restart-server.template.sh" > ".claude/hooks/restart-server.sh"
            chmod +x ".claude/hooks/restart-server.sh"
        fi
        
        if [ -f ".claude/bloom-brain/templates/open-preview.template.sh" ]; then
            log "Customizing open-preview.sh..."
            sed -e "s|{{MAIN_PORT}}|$MAIN_PORT|g" \
                -e "s|{{STORYBOOK_PORT}}|$STORYBOOK_PORT|g" \
                -e "s|{{PROJECT_DIR}}|$PROJECT_DIR|g" \
                ".claude/bloom-brain/templates/open-preview.template.sh" > ".claude/hooks/open-preview.sh"
            chmod +x ".claude/hooks/open-preview.sh"
        fi
        
        # Apply customizations to settings
        if [ -f ".claude/bloom-brain/templates/settings.template.json" ]; then
            log "Customizing settings.json..."
            sed -e "s|{{PACKAGE_MANAGER}}|$PACKAGE_MANAGER|g" \
                ".claude/bloom-brain/templates/settings.template.json" > ".claude/settings.json"
        fi
        
        success "Project customizations applied"
    else
        warning "No project configuration found, using defaults"
    fi
}

# Check and fix command discovery symlink
check_command_symlink() {
    log "Checking command discovery setup..."
    
    if [ ! -L ".claude/commands" ]; then
        warning "Command discovery symlink missing"
        log "Creating symlink for Claude Code command discovery..."
        
        # Remove existing directory if it exists
        if [ -d ".claude/commands" ]; then
            warning "Found existing .claude/commands directory, backing up..."
            mv ".claude/commands" ".claude/commands.backup.$(date +%s)"
        fi
        
        # Create symlink
        ln -sf bloom-brain/commands .claude/commands
        
        if [ -L ".claude/commands" ]; then
            success "Command discovery symlink created"
        else
            error "Failed to create symlink - you may need to run: ln -sf bloom-brain/commands .claude/commands"
        fi
    else
        success "Command discovery symlink already exists"
    fi
    
    # Verify symlink points to the right place
    if [ -L ".claude/commands" ]; then
        SYMLINK_TARGET=$(readlink .claude/commands)
        if [ "$SYMLINK_TARGET" != "bloom-brain/commands" ]; then
            warning "Symlink points to wrong location: $SYMLINK_TARGET"
            log "Fixing symlink..."
            rm ".claude/commands"
            ln -sf bloom-brain/commands .claude/commands
            success "Symlink fixed"
        fi
    fi
}

# Main execution
main() {
    log "Starting Bloom Brain update..."
    
    # Pre-flight checks
    check_git_repo
    check_bloom_brain_submodule
    
    # Update submodule
    update_submodule
    
    # Apply customizations
    apply_customizations
    
    # Check command discovery
    check_command_symlink
    
    # Show status
    log "Bloom Brain Status:"
    echo "  Version: $(cd .claude/bloom-brain && git rev-parse --short HEAD)"
    echo "  Commands: $(ls .claude/bloom-brain/commands/ | wc -l | tr -d ' ') available"
    echo "  Last updated: $(date)"
    
    success "Bloom Brain update complete!"
    success "Your development environment is ready"
}

# Handle script termination
trap 'error "Update interrupted"; exit 1' INT TERM

# Run main function
main "$@"