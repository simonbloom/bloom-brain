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

## Prerequisites

- **Git repository** - Project must be a git repository
- **GitHub access** - Access to the Bloom Brain repository
- **Clean state** - No existing `.claude/bloom-brain/` directory

## What Gets Created

### Directory Structure
```
.claude/
├── bloom-brain/           # Git submodule
├── hooks/                 # Customized hooks
│   ├── restart-server.sh
│   └── open-preview.sh
├── settings.json          # Customized settings
├── bloom-brain.config.json # Project configuration
└── .gitignore
```

### Root Files
- **CLAUDE.md** - Customized project documentation
- **Updated .gitignore** - Excludes temporary files

## Configuration Process

During initialization, you'll be prompted for:

1. **Main server port** (default: 3000)
2. **Storybook port** (default: 6006) 
3. **Package manager** (auto-detected or manual)
4. **Database info** (optional description)

## Usage Examples

### Standard Initialization
```bash
/init-bloom-brain
```

### Manual Repository Setup
If you need to set up the repository manually:
```bash
# Add submodule
git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain

# Initialize submodule
git submodule update --init --recursive

# Run initialization
./.claude/bloom-brain/scripts/init-bloom-brain.sh
```

### Verification
After initialization, verify setup:
```bash
# Check submodule status
git submodule status

# Check available commands
ls .claude/bloom-brain/commands/

# Test sync commands
/update-bloom-brain
```

## Post-Initialization

### Commit Changes
```bash
git add -A
git commit -m "Add Bloom Brain framework"
```

### Test Commands
```bash
/understand        # Test multi-agent debugging
/status           # Check project health
/new-feature "test feature"  # Test feature planning
```

### Sync with Other Projects
```bash
# In other projects
/update-bloom-brain  # Get the latest version
```

## Troubleshooting

### Submodule Already Exists
If you get a "directory already exists" error:
```bash
rm -rf .claude/bloom-brain
git rm -f .claude/bloom-brain
git submodule deinit .claude/bloom-brain
# Then run init again
```

### Permission Issues
If you get permission errors:
1. Check GitHub access token
2. Verify repository permissions
3. Try HTTPS instead of SSH

### Configuration Errors
If configuration fails:
1. Check `.claude/bloom-brain.config.json`
2. Manually edit the file
3. Run `/update-bloom-brain` to apply changes

Target Analysis: Initialize Bloom Brain in new project