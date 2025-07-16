# Bloom Brain Installation Wizard

## Copy-Paste Prompt for New Projects

```
I want to install Bloom Brain (https://github.com/simonbloom/bloom-brain) in this project. This is a comprehensive command framework with 35+ advanced commands for debugging, feature development, and project management.

Please help me set this up by:

1. **Installing the submodule**: Add Bloom Brain as a git submodule at .claude/bloom-brain
2. **Configuring the project**: Ask me configuration questions about my project setup
3. **SAFELY updating CLAUDE.md**: Intelligently merge Bloom Brain content while preserving all existing custom sections
4. **Setting up config files**: Create bloom-brain.config.json with my preferences
5. **Providing restart instructions**: Tell me how to restart Claude Code to activate commands

Please ask me these configuration questions to customize the setup:

**Project Configuration Questions:**
- What's your project name?
- What port does your main development server run on? (default: 3000)
- What port does Storybook run on? (default: 6006)
- What package manager do you use? (npm/pnpm/yarn)
- What database/backend do you use? (Supabase/PostgreSQL/MySQL/Firebase/etc.)
- What framework are you using? (React/Vue/Angular/Next.js/etc.)
- What's your project directory path?

After I answer these questions, please:
1. Install the Bloom Brain submodule
2. Initialize the system with my configuration
3. SAFELY merge Bloom Brain content with existing CLAUDE.md (preserve all custom sections)
4. Set up the bloom-brain.config.json file
5. Test that the installation worked
6. Give me restart instructions

Then I should be able to use commands like:
- /understand (comprehensive debugging)
- /ultra-debug (system-wide analysis)
- /new-feature (feature planning)
- /performance (performance analysis)
- /status (project health check)
- And 30+ other commands

Please start by asking me the configuration questions, then proceed with the installation.
```

## Why This Approach Works

This comprehensive prompt:
- **Asks for configuration upfront** - Gets all needed project details
- **Handles everything automatically** - No manual steps after answering questions
- **Updates CLAUDE.md properly** - Integrates with existing project documentation
- **Creates proper config files** - Sets up bloom-brain.config.json with user preferences
- **Provides restart guidance** - Clear instructions for command activation
- **Verifies installation** - Tests that commands work properly

## Expected Flow

1. User pastes prompt into Claude Code
2. Claude asks configuration questions
3. User answers questions about their project
4. Claude installs submodule and configures everything
5. Claude updates CLAUDE.md with project-specific details
6. **Claude creates symlink for command discovery**: `ln -sf bloom-brain/commands .claude/commands`
7. Claude provides restart instructions
8. User restarts Claude Code
9. All 35+ commands are available and working

## Troubleshooting

### Commands Not Appearing After Installation

**Problem**: After restart, `/understand` and other commands don't appear when typing `/`

**Solution**: Create the command discovery symlink:
```bash
ln -sf bloom-brain/commands .claude/commands
ls -la .claude/commands/  # Verify symlink exists
```

**Why**: Claude Code looks for commands in `.claude/commands/` but Bloom Brain installs them in `.claude/bloom-brain/commands/`