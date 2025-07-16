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

## For Claude Code in Cursor (Complete Setup)

**Copy this entire prompt into Claude Code** for automatic installation and configuration:

```
Please install and configure Bloom Brain (https://github.com/simonbloom/bloom-brain) - a comprehensive command framework with 35+ advanced commands for debugging, feature development, and project management.

I need you to:
1. Ask me configuration questions about my project setup
2. Install the Bloom Brain submodule
3. Update my CLAUDE.md file with proper Bloom Brain integration
4. Create bloom-brain.config.json with my preferences
5. Test the installation and provide restart instructions

Please ask me these questions:
- Project name?
- Main development server port? (default: 3000)
- Storybook port? (default: 6006)
- Package manager? (npm/pnpm/yarn)
- Database/backend? (Supabase/PostgreSQL/etc.)
- Framework? (React/Vue/Next.js/etc.)
- UI library? (shadcn/ui/Material-UI/etc.)
- Project directory path?

After I answer, please:
1. Install the submodule: git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain
2. Run initialization: ./.claude/bloom-brain/scripts/init-bloom-brain.sh
3. Create .claude/bloom-brain.config.json with my answers
4. Update my CLAUDE.md file with Bloom Brain integration and command references
5. Test the installation works
6. Give me restart instructions for Claude Code

Then I should be able to use all 35+ commands like /understand, /ultra-debug, /new-feature, etc.

Please start by asking me the configuration questions!
```

**What this does:**
- ✅ Asks configuration questions for your project
- ✅ Installs Bloom Brain submodule automatically
- ✅ Updates your CLAUDE.md with proper integration
- ✅ Creates bloom-brain.config.json with your preferences
- ✅ Tests installation and provides restart instructions
- ✅ Makes all 35+ commands available after restart

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
