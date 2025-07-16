#!/bin/bash

# Bloom Brain: Initialize in a new project
# This script sets up Bloom Brain as a git submodule in a new project

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
BLOOM_BRAIN_REPO="https://github.com/simonbloom/bloom-brain.git"

# Logging function
log() {
    echo -e "${BLUE}[Bloom Brain Init]${NC} $1"
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
        error "Initialize git first: git init"
        exit 1
    fi
}

# Check if Bloom Brain is already initialized
check_existing_bloom_brain() {
    if [ -d ".claude/bloom-brain" ]; then
        error "Bloom Brain already initialized in this project"
        error "Use /update-bloom-brain to update or remove .claude/bloom-brain to reinitialize"
        exit 1
    fi
}

# Create .claude directory structure
create_claude_structure() {
    log "Creating .claude directory structure..."
    
    mkdir -p .claude/hooks
    mkdir -p .claude/analysis
    
    # Create .gitignore for .claude if it doesn't exist
    if [ ! -f ".claude/.gitignore" ]; then
        cat > .claude/.gitignore << 'EOF'
# Ignore temporary files and logs
*.log
debug.log
hooks/activity.log
hooks/preview.log
hooks/restart.log*

# Ignore analysis directories (they're regenerated)
analysis/*/
!analysis/README.md
!analysis/templates/

# Ignore local settings
settings.local.json
EOF
    fi
}

# Add Bloom Brain as a submodule
add_submodule() {
    log "Adding Bloom Brain as a git submodule..."
    
    git submodule add "$BLOOM_BRAIN_REPO" .claude/bloom-brain
    
    # Initialize and update the submodule
    git submodule update --init --recursive
    
    success "Bloom Brain submodule added successfully"
}

# Collect project configuration
collect_project_config() {
    log "Collecting project configuration..."
    
    # Default values
    MAIN_PORT=3000
    STORYBOOK_PORT=6006
    PACKAGE_MANAGER="npm"
    DATABASE_INFO="Not configured"
    DATABASE_MCP_TOOLS="Not configured"
    DATABASE_LOG_COMMAND="Not configured"
    
    # Try to detect package manager
    if [ -f "pnpm-lock.yaml" ]; then
        PACKAGE_MANAGER="pnpm"
    elif [ -f "yarn.lock" ]; then
        PACKAGE_MANAGER="yarn"
    elif [ -f "package-lock.json" ]; then
        PACKAGE_MANAGER="npm"
    fi
    
    # Try to detect ports from package.json
    if [ -f "package.json" ] && command -v jq >/dev/null 2>&1; then
        DEV_SCRIPT=$(jq -r '.scripts.dev // empty' package.json)
        if [[ "$DEV_SCRIPT" =~ --port[[:space:]]+([0-9]+) ]]; then
            MAIN_PORT="${BASH_REMATCH[1]}"
        fi
    fi
    
    # Interactive configuration
    echo -n "Main server port (default: $MAIN_PORT): "
    read -r user_port
    [ -n "$user_port" ] && MAIN_PORT="$user_port"
    
    echo -n "Storybook port (default: $STORYBOOK_PORT): "
    read -r user_storybook_port
    [ -n "$user_storybook_port" ] && STORYBOOK_PORT="$user_storybook_port"
    
    echo -n "Package manager (default: $PACKAGE_MANAGER): "
    read -r user_package_manager
    [ -n "$user_package_manager" ] && PACKAGE_MANAGER="$user_package_manager"
    
    echo -n "Database info (default: $DATABASE_INFO): "
    read -r user_database_info
    [ -n "$user_database_info" ] && DATABASE_INFO="$user_database_info"
    
    # Create configuration file
    cat > .claude/bloom-brain.config.json << EOF
{
  "main_port": "$MAIN_PORT",
  "storybook_port": "$STORYBOOK_PORT", 
  "package_manager": "$PACKAGE_MANAGER",
  "database_info": "$DATABASE_INFO",
  "database_mcp_tools": "$DATABASE_MCP_TOOLS",
  "database_log_command": "$DATABASE_LOG_COMMAND",
  "project_dir": "$(pwd)",
  "bloom_brain_version": "$(cd .claude/bloom-brain && git rev-parse --short HEAD)",
  "initialized_at": "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
}
EOF
    
    success "Project configuration saved"
}

# Apply initial customizations
apply_initial_customizations() {
    log "Applying initial customizations..."
    
    # Apply template customizations
    CONFIG_FILE=".claude/bloom-brain.config.json"
    
    # Extract values (basic shell parsing)
    MAIN_PORT=$(grep -o '"main_port":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
    STORYBOOK_PORT=$(grep -o '"storybook_port":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
    PACKAGE_MANAGER=$(grep -o '"package_manager":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
    DATABASE_INFO=$(grep -o '"database_info":[^,}]*' "$CONFIG_FILE" | cut -d':' -f2 | tr -d ' "')
    PROJECT_DIR=$(pwd)
    BLOOM_BRAIN_VERSION=$(cd .claude/bloom-brain && git rev-parse --short HEAD)
    
    # Apply customizations to hooks
    if [ -f ".claude/bloom-brain/templates/restart-server.template.sh" ]; then
        sed -e "s|{{MAIN_PORT}}|$MAIN_PORT|g" \
            -e "s|{{STORYBOOK_PORT}}|$STORYBOOK_PORT|g" \
            -e "s|{{PACKAGE_MANAGER}}|$PACKAGE_MANAGER|g" \
            -e "s|{{PROJECT_DIR}}|$PROJECT_DIR|g" \
            ".claude/bloom-brain/templates/restart-server.template.sh" > ".claude/hooks/restart-server.sh"
        chmod +x ".claude/hooks/restart-server.sh"
    fi
    
    if [ -f ".claude/bloom-brain/templates/open-preview.template.sh" ]; then
        sed -e "s|{{MAIN_PORT}}|$MAIN_PORT|g" \
            -e "s|{{STORYBOOK_PORT}}|$STORYBOOK_PORT|g" \
            -e "s|{{PROJECT_DIR}}|$PROJECT_DIR|g" \
            ".claude/bloom-brain/templates/open-preview.template.sh" > ".claude/hooks/open-preview.sh"
        chmod +x ".claude/hooks/open-preview.sh"
    fi
    
    # Apply customizations to settings
    if [ -f ".claude/bloom-brain/templates/settings.template.json" ]; then
        sed -e "s|{{PACKAGE_MANAGER}}|$PACKAGE_MANAGER|g" \
            ".claude/bloom-brain/templates/settings.template.json" > ".claude/settings.json"
    fi
    
    # Apply customizations to CLAUDE.md
    if [ -f ".claude/bloom-brain/templates/CLAUDE.template.md" ]; then
        sed -e "s|{{MAIN_PORT}}|$MAIN_PORT|g" \
            -e "s|{{STORYBOOK_PORT}}|$STORYBOOK_PORT|g" \
            -e "s|{{PACKAGE_MANAGER}}|$PACKAGE_MANAGER|g" \
            -e "s|{{DATABASE_INFO}}|$DATABASE_INFO|g" \
            -e "s|{{DATABASE_MCP_TOOLS}}|$DATABASE_MCP_TOOLS|g" \
            -e "s|{{DATABASE_LOG_COMMAND}}|$DATABASE_LOG_COMMAND|g" \
            -e "s|{{BLOOM_BRAIN_VERSION}}|$BLOOM_BRAIN_VERSION|g" \
            ".claude/bloom-brain/templates/CLAUDE.template.md" > "CLAUDE.md"
    fi
    
    success "Initial customizations applied"
}

# Create the sync commands
create_sync_commands() {
    log "Creating sync commands..."
    
    # Create update command
    cat > .claude/bloom-brain/commands/update-bloom-brain.md << 'EOF'
# Update Bloom Brain

Update the Bloom Brain framework to the latest version from the central repository.

```bash
./.claude/bloom-brain/scripts/update-bloom-brain.sh
```

This command will:
1. Pull the latest changes from the central Bloom Brain repository
2. Apply project-specific customizations 
3. Update hooks, settings, and documentation
4. Show status of the update

Target Analysis: Update Bloom Brain framework
EOF
    
    # Create push command
    cat > .claude/bloom-brain/commands/push-bloom-brain.md << 'EOF'
# Push Bloom Brain Changes

Push local Bloom Brain changes back to the central repository for sharing across projects.

```bash
./.claude/bloom-brain/scripts/push-bloom-brain.sh
```

This command will:
1. Show what changes will be pushed
2. Allow you to enter a commit message
3. Push changes to the central repository
4. Update the parent repository to track changes

Target Analysis: Push Bloom Brain changes
EOF
    
    # Create init command
    cat > .claude/bloom-brain/commands/init-bloom-brain.md << 'EOF'
# Initialize Bloom Brain

Initialize the Bloom Brain framework in a new project.

```bash
./.claude/bloom-brain/scripts/init-bloom-brain.sh
```

This command will:
1. Add Bloom Brain as a git submodule
2. Collect project configuration
3. Apply initial customizations
4. Create sync commands

Target Analysis: Initialize Bloom Brain in new project
EOF
    
    success "Sync commands created"
}

# Main execution
main() {
    log "Initializing Bloom Brain in this project..."
    
    # Pre-flight checks
    check_git_repo
    check_existing_bloom_brain
    
    # Create structure
    create_claude_structure
    
    # Add submodule
    add_submodule
    
    # Collect configuration
    collect_project_config
    
    # Apply customizations
    apply_initial_customizations
    
    # Create sync commands
    create_sync_commands
    
    # Show status
    log "Bloom Brain Status:"
    echo "  Version: $(cd .claude/bloom-brain && git rev-parse --short HEAD)"
    echo "  Commands: $(ls .claude/bloom-brain/commands/ | wc -l | tr -d ' ') available"
    echo "  Main port: $MAIN_PORT"
    echo "  Storybook port: $STORYBOOK_PORT"
    echo "  Package manager: $PACKAGE_MANAGER"
    echo "  Initialized: $(date)"
    
    success "Bloom Brain initialization complete!"
    success "Your project is now ready with the Bloom Brain framework"
    
    log "Next steps:"
    echo "  1. Commit the changes: git add -A && git commit -m 'Add Bloom Brain framework'"
    echo "  2. Use /update-bloom-brain to get latest changes"
    echo "  3. Use /push-bloom-brain to share your improvements"
}

# Handle script termination
trap 'error "Initialization interrupted"; exit 1' INT TERM

# Run main function
main "$@"