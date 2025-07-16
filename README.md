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

## For Claude Code in Cursor (Smart Auto-Detection)

**Copy this smart prompt into Claude Code** - it auto-detects most settings and only asks what it needs to:

```
Please install and configure Bloom Brain (https://github.com/simonbloom/bloom-brain) with smart auto-detection.

First, auto-detect my project settings by examining these files:
- package.json (name, dependencies, scripts)
- vite.config.ts/js or next.config.js (ports, framework)
- Lock files (pnpm-lock.yaml, yarn.lock, package-lock.json)
- tsconfig.json (TypeScript detection)
- Any config files that indicate framework/tooling

Then show me what you detected and ask only what you can't determine:

**Auto-Detection Logic:**
1. **Project Name**: Extract from package.json "name" field
2. **Framework**: Check package.json dependencies for React/Vue/Angular/Next.js
3. **Package Manager**: Check for pnpm-lock.yaml (pnpm), yarn.lock (yarn), or package-lock.json (npm)
4. **Main Port**: Check vite.config.ts server.port, next.config.js, or package.json scripts
5. **Storybook Port**: Check package.json scripts for storybook command with -p flag
6. **UI Library**: Check dependencies for @shadcn/ui, @mui/material, @chakra-ui, etc.
7. **TypeScript**: Check for tsconfig.json and typescript in dependencies
8. **Project Directory**: Use current working directory

**Format your detection like this:**
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

❓ Only need to ask:
1. Database/Backend: What database or backend do you use? (Supabase/PostgreSQL/Firebase/etc.)
2. Are these detected settings correct? [Y/n]
3. Any custom ports or overrides?
```

**After I confirm, please:**
1. Install submodule: `git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain`
2. Run initialization: `./.claude/bloom-brain/scripts/init-bloom-brain.sh`
3. Create .claude/bloom-brain.config.json with the detected + confirmed settings
4. Update my CLAUDE.md file with the proper Bloom Brain integration and all command references
5. Test the installation works properly
6. Provide clear restart instructions for Claude Code

Please start by auto-detecting my project settings and showing me what you found!
```

**Why this is better:**
- 🧠 **Smart Detection**: Auto-detects 85% of settings from your files
- ❓ **Minimal Questions**: Only asks about database and confirmation
- ⚡ **Faster Setup**: No more answering 8 questions every time
- ✅ **Still Complete**: Full CLAUDE.md integration and all 35+ commands

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

---

**Created by**: Simon Bloom  
**Purpose**: Unified development workflow across 5+ projects  
**Architecture**: Git submodules with intelligent project customization
