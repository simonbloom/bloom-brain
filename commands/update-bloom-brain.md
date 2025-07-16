# Update Bloom Brain

Update the Bloom Brain framework to the latest version from the central repository.

```bash
./.claude/bloom-brain/scripts/update-bloom-brain.sh
```

This command will:
1. Pull the latest changes from the central Bloom Brain repository
2. Apply project-specific customizations 
3. Update hooks, settings, and documentation
4. Show status of the update

## What Gets Updated

- **Commands** - All slash commands from the central repository
- **Documentation** - Latest framework documentation
- **Templates** - Updated project templates
- **Scripts** - Sync and management utilities

## Customization Preservation

Your project-specific customizations are preserved through:
- **Configuration file** - `.claude/bloom-brain.config.json`
- **Local overrides** - `.claude/settings.local.json`
- **Custom hooks** - Project-specific hook modifications

## Usage Examples

### Standard Update
```bash
/update-bloom-brain
```

### Check Status After Update
```bash
# View current version
cat .claude/bloom-brain/.git/refs/heads/main

# View update history
git log --oneline .claude/bloom-brain/ | head -10
```

## Troubleshooting

### Merge Conflicts
If you encounter merge conflicts:
1. Navigate to `.claude/bloom-brain/`
2. Resolve conflicts manually
3. Complete the merge: `git add . && git commit`
4. Run `/update-bloom-brain` again

### Reset to Latest
To reset to the latest version (losing local changes):
```bash
cd .claude/bloom-brain
git reset --hard origin/main
cd ../..
/update-bloom-brain
```

Target Analysis: Update Bloom Brain framework