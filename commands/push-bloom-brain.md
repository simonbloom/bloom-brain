# Push Bloom Brain Changes

Push local Bloom Brain changes back to the central repository for sharing across projects.

```bash
./.claude/bloom-brain/scripts/push-bloom-brain.sh
```

This command will:
1. Show what changes will be pushed
2. Allow you to enter a commit message
3. Push changes to the central repository
4. Update the parent repository to track changes

## What Gets Pushed

Only changes within the `.claude/bloom-brain/` directory are pushed:
- **Commands** - New or modified slash commands
- **Documentation** - Framework documentation updates
- **Templates** - Template improvements
- **Scripts** - Sync utility enhancements

## Project-Specific Exclusions

These are NOT pushed (they stay local):
- **Configuration** - `.claude/bloom-brain.config.json`
- **Local settings** - `.claude/settings.local.json`
- **Custom hooks** - Project-specific hook modifications
- **Analysis data** - `.claude/analysis/` contents

## Usage Examples

### Standard Push
```bash
/push-bloom-brain
```

### Check What Would Be Pushed
```bash
cd .claude/bloom-brain
git status
git diff
```

### Push with Descriptive Message
When prompted, enter a meaningful commit message:
- ✅ Good: "Add performance optimization to understand command"
- ✅ Good: "Fix hook template for Windows compatibility"
- ❌ Poor: "Update from hostname"

## Best Practices

### Before Pushing
1. **Test thoroughly** - Ensure changes work in your project
2. **Update documentation** - Keep docs synchronized with code
3. **Consider impact** - Will this break other projects?
4. **Use descriptive messages** - Help others understand changes

### After Pushing
1. **Test in other projects** - Run `/update-bloom-brain` elsewhere
2. **Monitor for issues** - Check if others report problems
3. **Update other machines** - Keep all your environments synced

## Troubleshooting

### Permission Denied
If you get permission errors:
1. Check GitHub access token permissions
2. Verify you have push access to the repository
3. Try: `git remote -v` in `.claude/bloom-brain/`

### Push Rejected
If the push is rejected:
1. Update first: `/update-bloom-brain`
2. Resolve any conflicts
3. Try pushing again

Target Analysis: Push Bloom Brain changes