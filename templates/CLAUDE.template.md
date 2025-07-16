# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

# Quick Reference - Essential Commands

## Immediate Access
- **Local App**: http://localhost:{{MAIN_PORT}}
- **Storybook**: http://localhost:{{STORYBOOK_PORT}}
- **Package Manager**: `{{PACKAGE_MANAGER}}` (never use npm)
- **Database**: {{DATABASE_INFO}}

## Daily Workflow
```bash
# Task Management (90% of usage)
task-master next                                    # Get next task
task-master show <id>                              # View task details
task-master set-status --id=<id> --status=done    # Mark complete

# Development
{{PACKAGE_MANAGER}} kill:servers && {{PACKAGE_MANAGER}} dev     # Restart server
{{PACKAGE_MANAGER}} dev                                         # Start development
{{PACKAGE_MANAGER}} test                                        # Run tests
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

This project uses **Bloom Brain** - a portable Claude Code command framework.

## Bloom Brain Commands

### Update Commands
```bash
/update-bloom-brain             # Pull latest Bloom Brain changes
/push-bloom-brain               # Push local Bloom Brain changes
/init-bloom-brain               # Initialize in new project
```

### Sync Status
```bash
# Check Bloom Brain version
cat .claude/bloom-brain/.git/refs/heads/main

# View sync history
git log --oneline .claude/bloom-brain/
```

---

# Task Master AI - Detailed Reference

## Quick Start - Restart All Services

### Server Management
```bash
# Available commands
{{PACKAGE_MANAGER}} dev                            # Start development server
{{PACKAGE_MANAGER}} storybook                      # Start Storybook (runs on port {{STORYBOOK_PORT}})
{{PACKAGE_MANAGER}} kill:servers                   # Kill all running servers
{{PACKAGE_MANAGER}} kill:servers && {{PACKAGE_MANAGER}} dev      # Restart development server
```

**Service Ports:**
- Main app: http://localhost:{{MAIN_PORT}}
- Storybook: http://localhost:{{STORYBOOK_PORT}}

## Daily Commands

```bash
# Core workflow (90% of your usage)
task-master next                                    # Get next available task
task-master show <id>                              # View task details (e.g., 15 or 15.2)
task-master set-status --id=<id> --status=done    # Mark task complete
task-master update-subtask --id=<id> --prompt="notes"  # Log implementation progress

# Occasionally needed
task-master list                                   # Show all tasks
task-master add-task --prompt="description" --research  # Add new task
task-master expand --id=<id> --research           # Break task into subtasks
```

## Development Commands

```bash
# Start development server
{{PACKAGE_MANAGER}} dev                    # Start development server

# Build for production
{{PACKAGE_MANAGER}} build                  # Build for production

# Preview production build
{{PACKAGE_MANAGER}} preview                # Preview production build

# Run linting
{{PACKAGE_MANAGER}} lint                   # Run linting

# Storybook (Component Documentation)
{{PACKAGE_MANAGER}} storybook              # Run on http://localhost:{{STORYBOOK_PORT}}
{{PACKAGE_MANAGER}} build-storybook        # Build for deployment
```

## Testing Commands

```bash
# Run all tests
{{PACKAGE_MANAGER}} test                   # Run all tests

# Run tests with UI
{{PACKAGE_MANAGER}} test:ui                # Run tests with UI

# Run tests with coverage
{{PACKAGE_MANAGER}} test:coverage          # Run tests with coverage
```

## Development Rules & Memories

### UI Development & Testing
- **ALWAYS provide localhost URLs** after UI changes:
  - Single change: `View at: http://localhost:{{MAIN_PORT}}/specific-page`
  - Multiple changes: List each URL with what changed
- **NEVER declare features complete without checking browser console**:
  - Use `mcp__browser-tools__getConsoleErrors` first
  - Fix all errors before saying "done"
  - If errors exist, fix them automatically without prompting

### Feature Development Workflow
- **When user says "new feature" or similar**, ALWAYS ask first:
  - "Should I commit current changes and create a new branch?"
  - Suggest branch name based on feature
  - Execute: `git add -A && git commit -m "message" && git checkout -b feature/name`
- **Before starting any feature**: Check git status first

### Database & Backend Operations
- **NEVER ask user to write SQL or check database manually**
- **ALWAYS use {{DATABASE_MCP_TOOLS}} for**:
  - Database queries
  - Checking logs
  - Schema operations
- **Default to MCP tools** over manual database management

### Quality Assurance Protocol
- **When user says "check everything"**, automatically:
  1. Check browser console: `mcp__browser-tools__getConsoleErrors`
  2. Check network errors: `mcp__browser-tools__getNetworkErrors`
  3. Check database logs: {{DATABASE_LOG_COMMAND}}
  4. Take screenshot if UI involved: `mcp__browser-tools__takeScreenshot`
  5. Run performance audit if relevant: `mcp__browser-tools__runPerformanceAudit`
- **Act as debugging agent**: Fix issues found without asking

### Technology & API Implementation
- **BEFORE implementing any API or technology**:
  1. Use `mcp__brave-search__brave_web_search` to find latest docs
  2. Use `mcp__context7__resolve-library-id` then `mcp__context7__get-library-docs` for libraries
  3. Verify version numbers and check for deprecations
- **NEVER rely on internal knowledge** for:
  - API endpoints or authentication methods
  - Library versions or syntax
  - Best practices (always verify current standards)

## Local Development Server

**Service URLs:**
- Main app: http://localhost:{{MAIN_PORT}}
- Storybook: http://localhost:{{STORYBOOK_PORT}}

---

_This project is powered by Bloom Brain v{{BLOOM_BRAIN_VERSION}}_