# Bloom Brain Validation and Dry-Run Guide

## Overview
This guide provides comprehensive validation and dry-run procedures for CLAUDE.md modifications during Bloom Brain installation.

## Pre-Installation Validation

### Environment Check
```bash
# Check if this is a git repository
if git rev-parse --git-dir > /dev/null 2>&1; then
    echo "✅ Git repository detected"
    echo "📋 Current branch: $(git branch --show-current)"
    echo "🔍 Uncommitted changes: $(git status --porcelain | wc -l) files"
else
    echo "⚠️ Not a git repository - backups will be local only"
fi

# Check for existing CLAUDE.md
if [ -f "CLAUDE.md" ]; then
    echo "✅ Existing CLAUDE.md found"
    echo "📄 File size: $(wc -l < CLAUDE.md) lines"
    echo "📅 Last modified: $(stat -c %y CLAUDE.md 2>/dev/null || stat -f %Sm CLAUDE.md)"
else
    echo "🆕 No existing CLAUDE.md - new file will be created"
fi

# Check for Bloom Brain integration
if [ -f "CLAUDE.md" ] && grep -q "Bloom Brain" CLAUDE.md; then
    echo "🔄 Existing Bloom Brain integration detected"
    echo "📝 Installation will update existing integration"
else
    echo "🆕 No Bloom Brain integration found"
    echo "📝 Installation will add new integration"
fi
```

### Content Analysis
```bash
# Analyze existing CLAUDE.md content
if [ -f "CLAUDE.md" ]; then
    echo "🔍 Analyzing existing CLAUDE.md content..."
    
    # Check for custom content markers
    if grep -q "task-master\|Task Master\|custom\|project-specific" CLAUDE.md; then
        echo "⚠️ Custom content detected - preservation mode will be used"
        echo "📝 Detected custom sections:"
        grep -n "task-master\|Task Master\|custom\|project-specific" CLAUDE.md | head -5
    else
        echo "📝 Standard content detected - safe to update generic sections"
    fi
    
    # Check for existing ports and URLs
    if grep -q "localhost:[0-9]" CLAUDE.md; then
        echo "🌐 Existing localhost URLs found:"
        grep -o "localhost:[0-9]*" CLAUDE.md | sort | uniq
    fi
    
    # Check for package manager references
    if grep -q "npm\|yarn\|pnpm" CLAUDE.md; then
        echo "📦 Package manager references found:"
        grep -o "npm\|yarn\|pnpm" CLAUDE.md | sort | uniq
    fi
    
    # Check for database references
    if grep -q -i "supabase\|postgres\|mysql\|redis\|mongodb" CLAUDE.md; then
        echo "🗄️ Database references found:"
        grep -i -o "supabase\|postgres\|mysql\|redis\|mongodb" CLAUDE.md | sort | uniq
    fi
fi
```

## Dry-Run Mode

### Simulate Installation Changes
```bash
# Create dry-run simulation
echo "🎭 DRY-RUN MODE: Simulating Bloom Brain installation..."

# Simulate backup creation
echo "📋 Would create backup: CLAUDE.md.backup.$(date +%Y%m%d_%H%M%S)"

# Simulate content detection
if [ -f "CLAUDE.md" ]; then
    echo "📄 Would analyze existing CLAUDE.md ($(wc -l < CLAUDE.md) lines)"
    
    # Show what would be preserved
    echo "💾 Would preserve these sections:"
    if grep -q "task-master\|Task Master" CLAUDE.md; then
        echo "  - Task Master AI integration"
    fi
    if grep -q "Development Rules\|Quality Assurance" CLAUDE.md; then
        echo "  - Custom development rules"
    fi
    if grep -q "localhost:[0-9]" CLAUDE.md; then
        echo "  - Service URLs and ports"
    fi
    
    # Show what would be updated
    echo "🔄 Would update these sections:"
    if grep -q "Bloom Brain" CLAUDE.md; then
        echo "  - Bloom Brain command listings (merge new commands)"
    else
        echo "  - Add new Bloom Brain integration"
    fi
    echo "  - Debug commands section"
    echo "  - Feature development commands"
else
    echo "🆕 Would create new CLAUDE.md with detected settings"
fi

# Simulate project detection
echo "🔍 Would detect these project settings:"
if [ -f "package.json" ]; then
    echo "  - Project name: $(grep -o '"name"[^"]*"[^"]*"' package.json | cut -d'"' -f4)"
    echo "  - Package manager: $([ -f "pnpm-lock.yaml" ] && echo "pnpm" || [ -f "yarn.lock" ] && echo "yarn" || echo "npm")"
fi
echo "  - Main port: (would detect from vite.config.ts/next.config.js)"
echo "  - Storybook port: (would detect from package.json scripts)"

echo "✅ Dry-run completed - no actual changes made"
```

