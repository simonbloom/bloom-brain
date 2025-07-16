# Bloom Brain Troubleshooting Guide

This guide covers common issues and solutions when using Bloom Brain with Claude Code.

## 🔥 Most Common Issue: Commands Not Appearing

### Problem
After installing Bloom Brain, when you type `/` in Claude Code, the `/understand` command and other Bloom Brain commands don't appear in the autocomplete dropdown.

### Symptoms
- Bloom Brain installation completed successfully
- `.claude/bloom-brain/commands/` directory contains 35+ command files
- Typing `/` in Claude Code doesn't show `/understand`, `/ultra-debug`, etc.

### Root Cause
Claude Code looks for commands in `.claude/commands/` but Bloom Brain (as a submodule) installs them in `.claude/bloom-brain/commands/`.

### Solution
Create a symlink so Claude Code can discover the commands:

```bash
# Navigate to your project root
cd /path/to/your/project

# Create symlink from .claude/commands to bloom-brain/commands
ln -sf bloom-brain/commands .claude/commands

# Verify the symlink was created correctly
ls -la .claude/commands/

# Test that commands are discoverable
ls .claude/commands/ | grep understand
```

### Verification Steps
1. **Restart Claude Code completely** (close and reopen the application)
2. **Test command discovery**: Type `/` and look for `/understand` in autocomplete
3. **If still not working**: 
   - Check symlink exists: `ls -la .claude/commands/`
   - Re-create symlink: `ln -sf bloom-brain/commands .claude/commands`
   - Restart Claude Code again

---

## 🔧 Other Common Issues

### 2. Submodule Not Updating

**Problem**: Running update commands doesn't pull latest Bloom Brain changes

**Solution**:
```bash
# Update submodule to latest version
git submodule update --remote .claude/bloom-brain

# If that doesn't work, try:
cd .claude/bloom-brain
git checkout main
git pull origin main
cd ../..
```

### 3. Commands Give Errors When Executed

**Problem**: Commands appear but give errors when run

**Symptoms**:
- Commands show up in autocomplete
- Running `/understand` or other commands produces errors
- Hook scripts fail to execute

**Solution**:
```bash
# Check bloom-brain.config.json exists and is valid
cat .claude/bloom-brain.config.json

# If missing, run initialization:
./.claude/bloom-brain/scripts/init-bloom-brain.sh

# Make sure hook scripts are executable
chmod +x .claude/hooks/*.sh
```

### 4. Hooks Not Working

**Problem**: Auto-restart and preview hooks don't work

**Solution**:
```bash
# Check hook files exist
ls -la .claude/hooks/

# Make them executable
chmod +x .claude/hooks/*.sh

# Test hook manually
./.claude/hooks/restart-server.sh
```

### 5. Installation Scripts Fail

**Problem**: `init-bloom-brain.sh` or `update-bloom-brain.sh` scripts fail

**Solution**:
```bash
# Check you're in a git repository
git status

# Check git submodule is properly initialized
git submodule status

# If submodule shows issues, reinitialize:
git submodule deinit -f .claude/bloom-brain
git rm -rf .claude/bloom-brain
git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain
```

### 6. CLAUDE.md Not Updated

**Problem**: CLAUDE.md file doesn't contain Bloom Brain documentation

**Solution**:
```bash
# Check if CLAUDE.md exists
ls -la CLAUDE.md

# If missing or incomplete, regenerate:
./.claude/bloom-brain/scripts/update-bloom-brain.sh

# Or manually apply template:
cp .claude/bloom-brain/templates/CLAUDE.template.md CLAUDE.md
# Edit placeholders manually
```

### 7. Port Conflicts

**Problem**: Default ports (3000, 6006) conflict with other services

**Solution**:
```bash
# Edit configuration
nano .claude/bloom-brain.config.json

# Update ports:
{
  "development": {
    "main_port": "3001",
    "storybook_port": "6007"
  }
}

# Reapply customizations
./.claude/bloom-brain/scripts/update-bloom-brain.sh
```

### 8. Permission Errors

**Problem**: Scripts fail with permission denied errors

**Solution**:
```bash
# Make all scripts executable
chmod +x .claude/bloom-brain/scripts/*.sh
chmod +x .claude/hooks/*.sh

# If still issues, check directory permissions
ls -la .claude/
```

---

## 🔍 Diagnostic Commands

### Check Installation Status
```bash
# Verify Bloom Brain is installed
ls -la .claude/bloom-brain/

# Check command count
ls .claude/bloom-brain/commands/ | wc -l

# Check symlink status
ls -la .claude/commands/

# Verify configuration
cat .claude/bloom-brain.config.json
```

### Test Command Discovery
```bash
# Test that commands are discoverable
ls .claude/commands/ | grep understand

# If no results, commands won't appear in Claude Code
```

### Check Hook Status
```bash
# Check hook files exist
ls -la .claude/hooks/

# Test hook execution
./.claude/hooks/restart-server.sh
```

---

## 📞 Getting Help

If you're still experiencing issues:

1. **Check the logs**: Look for error messages in terminal output
2. **Verify prerequisites**: Ensure you're in a git repository
3. **Try clean installation**: Remove `.claude/bloom-brain` and reinstall
4. **Check Claude Code version**: Ensure you're using a recent version
5. **Review installation steps**: Make sure all steps were completed

### Clean Reinstallation
```bash
# Remove existing installation
git submodule deinit -f .claude/bloom-brain
git rm -rf .claude/bloom-brain
rm -rf .claude/commands
rm -f .claude/bloom-brain.config.json

# Reinstall fresh
git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain
./.claude/bloom-brain/scripts/init-bloom-brain.sh
ln -sf bloom-brain/commands .claude/commands
```

---

**Remember**: The most common fix is creating the symlink: `ln -sf bloom-brain/commands .claude/commands`