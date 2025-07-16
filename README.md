# Bloom Brain 🧠

A sophisticated command framework for Claude Code that provides advanced debugging, analysis, and development workflow capabilities across multiple projects.

## Quick Install

### For New Projects

1. **Add as submodule**:
   ```bash
   git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain
   ```

2. **Initialize**:
   ```bash
   ./.claude/bloom-brain/scripts/init-bloom-brain.sh
   ```

3. **Configure your project** (edit `.claude/bloom-brain.config.json`):
   ```json
   {
     "main_port": "3000",
     "storybook_port": "6006", 
     "package_manager": "npm",
     "database_info": "PostgreSQL",
     "project_dir": "/path/to/your/project"
   }
   ```

That's it! 🚀

## For Claude Code in Cursor (Foolproof Installation)

**Copy this complete prompt into Claude Code** - it auto-detects settings AND creates proper CLAUDE.md:

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

**Step 4: Create .claude/bloom-brain.config.json with detected settings**

**Step 5: Create or update CLAUDE.md with this EXACT content:**

```markdown
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands

## Immediate Access
- **Local App**: http://localhost:[DETECTED_MAIN_PORT]
- **Storybook**: http://localhost:[DETECTED_STORYBOOK_PORT]
- **Package Manager**: `[DETECTED_PACKAGE_MANAGER]`
- **Database**: [USER_PROVIDED_DATABASE]

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
- `/architecture-agent` - Complete architecture analysis
- `/ui-guidelines-agent` - UI/UX guidance and design system
- And 20+ more specialized agents...

### 🔄 Bloom Brain Management
- `/update-bloom-brain` - Update to latest Bloom Brain version
- `/push-bloom-brain` - Push improvements back to repository

## Sync Commands
```bash
# Update Bloom Brain to latest version
./.claude/bloom-brain/scripts/update-bloom-brain.sh
```
```

**Step 6: Test and provide restart instructions**

**Important Instructions:**
- Replace ALL [DETECTED_*] and [USER_PROVIDED_*] placeholders with actual values
- Actually CREATE the files, don't just show me the content
- Make sure CLAUDE.md is properly written to disk
- Test that the installation works before giving me restart instructions

Please start by auto-detecting my project settings!
```

**Why this fixes the CLAUDE.md issue:**
- 📝 **Explicit Content**: Includes the exact CLAUDE.md template to create
- 🔄 **Placeholder Replacement**: Clear instructions to replace [DETECTED_*] values
- ✅ **File Creation**: Explicitly tells Claude to CREATE files, not just show content
- 🧪 **Verification**: Tests installation before declaring success

## All 35 Commands

### 🔍 **Multi-Agent Debugging**
- `/understand` - Comprehensive 6-agent analysis (4-6 min)
- `/ultra-debug` - Ultra-comprehensive 7-MCP system analysis (15-23 min)
- `/performance` - Performance bottleneck analysis
- `/security` - Security vulnerability assessment
- `/status` - Project health check

### 🚀 **Feature Development**
- `/new-feature [description]` - Full feature planning with 5 specialized agents
- `/impact-check [change]` - Breaking change analysis
- `/architecture-map [area]` - System architecture review

### 🔧 **Individual Agents**
- `/browser-agent` - Console errors, network issues, client-side debugging
- `/performance-agent` - Core Web Vitals, bottlenecks, optimization
- `/code-trace-agent` - Execution paths, logic errors, dead code
- `/ux-agent` - User journeys, friction points, accessibility
- `/debug-synthesis-agent` - Visual representations, correlations
- `/solution-agent` - Actionable recommendations, implementation guides
- `/research-agent` - Latest patterns and best practices
- `/db-agent` - Database schema analysis
- `/arch-agent` - Architecture and integration analysis
- `/risk-agent` - Risk assessment and mitigation
- `/plan-agent` - Implementation roadmap creation
- `/architecture-agent` - Complete architecture analysis
- `/ui-guidelines-agent` - UI/UX guidance and design system
- `/development-workflow-agent` - Development workflow optimization
- `/setup-agent` - Environment setup and configuration

### 📋 **Project Management**
- `/list-plans` - List all saved plans
- `/plan-status` - Check plan execution status
- `/run-plan` - Execute saved implementation plans
- `/save-plan` - Save current plan for later
- `/save-this-plan` - Save specific plan with custom name
- `/analysis-progress` - Real-time progress tracking

### 🛠 **Development Tools**
- `/storybook` - Component documentation management
- `/ui-fix` - UI issue diagnosis and fixes
- `/go` - Quick project navigation and execution

### 🔄 **Bloom Brain Management**
- `/init-bloom-brain` - Initialize Bloom Brain in new project
- `/update-bloom-brain` - Update to latest Bloom Brain version
- `/push-bloom-brain` - Push improvements back to repository

## Sync Commands

### Daily Usage
```bash
# Update to latest Bloom Brain
./.claude/bloom-brain/scripts/update-bloom-brain.sh

# Push your improvements back
./.claude/bloom-brain/scripts/push-bloom-brain.sh
```

## What's Included

- **35+ Advanced Commands** - Multi-agent debugging, feature planning, architecture analysis
- **Intelligent Hooks** - Auto-restart servers, smart preview URLs
- **Template System** - Project-agnostic with placeholder substitution
- **Sync Scripts** - Keep all projects updated automatically
- **MCP Integration** - Supabase, GitHub, Railway, Browser tools, and more

## Architecture

- **Commands**: 35+ markdown files with specialized agent workflows
- **Scripts**: Sync and initialization automation
- **Templates**: Generic project templates with placeholders
- **Hooks**: Smart server restart and preview URL generation

## Cross-Project Sync

Bloom Brain acts as a "live document" system - any improvements made to one project automatically sync to all others. Perfect for maintaining consistent development workflows across multiple projects.

## Troubleshooting

### Commands Not Appearing When Typing `/`

**Problem**: After installing Bloom Brain, when you type `/` in Claude Code, the `/understand` command (and other Bloom Brain commands) don't appear in the autocomplete.

**Cause**: Claude Code looks for commands in `.claude/commands/` but Bloom Brain installs them in `.claude/bloom-brain/commands/`.

**Solution**: Create a symlink so Claude Code can discover the commands:

```bash
# Navigate to your project directory
cd /path/to/your/project

# Create symlink from .claude/commands to bloom-brain/commands
ln -sf bloom-brain/commands .claude/commands

# Verify the symlink was created
ls -la .claude/commands/

# Test that commands are discoverable
ls .claude/commands/ | grep understand
```

**Verification**: 
1. Restart Claude Code completely (close and reopen)
2. Type `/` and you should see `/understand` and other Bloom Brain commands
3. If still not working, try running: `./.claude/bloom-brain/scripts/update-bloom-brain.sh`

### Other Common Issues

- **Submodule not updating**: Run `git submodule update --remote .claude/bloom-brain`
- **Commands give errors**: Check that `.claude/bloom-brain.config.json` exists and has valid JSON
- **Hooks not working**: Verify hook files are executable: `chmod +x .claude/hooks/*.sh`

---

**Created by**: Simon Bloom  
**Purpose**: Unified development workflow across 5+ projects  
**Architecture**: Git submodules with intelligent project customization
