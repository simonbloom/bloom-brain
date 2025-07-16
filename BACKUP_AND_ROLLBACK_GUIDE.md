# Bloom Brain Backup and Rollback Guide

## Overview
This guide provides comprehensive backup and rollback procedures for CLAUDE.md modifications during Bloom Brain installation.

## Automatic Backup System

### Backup Creation
All installation prompts now automatically create timestamped backups:

```bash
# Create backup before any modifications
cp CLAUDE.md CLAUDE.md.backup.$(date +%Y%m%d_%H%M%S) 2>/dev/null || echo "No existing CLAUDE.md found"

# Example backup filename
CLAUDE.md.backup.20231201_143022
```

### Backup Verification
```bash
# List all available backups
ls -la CLAUDE.md.backup.*

# Show backup creation times
ls -la CLAUDE.md.backup.* | awk '{print $9 " - " $6 " " $7 " " $8}'

# Quick content preview
head -10 CLAUDE.md.backup.20231201_143022
```

## Rollback Procedures

### Quick Rollback (Most Recent)
```bash
# Restore from most recent backup
cp CLAUDE.md.backup.* CLAUDE.md

# Or be more specific with latest
ls -t CLAUDE.md.backup.* | head -1 | xargs -I {} cp {} CLAUDE.md
```

### Selective Rollback
```bash
# List backups with timestamps
ls -la CLAUDE.md.backup.*

# Choose specific backup to restore
cp CLAUDE.md.backup.20231201_143022 CLAUDE.md

# Verify restoration
echo "✅ Restored from backup: CLAUDE.md.backup.20231201_143022"
```

### Partial Rollback (Section Recovery)
```bash
# Extract specific sections from backup
grep -A 50 "# Task Master AI" CLAUDE.md.backup.20231201_143022 > task_master_section.md

# Or extract custom rules
grep -A 100 "Development Rules" CLAUDE.md.backup.20231201_143022 > custom_rules.md

# Manually merge back into current CLAUDE.md
```

## Backup Management

### Cleanup Old Backups
```bash
# Remove backups older than 30 days
find . -name "CLAUDE.md.backup.*" -mtime +30 -delete

# Keep only the 5 most recent backups
ls -t CLAUDE.md.backup.* | tail -n +6 | xargs rm -f

# Interactive cleanup
ls -la CLAUDE.md.backup.*
# Choose which ones to keep/remove
```

### Backup Archive
```bash
# Archive old backups
mkdir -p .claude/backups/
mv CLAUDE.md.backup.* .claude/backups/

# Compress archived backups
tar -czf .claude/backups/claude_backups_$(date +%Y%m).tar.gz .claude/backups/CLAUDE.md.backup.*
```

## Validation After Rollback

### Content Verification
```bash
# Check for required sections
echo "🔍 Validating restored CLAUDE.md..."

# Verify basic structure
if grep -q "# CLAUDE.md" CLAUDE.md; then
    echo "✅ Header present"
else
    echo "❌ Header missing"
fi

# Check for custom content (if it should be there)
if grep -q "task-master\|Task Master\|custom" CLAUDE.md; then
    echo "✅ Custom content preserved"
else
    echo "⚠️ Custom content may be missing"
fi

# Check for Bloom Brain integration (if desired)
if grep -q "Bloom Brain" CLAUDE.md; then
    echo "✅ Bloom Brain integration present"
else
    echo "ℹ️ Bloom Brain integration not present (may be intentional)"
fi
```

### Functionality Test
```bash
# Test Claude Code can read the file
if [ -f "CLAUDE.md" ]; then
    echo "✅ CLAUDE.md file exists"
    echo "📄 File size: $(wc -l < CLAUDE.md) lines"
    echo "🔍 First few lines:"
    head -5 CLAUDE.md
else
    echo "❌ CLAUDE.md file missing"
fi
```

## Emergency Recovery

### If All Backups Are Lost
```bash
# Reconstruct from git history
git log --oneline --follow CLAUDE.md

# Restore from specific commit
git show HEAD~1:CLAUDE.md > CLAUDE.md.recovered

# Or use git checkout
git checkout HEAD~1 -- CLAUDE.md
```

### If Git History Is Unavailable
```bash
# Create minimal working CLAUDE.md
cat > CLAUDE.md << 'EOF'
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands

## Immediate Access
- **Local App**: http://localhost:3000
- **Package Manager**: `npm`

## Debug Commands
```bash
/understand                     # Multi-agent debugging
/status                         # Project health check
```

---

# Bloom Brain System

This project uses **Bloom Brain** - a portable Claude Code command framework.

## Available Commands
- `/understand` - Comprehensive debugging
- `/status` - Project health check
- `/new-feature` - Feature planning

---

_Minimal CLAUDE.md recovered after backup loss_
EOF

echo "✅ Minimal CLAUDE.md created - customize as needed"
```

## Prevention Best Practices

### Multiple Backup Strategies
```bash
# 1. Automatic timestamped backups (already implemented)
cp CLAUDE.md CLAUDE.md.backup.$(date +%Y%m%d_%H%M%S)

# 2. Git commits before changes
git add CLAUDE.md
git commit -m "backup: CLAUDE.md before Bloom Brain installation"

# 3. Manual backup with description
cp CLAUDE.md CLAUDE.md.backup.before_bloom_brain_install

# 4. Remote backup (if using cloud storage)
cp CLAUDE.md ~/Dropbox/claude_backups/CLAUDE.md.$(date +%Y%m%d_%H%M%S)
```

### Validation Hooks
```bash
# Create validation script
cat > validate_claude.sh << 'EOF'
#!/bin/bash
if [ ! -f "CLAUDE.md" ]; then
    echo "❌ CLAUDE.md missing"
    exit 1
fi

if [ ! -s "CLAUDE.md" ]; then
    echo "❌ CLAUDE.md is empty"
    exit 1
fi

echo "✅ CLAUDE.md validation passed"
EOF

chmod +x validate_claude.sh
```

## Troubleshooting

### Common Issues

**Issue**: Backup command fails with "Permission denied"
```bash
# Solution: Check file permissions
ls -la CLAUDE.md*
chmod 644 CLAUDE.md*
```

**Issue**: Backup file is empty
```bash
# Solution: Check original file
if [ -s "CLAUDE.md" ]; then
    echo "Original file has content"
else
    echo "Original file is empty - backup correctly reflects this"
fi
```

**Issue**: Cannot find backup files
```bash
# Solution: Search broadly
find . -name "*CLAUDE*backup*" -o -name "*backup*CLAUDE*"
```

### Recovery from Corrupted Files
```bash
# Check file integrity
file CLAUDE.md

# Look for encoding issues
head -c 50 CLAUDE.md | od -c

# Fix common issues
# Remove null characters
tr -d '\000' < CLAUDE.md > CLAUDE.md.fixed

# Convert line endings
dos2unix CLAUDE.md
```

## Integration with Installation Prompts

All installation prompts now include:
1. **Automatic backup creation** before any modifications
2. **Validation checks** after merge operations
3. **Rollback instructions** if validation fails
4. **Backup location information** for user reference

This ensures that users can always recover their original CLAUDE.md content if needed.