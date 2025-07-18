# Foolproof Installation Prompt (Includes CLAUDE.md Content)

## Copy This Complete Prompt Into Claude Code:

```
Please install and configure Bloom Brain (https://github.com/simonbloom/bloom-brain) with smart auto-detection and explicit CLAUDE.md setup.

**Step 1: Auto-detect my project settings by examining these files:**
- package.json (name, dependencies, scripts)
- vite.config.ts/js or next.config.js (ports, framework)
- Lock files (pnpm-lock.yaml, yarn.lock, package-lock.json)
- tsconfig.json (TypeScript detection)

**Step 2: Show me what you detected in this format:**
```
🔍 Auto-detecting project settings...

✅ Detected:
- Project Name: "my-app" (from package.json)
- Framework: React + TypeScript (from dependencies)
- Package Manager: pnpm (pnpm-lock.yaml found)
- Main Dev Port: 3000 (from vite.config.ts)
- Storybook Port: 6006 (from package.json scripts)
- UI Library: shadcn/ui (from dependencies)
- Project Directory: /path/to/current/directory

❓ What database/backend do you use? (Supabase/PostgreSQL/Firebase/etc.)
❓ Are these settings correct? [Y/n]
```

**Step 3: After I confirm, install Bloom Brain:**
1. Run: `git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain`
2. Run: `./.claude/bloom-brain/scripts/init-bloom-brain.sh`

**Step 4: Create .claude/bloom-brain.config.json with detected settings:**
```json
{
  "project": {
    "name": "[DETECTED_PROJECT_NAME]",
    "type": "web-app",
    "package_manager": "[DETECTED_PACKAGE_MANAGER]",
    "framework": "[DETECTED_FRAMEWORK]",
    "ui_library": "[DETECTED_UI_LIBRARY]"
  },
  "development": {
    "main_port": "[DETECTED_MAIN_PORT]",
    "storybook_port": "[DETECTED_STORYBOOK_PORT]",
    "project_dir": "[DETECTED_PROJECT_DIR]"
  },
  "backend": {
    "database_info": "[USER_PROVIDED_DATABASE]",
    "database_mcp_tools": "mcp__supabase-mcp-server__*"
  },
  "bloom_brain": {
    "version": "latest",
    "initialized_at": "[CURRENT_TIMESTAMP]"
  }
}
```

**Step 5: Intelligently merge Bloom Brain content with existing CLAUDE.md (SAFE - Preserves custom content):**

**First, create a backup:**
```bash
# Create timestamped backup
cp CLAUDE.md CLAUDE.md.backup.$(date +%Y%m%d_%H%M%S) 2>/dev/null || echo "No existing CLAUDE.md found"
```

**Then analyze and merge intelligently:**

1. **If CLAUDE.md exists**: Analyze for custom content and preserve ALL existing sections
2. **If no CLAUDE.md**: Create new file with detected settings
3. **Always preserve**: Task management systems, custom rules, project-specific commands
4. **Update carefully**: Only generic Bloom Brain sections that are outdated

**Merge Process:**
```bash
# Check for existing custom content
if [ -f "CLAUDE.md" ]; then
    echo "🔍 Analyzing existing CLAUDE.md for custom content..."
    
    # Preserve these sections if found:
    # - Task management systems (Task Master AI, etc.)
    # - Custom development rules and workflows
    # - Project-specific commands and scripts
    # - Custom service URLs and ports
    # - Testing and build procedures
    # - Database configurations
    
    if grep -q "task-master\|Task Master\|custom\|project-specific" CLAUDE.md; then
        echo "⚠️ Custom content detected - will preserve all existing sections"
        echo "📝 Will only add/update Bloom Brain command sections"
        PRESERVE_CUSTOM="TRUE"
    else
        echo "📝 Standard content detected - safe to update generic sections"
        PRESERVE_CUSTOM="FALSE"
    fi
else
    echo "🆕 No existing CLAUDE.md - creating new file"
    PRESERVE_CUSTOM="FALSE"
fi
```

**Smart Merge Strategy:**
- **PRESERVE COMPLETELY**: All unrecognized/custom sections
- **UPDATE CAREFULLY**: Bloom Brain command listings (add new, keep existing)
- **MERGE INTELLIGENTLY**: Quick Reference section (use detected values only if missing)

**Resulting CLAUDE.md Structure:**
```markdown
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands

## Immediate Access
- **Local App**: http://localhost:[DETECTED_MAIN_PORT]
- **Storybook**: http://localhost:[DETECTED_STORYBOOK_PORT]
- **Package Manager**: `[DETECTED_PACKAGE_MANAGER]`
- **Database**: [USER_PROVIDED_DATABASE]

[PRESERVE_ALL_EXISTING_CUSTOM_SECTIONS_HERE]

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

## All Available Commands

### 🔍 Multi-Agent Debugging
- `/understand` - Comprehensive 6-agent analysis
- `/ultra-debug` - Ultra-comprehensive 7-MCP system analysis
- `/performance` - Performance bottleneck analysis
- `/security` - Security vulnerability assessment
- `/status` - Project health check

### 🚀 Feature Development
- `/new-feature [description]` - Full feature planning
- `/impact-check [change]` - Breaking change analysis
- `/architecture-map [area]` - System architecture review