### Preview Expected Changes
```bash
# Show expected file structure
echo "📁 Expected CLAUDE.md structure after installation:"
cat << 'EOF'
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands
[DETECTED/EXISTING SETTINGS]

[PRESERVED CUSTOM SECTIONS]

## Debug Commands (Most Used)
[BLOOM BRAIN DEBUG COMMANDS]

## Feature Development
[BLOOM BRAIN FEATURE COMMANDS]

---

# Bloom Brain System
[COMPLETE BLOOM BRAIN INTEGRATION]

[PRESERVED CUSTOM SECTIONS AFTER BLOOM BRAIN]

---

[PRESERVED FOOTER OR BLOOM BRAIN SIGNATURE]
EOF
```

## Post-Installation Validation

### Comprehensive Validation Script
```bash
# Create validation function
validate_claude_md() {
    echo "🔍 Validating CLAUDE.md after installation..."
    
    # Basic file checks
    if [ ! -f "CLAUDE.md" ]; then
        echo "❌ CLAUDE.md file missing"
        return 1
    fi
    
    if [ ! -s "CLAUDE.md" ]; then
        echo "❌ CLAUDE.md file is empty"
        return 1
    fi
    
    echo "✅ File exists and has content ($(wc -l < CLAUDE.md) lines)"
    
    # Structure validation
    if ! grep -q "# CLAUDE.md" CLAUDE.md; then
        echo "❌ Missing main header"
        return 1
    fi
    echo "✅ Main header present"
    
    if ! grep -q "Quick Reference" CLAUDE.md; then
        echo "❌ Missing Quick Reference section"
        return 1
    fi
    echo "✅ Quick Reference section present"
    
    # Bloom Brain validation
    if ! grep -q "Bloom Brain" CLAUDE.md; then
        echo "❌ Missing Bloom Brain integration"
        return 1
    fi
    echo "✅ Bloom Brain integration present"
    
    # Command validation
    local commands=("/understand" "/ultra-debug" "/performance" "/status" "/new-feature")
    for cmd in "${commands[@]}"; do
        if ! grep -q "$cmd" CLAUDE.md; then
            echo "⚠️ Missing command: $cmd"
        else
            echo "✅ Command present: $cmd"
        fi
    done
    
    # Custom content validation (if backup exists)
    if [ -f "CLAUDE.md.backup."* ]; then
        echo "🔍 Checking custom content preservation..."
        
        # Check if custom content was preserved
        if grep -q "task-master\|Task Master\|custom" CLAUDE.md.backup.* 2>/dev/null; then
            if grep -q "task-master\|Task Master\|custom" CLAUDE.md; then
                echo "✅ Custom content preserved"
            else
                echo "❌ Custom content appears to be lost"
                return 1
            fi
        fi
    fi
    
    # Syntax validation
    if command -v markdownlint >/dev/null 2>&1; then
        if markdownlint CLAUDE.md 2>/dev/null; then
            echo "✅ Markdown syntax valid"
        else
            echo "⚠️ Markdown syntax issues detected"
        fi
    fi
    
    echo "✅ Validation completed successfully"
    return 0
}

# Run validation
validate_claude_md
```

