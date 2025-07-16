# Smart CLAUDE.md Merge Logic Template

## Overview
This template provides intelligent merging of Bloom Brain content with existing CLAUDE.md files to preserve project-specific customizations.

## Smart Merge Process

### Step 1: Backup and Analysis
```bash
# Create timestamped backup
cp CLAUDE.md CLAUDE.md.backup.$(date +%Y%m%d_%H%M%S)

# Analyze existing content
echo "🔍 Analyzing existing CLAUDE.md content..."
```

**Detection Logic:**
- ✅ **Preserve if found**: Task management systems (Task Master AI, etc.)
- ✅ **Preserve if found**: Custom development commands and scripts
- ✅ **Preserve if found**: Project-specific rules and memories
- ✅ **Preserve if found**: Custom service URLs and ports
- ✅ **Preserve if found**: Testing and build commands
- ✅ **Preserve if found**: Database-specific configurations
- ⚠️ **Merge carefully**: Generic Bloom Brain sections (update if outdated)
- ⚠️ **Update if needed**: Basic project structure (Quick Reference, etc.)

### Step 2: Smart Content Preservation

**Content Categories:**
```markdown
# PRESERVE COMPLETELY (Never overwrite)
## Task Management Systems
- Task Master AI commands
- Custom workflow instructions
- Project-specific task tracking

## Custom Development Rules
- UI development protocols
- Feature development workflows
- Quality assurance procedures
- Technology implementation rules

## Project-Specific Details
- Custom service URLs and ports
- Specific package manager instructions
- Database connection details
- Testing and build commands

# MERGE INTELLIGENTLY (Update if outdated)
## Bloom Brain Sections
- Command listings (add new, keep existing)
- Debug command categories
- Feature development commands
- Bloom Brain management commands

# UPDATE IF GENERIC (Safe to replace)
## Basic Structure
- Generic Quick Reference sections
- Standard development commands
- Basic project templates
```

### Step 3: Intelligent Merge Algorithm

**Pre-Merge Analysis:**
```bash
# Check for existing Bloom Brain integration
if grep -q "Bloom Brain" CLAUDE.md; then
    echo "✅ Existing Bloom Brain integration found - will merge carefully"
    MERGE_MODE="UPDATE"
else
    echo "🆕 No Bloom Brain integration found - will add new sections"
    MERGE_MODE="ADD"
fi

# Check for custom content
if grep -q "task-master\|Task Master\|custom\|project-specific" CLAUDE.md; then
    echo "⚠️ Custom content detected - will preserve all existing sections"
    PRESERVE_CUSTOM="TRUE"
else
    echo "📝 Standard content detected - safe to update generic sections"
    PRESERVE_CUSTOM="FALSE"
fi
```

**Merge Strategy:**
1. **Preserve Header**: Keep existing project name and description
2. **Preserve Quick Reference**: Keep custom URLs, ports, and commands
3. **Preserve Custom Sections**: Keep all unrecognized sections
4. **Update Bloom Brain Sections**: Replace outdated command listings
5. **Add Missing Sections**: Insert new Bloom Brain categories
6. **Preserve Footer**: Keep custom notes and signatures

### Step 4: Merge Template Structure

```markdown
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands

## Immediate Access
[PRESERVE_EXISTING_OR_USE_DETECTED]
- **Local App**: http://localhost:[DETECTED_OR_EXISTING_PORT]
- **Storybook**: http://localhost:[DETECTED_OR_EXISTING_STORYBOOK_PORT]
- **Package Manager**: `[DETECTED_OR_EXISTING_PACKAGE_MANAGER]`
- **Database**: [DETECTED_OR_EXISTING_DATABASE]

[PRESERVE_ALL_EXISTING_CUSTOM_SECTIONS]

## Debug Commands (Most Used)
```bash
/understand                     # Multi-agent debugging (6-10 min)
/ultra-debug                    # All 7 MCP tools analysis (15-23 min)
/performance                    # Performance analysis
/status                         # Project health check
```

## Feature Development
```bash
/new-feature [description]      # Full feature planning (8-10 min)
/impact-check [change]          # Breaking change analysis
/architecture-map [area]        # System architecture review
```

---

# Bloom Brain System

This project uses **Bloom Brain** - a portable Claude Code command framework with 35+ advanced commands.

[INSERT_COMPLETE_BLOOM_BRAIN_COMMAND_LISTING]

[PRESERVE_ALL_EXISTING_CUSTOM_SECTIONS_AFTER_BLOOM_BRAIN]

---

[PRESERVE_EXISTING_FOOTER_OR_ADD_BLOOM_BRAIN_SIGNATURE]
```

### Step 5: Validation and Rollback

**Validation Steps:**
```bash
# Validate merged file
echo "🔍 Validating merged CLAUDE.md..."

# Check for required sections
if ! grep -q "Bloom Brain" CLAUDE.md; then
    echo "❌ Bloom Brain section missing - rolling back"
    cp CLAUDE.md.backup.* CLAUDE.md
    exit 1
fi

# Check for preserved content
if [ "$PRESERVE_CUSTOM" = "TRUE" ]; then
    if ! grep -q "task-master\|Task Master\|custom" CLAUDE.md; then
        echo "❌ Custom content lost - rolling back"
        cp CLAUDE.md.backup.* CLAUDE.md
        exit 1
    fi
fi

echo "✅ Validation passed - merge successful"
```

**Rollback Instructions:**
```bash
# Quick rollback
cp CLAUDE.md.backup.* CLAUDE.md

# Or choose specific backup
ls CLAUDE.md.backup.*
cp CLAUDE.md.backup.20231201_143022 CLAUDE.md
```

## Implementation Instructions

### For Installation Prompts:
1. **Replace destructive "Create CLAUDE.md with this EXACT content"**
2. **Use smart merge logic instead**
3. **Always create backup before modifications**
4. **Validate merged content**
5. **Provide rollback instructions**

### Key Principles:
- **Safety First**: Always backup before modifying
- **Preserve Custom**: Never overwrite unrecognized content
- **Merge Intelligently**: Update only what's needed
- **Validate Results**: Ensure merge was successful
- **Provide Recovery**: Clear rollback instructions

## Usage in Installation Prompts

**Instead of:**
```
Step 5: Create or update CLAUDE.md with this EXACT content:
[MASSIVE_TEMPLATE_THAT_OVERWRITES_EVERYTHING]
```

**Use:**
```
Step 5: Intelligently merge Bloom Brain content with existing CLAUDE.md:

1. Create backup: cp CLAUDE.md CLAUDE.md.backup.$(date +%Y%m%d_%H%M%S)
2. Analyze existing content for custom sections
3. Preserve all project-specific content
4. Update/add Bloom Brain sections only
5. Validate merged content
6. Provide rollback instructions if needed
```

This approach ensures user customizations are never lost while still providing complete Bloom Brain integration.