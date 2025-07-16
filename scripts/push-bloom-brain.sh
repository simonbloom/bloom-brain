#!/bin/bash

# Bloom Brain: Push changes to central repository
# This script pushes local Bloom Brain changes back to the central repository

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging function
log() {
    echo -e "${BLUE}[Bloom Brain Push]${NC} $1"
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

# Check for changes in the submodule
check_for_changes() {
    cd .claude/bloom-brain
    
    if git diff --quiet && git diff --cached --quiet; then
        log "No changes to push"
        cd ../..
        exit 0
    fi
    
    cd ../..
}

# Show what changes will be pushed
show_changes() {
    log "Changes to be pushed:"
    
    cd .claude/bloom-brain
    
    # Show staged changes
    if ! git diff --cached --quiet; then
        echo "Staged changes:"
        git diff --cached --name-only | sed 's/^/  /'
    fi
    
    # Show unstaged changes
    if ! git diff --quiet; then
        echo "Unstaged changes:"
        git diff --name-only | sed 's/^/  /'
    fi
    
    cd ../..
}

# Get commit message from user
get_commit_message() {
    HOSTNAME=$(hostname)
    DEFAULT_MSG="Update from $HOSTNAME"
    
    echo -n "Enter commit message (or press Enter for default: '$DEFAULT_MSG'): "
    read -r USER_MSG
    
    if [ -z "$USER_MSG" ]; then
        COMMIT_MSG="$DEFAULT_MSG"
    else
        COMMIT_MSG="$USER_MSG"
    fi
}

# Push changes to central repository
push_changes() {
    log "Pushing changes to central Bloom Brain repository..."
    
    cd .claude/bloom-brain
    
    # Add all changes
    git add .
    
    # Commit changes
    git commit -m "$COMMIT_MSG"
    
    # Push to origin
    git push origin main
    
    cd ../..
    
    success "Changes pushed successfully"
}

# Update parent repository to track submodule changes
update_parent_repo() {
    log "Updating parent repository to track submodule changes..."
    
    # Add the submodule reference change
    git add .claude/bloom-brain
    
    # Check if there are changes to commit
    if ! git diff --cached --quiet; then
        git commit -m "Update Bloom Brain submodule reference"
        success "Parent repository updated"
    else
        log "No submodule reference changes to commit"
    fi
}

# Main execution
main() {
    log "Starting Bloom Brain push..."
    
    # Pre-flight checks
    check_git_repo
    check_bloom_brain_submodule
    check_for_changes
    
    # Show what's changing
    show_changes
    
    # Get commit message
    get_commit_message
    
    # Push changes
    push_changes
    
    # Update parent repo
    update_parent_repo
    
    # Show status
    log "Bloom Brain Status:"
    echo "  Version: $(cd .claude/bloom-brain && git rev-parse --short HEAD)"
    echo "  Last pushed: $(date)"
    echo "  Commit: $COMMIT_MSG"
    
    success "Bloom Brain push complete!"
    success "Your changes are now available across all projects"
}

# Handle script termination
trap 'error "Push interrupted"; exit 1' INT TERM

# Run main function
main "$@"