### 🔧 Individual Agents
- `/browser-agent` - Console errors, network debugging
- `/performance-agent` - Core Web Vitals, optimization
- `/code-trace-agent` - Execution paths, logic errors
- `/ux-agent` - User journeys, accessibility
- `/debug-synthesis-agent` - Visual representations, correlations
- `/solution-agent` - Actionable recommendations
- `/research-agent` - Latest patterns and best practices
- `/db-agent` - Database schema analysis
- `/arch-agent` - Architecture and integration analysis
- `/risk-agent` - Risk assessment and mitigation
- `/plan-agent` - Implementation roadmap creation
- `/architecture-agent` - Complete architecture analysis
- `/ui-guidelines-agent` - UI/UX guidance and design system
- `/development-workflow-agent` - Development workflow optimization
- `/setup-agent` - Environment setup and configuration

### 📋 Project Management
- `/list-plans` - List all saved plans
- `/plan-status` - Check plan execution status
- `/run-plan` - Execute saved implementation plans
- `/save-plan` - Save current plan for later
- `/save-this-plan` - Save specific plan with custom name
- `/analysis-progress` - Real-time progress tracking

### 🛠 Development Tools
- `/storybook` - Component documentation management
- `/ui-fix` - UI issue diagnosis and fixes
- `/go` - Quick project navigation and execution

### 🔄 Bloom Brain Management
- `/init-bloom-brain` - Initialize Bloom Brain in new project
- `/update-bloom-brain` - Update to latest Bloom Brain version
- `/push-bloom-brain` - Push improvements back to repository

## Sync Commands
```bash
# Update Bloom Brain to latest version
./.claude/bloom-brain/scripts/update-bloom-brain.sh

# Push your improvements back to the repository
./.claude/bloom-brain/scripts/push-bloom-brain.sh
```

[PRESERVE_ALL_EXISTING_CUSTOM_SECTIONS_AFTER_BLOOM_BRAIN]

---

_This CLAUDE.md file was enhanced with Bloom Brain integration_
```

**Validation:**
```bash
# Validate merged content
echo "🔍 Validating merged CLAUDE.md..."

# Check for required Bloom Brain sections
if ! grep -q "Bloom Brain" CLAUDE.md; then
    echo "❌ Bloom Brain section missing - restoration needed"
    echo "📋 Available backups:"
    ls -la CLAUDE.md.backup.*
    echo "To restore: cp CLAUDE.md.backup.YYYYMMDD_HHMMSS CLAUDE.md"
    exit 1
fi

# Check for preserved custom content (if it existed)
if [ "$PRESERVE_CUSTOM" = "TRUE" ]; then
    if ! grep -q "task-master\|Task Master\|custom" CLAUDE.md; then
        echo "❌ Custom content was lost - restoring from backup"
        cp CLAUDE.md.backup.* CLAUDE.md
        echo "✅ Original content restored"
        exit 1
    fi
fi

echo "✅ Validation passed - merge successful"
echo "💾 Backup available at: CLAUDE.md.backup.*"
```

**Step 6: Test the installation:**
1. Run: `./.claude/bloom-brain/scripts/update-bloom-brain.sh`
2. Verify that `.claude/bloom-brain/commands/` contains 35+ command files
3. Check that `ls .claude/bloom-brain/commands/ | wc -l` shows 35

**Step 7: Fix Command Discovery (CRITICAL):**
Claude Code needs commands in a specific location to discover them:
```bash
# Create symlink so Claude Code can find the commands
ln -sf bloom-brain/commands .claude/commands

# Verify the symlink was created
ls -la .claude/commands/

# Test that commands are discoverable
ls .claude/commands/ | grep understand
```

**Step 8: Provide restart instructions:**
```
🎉 **Bloom Brain Installation Complete!**

**IMPORTANT - Next Steps:**
1. **Restart Claude Code completely** (close and reopen the application)
2. **Test commands**: Try `/understand` or `/status` 
3. **If commands don't work**: 
   - Check that `.claude/bloom-brain/commands/` contains command files
   - Make sure the symlink exists: `ls -la .claude/commands/`
   - If no symlink, create it: `ln -sf bloom-brain/commands .claude/commands`
   - Restart Claude Code again
   - Try running `./.claude/bloom-brain/scripts/update-bloom-brain.sh`

**Your Configuration:**
- Main app: http://localhost:[DETECTED_MAIN_PORT]
- Storybook: http://localhost:[DETECTED_STORYBOOK_PORT]
- Package manager: [DETECTED_PACKAGE_MANAGER]
- Database: [USER_PROVIDED_DATABASE]

**Available Commands:** All 35+ commands are now available including:
/understand, /ultra-debug, /new-feature, /performance, /status, /browser-agent, /architecture-agent, and many more!
```

**Important Instructions:**
- Replace ALL [DETECTED_*] and [USER_PROVIDED_*] placeholders with actual values
- Actually CREATE the files, don't just show me the content
- Make sure CLAUDE.md is properly written to disk
- Test that the installation works before giving me restart instructions

Please start by auto-detecting my project settings!
```

## Key Improvements

1. **Explicit CLAUDE.md Content**: Complete template with all 35+ commands
2. **Clear Placeholders**: [DETECTED_*] values that must be replaced
3. **File Creation Instructions**: "Actually CREATE the files, don't just show me the content"
4. **Verification Steps**: Test installation before declaring success
5. **Troubleshooting**: Clear restart instructions and fallback steps

This should fix the CLAUDE.md update issue completely!