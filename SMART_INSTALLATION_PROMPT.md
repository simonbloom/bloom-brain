# Smart Auto-Detection Installation Wizard

## Copy This Into Claude Code (Smart Version):

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
4. **SAFELY update my CLAUDE.md file** with intelligent merge (preserve all existing custom content, only add/update Bloom Brain sections)
5. Create backup of original CLAUDE.md before any modifications
6. Test the installation works properly
7. Provide clear restart instructions for Claude Code

**Expected outcome:**
- All 35+ commands (/understand, /ultra-debug, /new-feature, etc.) available after restart
- Proper CLAUDE.md integration with project-specific details
- Minimal questions asked (just database + confirmation)

Please start by auto-detecting my project settings and showing me what you found!
```

## Why This Is Better

**Before**: 8 questions every time
**After**: 1-2 questions with smart detection

**Auto-Detectable (85% of setup):**
- ✅ Project name (package.json)
- ✅ Framework (dependencies)
- ✅ Package manager (lock files)
- ✅ Ports (config files)
- ✅ UI library (dependencies)
- ✅ TypeScript (tsconfig.json)
- ✅ Project directory (process.cwd())

**Actually Need to Ask (15% of setup):**
- ❓ Database/backend (can't reliably detect)
- ❓ Confirmation of detected settings
- ❓ Any custom overrides

This makes the installation much smoother and more intelligent!