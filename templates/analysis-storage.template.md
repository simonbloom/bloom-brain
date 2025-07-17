# Analysis Storage Template

This template provides a standardized way to document analysis storage across all Bloom Brain commands.

## Template Usage

Replace the following variables when using this template:

- `{ANALYSIS_TYPE}` - Type of analysis (e.g., "feature", "debug", "ultra-debug", "comparison-debug")
- `{SESSION_TYPE}` - Session identifier format (e.g., "feature-name", "session-id", "target-specific")
- `{OUTPUT_DESCRIPTION}` - Description of what's being saved (e.g., "feature analysis", "debug insights", "comparison results")
- `{FILE_NAME}` - Name of the JSON file (e.g., "feature-analysis.json", "debug-synthesis.json")
- `{AGENT_NAME}` - Name of the agent or command creating the analysis
- `{SESSION_ID}` - Actual session identifier format

## Standard Template

```markdown
## Analysis Storage

**Save {OUTPUT_DESCRIPTION} to:**
`.claude/analysis/{ANALYSIS_TYPE}-{SESSION_TYPE}/{FILE_NAME}`

**Standard Structure:**
```json
{
  "timestamp": "2025-01-15T12:00:00Z",
  "agent": "{AGENT_NAME}",
  "target": "$ARGUMENTS",
  "session_id": "{SESSION_ID}",
  "analysis_type": "{ANALYSIS_TYPE}",
  "version": "1.0",
  "analysis": {
    // Analysis-specific content goes here
  }
}
```

**Access Pattern:**
```bash
# View analysis
cat .claude/analysis/{ANALYSIS_TYPE}-{SESSION_TYPE}/{FILE_NAME}

# List all analyses of this type
ls .claude/analysis/{ANALYSIS_TYPE}-*/

# Search analyses by date
ls .claude/analysis/{ANALYSIS_TYPE}-*/ | grep $(date +%Y%m%d)
```

**Integration Examples:**
```javascript
// Save analysis data
const analysisData = {
  timestamp: new Date().toISOString(),
  agent: "{AGENT_NAME}",
  target: "$ARGUMENTS",
  session_id: "{SESSION_ID}",
  analysis_type: "{ANALYSIS_TYPE}",
  version: "1.0",
  analysis: {
    // Agent-specific analysis results
  }
};

// Write to standard location
const analysisPath = `.claude/analysis/{ANALYSIS_TYPE}-{SESSION_TYPE}/{FILE_NAME}`;
await writeFile(analysisPath, JSON.stringify(analysisData, null, 2));
```
```

## Common Template Configurations

### Feature Analysis
```
{ANALYSIS_TYPE} = "feature"
{SESSION_TYPE} = "[feature-name]"
{OUTPUT_DESCRIPTION} = "feature analysis"
{FILE_NAME} = "feature-analysis.json"
{AGENT_NAME} = "new-feature-agent"
{SESSION_ID} = "feature-[feature-name]-[timestamp]"
```

### Debug Analysis
```
{ANALYSIS_TYPE} = "debug"
{SESSION_TYPE} = "[session-id]"
{OUTPUT_DESCRIPTION} = "debug insights"
{FILE_NAME} = "debug-synthesis.json"
{AGENT_NAME} = "debug-synthesis-agent"
{SESSION_ID} = "debug-[session-id]"
```

### Ultra Debug Analysis
```
{ANALYSIS_TYPE} = "ultra-debug"
{SESSION_TYPE} = "[session-id]"
{OUTPUT_DESCRIPTION} = "ultra-comprehensive system analysis"
{FILE_NAME} = "ultra-debug-analysis.json"
{AGENT_NAME} = "ultra-debug-orchestrator"
{SESSION_ID} = "ultra-debug-[session-id]"
```

### Comparison Debug Analysis
```
{ANALYSIS_TYPE} = "comparison-debug"
{SESSION_TYPE} = "[session-id]"
{OUTPUT_DESCRIPTION} = "comparative analysis results"
{FILE_NAME} = "comparison-debug-synthesis.json"
{AGENT_NAME} = "comparison-debug-agent"
{SESSION_ID} = "comparison-debug-[session-id]"
```

## Benefits of Standardization

1. **Consistency**: All commands use the same documentation format
2. **Maintainability**: One template to update affects all commands
3. **Discoverability**: Standard paths and access patterns
4. **Extensibility**: Easy to add new analysis types
5. **Automation**: Consistent structure enables analysis tooling

## Implementation Notes

- Always use the `.claude/analysis/` base directory
- Session IDs should be descriptive and timestamp-based when possible
- JSON structure should include all standard fields
- File names should be descriptive and end with `.json`
- Include bash examples for common access patterns

## Template Validation

When creating new commands, ensure:
- [ ] Uses the standardized template structure
- [ ] Includes all required template variables
- [ ] Provides clear access patterns
- [ ] Includes integration examples
- [ ] Follows naming conventions