# Complete Bloom Brain Installation Prompt

## Copy This Entire Prompt Into Claude Code:

```
Please install and configure Bloom Brain (https://github.com/simonbloom/bloom-brain) - a comprehensive command framework with 35+ advanced commands for debugging, feature development, and project management.

I need you to:

1. **Ask me configuration questions** about my project setup
2. **Install the Bloom Brain submodule**
3. **Update my CLAUDE.md file** with proper Bloom Brain integration
4. **Create bloom-brain.config.json** with my preferences
5. **Test the installation** and provide restart instructions

## Configuration Questions to Ask Me:

Please ask me these questions one by one:

1. **Project Name**: What should I call this project?
2. **Main Port**: What port does your main development server run on? (common: 3000, 5173, 8080)
3. **Storybook Port**: What port does Storybook run on? (default: 6006)
4. **Package Manager**: Do you use npm, pnpm, or yarn?
5. **Database/Backend**: What database or backend do you use? (Supabase, PostgreSQL, MySQL, Firebase, etc.)
6. **Framework**: What framework are you using? (React, Vue, Angular, Next.js, etc.)
7. **UI Library**: What UI library do you use? (shadcn/ui, Material-UI, Chakra UI, etc.)
8. **Project Directory**: What's the full path to this project directory?

## After I Answer, Please Do This:

### Step 1: Install Bloom Brain
```bash
git submodule add https://github.com/simonbloom/bloom-brain.git .claude/bloom-brain
./.claude/bloom-brain/scripts/init-bloom-brain.sh
```

### Step 2: Create bloom-brain.config.json
Create `.claude/bloom-brain.config.json` with my configuration answers:
```json
{
  "project": {
    "name": "[MY_PROJECT_NAME]",
    "type": "web-app",
    "package_manager": "[MY_PACKAGE_MANAGER]",
    "framework": "[MY_FRAMEWORK]",
    "ui_library": "[MY_UI_LIBRARY]"
  },
  "development": {
    "main_port": "[MY_MAIN_PORT]",
    "storybook_port": "[MY_STORYBOOK_PORT]",
    "project_dir": "[MY_PROJECT_DIR]"
  },
  "backend": {
    "database_info": "[MY_DATABASE]",
    "database_mcp_tools": "mcp__supabase-mcp-server__*"
  },
  "bloom_brain": {
    "version": "latest",
    "initialized_at": "[CURRENT_DATE]"
  }
}
```

### Step 3: Update CLAUDE.md
Add or update my CLAUDE.md file with this structure:

```markdown
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands

## Immediate Access
- **Local App**: http://localhost:[MY_MAIN_PORT]
- **Storybook**: http://localhost:[MY_STORYBOOK_PORT]  
- **Package Manager**: `[MY_PACKAGE_MANAGER]`
- **Database**: [MY_DATABASE]

## Daily Workflow
```bash
# Development
[MY_PACKAGE_MANAGER] dev                    # Start development
[MY_PACKAGE_MANAGER] test                   # Run tests
```

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
- `/ui-guidelines-agent` - UI/UX guidance
- `/development-workflow-agent` - Workflow optimization

### 📋 Project Management
- `/list-plans` - List all saved plans
- `/run-plan` - Execute saved plans
- `/save-plan` - Save current plan

### 🔄 Bloom Brain Management
- `/update-bloom-brain` - Update to latest version
- `/push-bloom-brain` - Push improvements back

## Sync Commands
```bash
# Update Bloom Brain
./.claude/bloom-brain/scripts/update-bloom-brain.sh

# Push improvements
./.claude/bloom-brain/scripts/push-bloom-brain.sh
```
```

### Step 4: Test Installation
Run this to verify everything works:
```bash
./.claude/bloom-brain/scripts/update-bloom-brain.sh
```

### Step 5: Restart Instructions
After everything is set up, tell me:

"🎉 **Bloom Brain Installation Complete!**

**Next Steps:**
1. **Restart Claude Code** completely (close and reopen)
2. **Test a command**: Try typing `/understand` or `/status`
3. **If commands don't work**: Check that `.claude/bloom-brain/commands/` contains the command files

**Available Commands**: You now have 35+ commands available including:
- `/understand` - Comprehensive debugging
- `/ultra-debug` - System-wide analysis  
- `/new-feature` - Feature planning
- `/performance` - Performance analysis
- `/status` - Project health check

**Configuration**: Your project is configured with:
- Main app: http://localhost:[MY_MAIN_PORT]
- Storybook: http://localhost:[MY_STORYBOOK_PORT]
- Package manager: [MY_PACKAGE_MANAGER]
- Database: [MY_DATABASE]"

## Important Notes:
- Replace all `[MY_*]` placeholders with my actual answers
- Make sure to create the files, don't just show me the code
- Test that the installation actually works
- If there are any errors, troubleshoot them before giving me the restart instructions

Please start by asking me the configuration questions!
```