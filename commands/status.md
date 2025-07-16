# Project Status Check

Provide a quick overview of:
- Git status and recent commits
- Running processes  
- Recent error logs
- Test results
- Current branch and any merge conflicts

## Status Check Areas

### Git Status
- Current branch and tracking info
- Uncommitted changes
- Recent commit history
- Merge conflicts or rebase status

### Development Environment
- Running services and ports
- Process health checks
- Resource usage

### Code Quality
- Linting errors
- Type checking results
- Test suite status
- Build status

### Logs and Errors
- Recent error patterns
- Console warnings
- Performance issues

## Output Format

```
🔍 PROJECT STATUS OVERVIEW

📋 Git Status:
   Branch: feature/new-auth
   Status: 3 uncommitted files
   Last commit: 2 hours ago

🚀 Services:
   ✅ Main app (localhost:6123)
   ✅ Storybook (localhost:7123)
   ❌ API server (not running)

🧪 Quality:
   ✅ Tests: 94% passing (2 failing)
   ⚠️  Linting: 3 warnings
   ✅ Types: No errors

📊 Performance:
   ⚠️  Bundle size: 2.3MB (target: 2MB)
   ✅ Page load: 1.2s
```

Target Analysis: $ARGUMENTS