### Functional Testing
```bash
# Test Claude Code integration
echo "🧪 Testing Claude Code integration..."

# Check if commands directory exists
if [ -d ".claude/bloom-brain/commands" ]; then
    echo "✅ Commands directory exists"
    echo "📄 Available commands: $(ls .claude/bloom-brain/commands | wc -l)"
else
    echo "❌ Commands directory missing"
fi

# Check for symlink
if [ -L ".claude/commands" ]; then
    echo "✅ Command symlink exists"
    echo "🔗 Links to: $(readlink .claude/commands)"
else
    echo "❌ Command symlink missing"
    echo "💡 Create with: ln -sf bloom-brain/commands .claude/commands"
fi

# Test specific commands
test_commands=("understand.md" "status.md" "new-feature.md")
for cmd in "${test_commands[@]}"; do
    if [ -f ".claude/commands/$cmd" ]; then
        echo "✅ Command file exists: $cmd"
    else
        echo "❌ Command file missing: $cmd"
    fi
done
```

## Rollback Validation

### Verify Rollback Success
```bash
# Validate rollback operation
validate_rollback() {
    echo "🔄 Validating rollback operation..."
    
    # Check if file was restored
    if [ -f "CLAUDE.md" ]; then
        echo "✅ CLAUDE.md exists after rollback"
    else
        echo "❌ CLAUDE.md missing after rollback"
        return 1
    fi
    
    # Compare with backup if available
    if [ -f "CLAUDE.md.backup."* ]; then
        echo "🔍 Comparing with backup..."
        
        # Find most recent backup
        recent_backup=$(ls -t CLAUDE.md.backup.* | head -1)
        
        if diff -q CLAUDE.md "$recent_backup" >/dev/null; then
            echo "✅ File matches backup exactly"
        else
            echo "⚠️ File differs from backup"
            echo "📋 Differences:"
            diff CLAUDE.md "$recent_backup" | head -10
        fi
    fi
    
    # Check if custom content is intact
    if grep -q "task-master\|Task Master\|custom" CLAUDE.md; then
        echo "✅ Custom content appears intact"
    else
        echo "ℹ️ No custom content markers found (may be expected)"
    fi
    
    echo "✅ Rollback validation completed"
}

# Run rollback validation
validate_rollback
```

## Error Detection and Recovery

### Common Issues and Solutions
```bash
# Check for common issues
echo "🔍 Checking for common issues..."

# File permission issues
if [ ! -w "CLAUDE.md" ]; then
    echo "❌ CLAUDE.md is not writable"
    echo "💡 Fix with: chmod 644 CLAUDE.md"
fi

# Empty file issues
if [ -f "CLAUDE.md" ] && [ ! -s "CLAUDE.md" ]; then
    echo "❌ CLAUDE.md is empty"
    echo "💡 Restore from backup or recreate"
fi

# Encoding issues
if [ -f "CLAUDE.md" ] && file CLAUDE.md | grep -q "data"; then
    echo "❌ CLAUDE.md has encoding issues"
    echo "💡 Check file with: file CLAUDE.md"
fi

# Broken symlinks
if [ -L ".claude/commands" ] && [ ! -e ".claude/commands" ]; then
    echo "❌ Commands symlink is broken"
    echo "💡 Recreate with: ln -sf bloom-brain/commands .claude/commands"
fi
```

## Integration with Installation Process

### Validation Checkpoints
1. **Pre-installation**: Environment and content analysis
2. **During installation**: Backup creation and content detection
3. **Post-installation**: Comprehensive validation and testing
4. **Error recovery**: Automatic rollback on validation failure

### Usage in Installation Prompts
All installation prompts now include validation at these points:
- Before making changes (dry-run analysis)
- After backup creation (verify backup success)
- After content merge (validate structure and preservation)
- Before completion (comprehensive functionality test)

This ensures that users can see exactly what will change and verify that the installation was successful.