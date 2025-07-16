# /save-plan - Save Analysis Plans

## Purpose
Automatically save the most recent analysis, plan, or debug session to the Claude analysis directory for future reference and execution.

## Usage

### Basic Usage
```bash
/save-plan [plan-name]          # Save last generated plan with custom name
/save-plan                      # Save with auto-generated name
```

### Advanced Options
```bash
/save-plan --last               # Save last generated plan
/save-plan --type=feature       # Save feature analysis
/save-plan --type=debug         # Save debug analysis
/save-plan --type=ultra-debug   # Save ultra-debug analysis
/save-plan --session=[id]       # Save specific session
```

## Auto-Save Behavior

### Automatic Saving
Plans are automatically saved when generated:
- **`/new-feature`** → `.claude/analysis/feature-[name]/`
- **`/ultra-debug`** → `.claude/analysis/ultra-debug-[session-id]/`
- **`/understand`** → `.claude/analysis/debug-[session-id]/`

### Manual Save Triggers
- User requests save explicitly
- Plan modifications or updates
- Important milestone reached
- Before starting implementation

## Directory Structure

```
.claude/analysis/
├── feature-[name]/
│   ├── implementation-plan.md
│   ├── research-findings.json
│   ├── database-analysis.json
│   ├── architecture-analysis.json
│   ├── risk-assessment.json
│   └── execution-checklist.md
├── ultra-debug-[session-id]/
│   ├── ultra-solutions-implementation-plan.md
│   ├── root-cause-summary.md
│   ├── mcp-tools-analysis.json
│   └── testing-strategy.md
└── debug-[session-id]/
    ├── debug-analysis.md
    ├── solution-recommendations.md
    └── implementation-steps.md
```

## File Formats

### Implementation Plan (Markdown)
```markdown
# [Plan Name] Implementation Plan
**Date**: [Date]
**Type**: [feature|debug|ultra-debug]
**Status**: [pending|in-progress|completed]

## Executive Summary
[Brief overview of the plan]

## Implementation Roadmap
[Detailed steps with priorities]

## Testing Strategy
[Testing approach and requirements]

## Success Metrics
[How to measure success]
```

### Analysis Data (JSON)
```json
{
  "plan_id": "feature-user-dashboard",
  "created_date": "2025-07-15",
  "type": "feature",
  "status": "pending",
  "priority": "high",
  "agents_used": ["research", "database", "architecture"],
  "implementation_steps": [...],
  "testing_requirements": [...],
  "success_metrics": [...]
}
```

## Integration with Other Commands

### Plan Execution
```bash
/run-plan [plan-name]           # Execute saved plan
/plan-status [plan-name]        # Check implementation progress
```

### Plan Management
```bash
/list-plans                     # Show all saved plans
/archive-plan [plan-name]       # Move completed plans to archive
/compare-plans [plan1] [plan2]  # Compare different approaches
```

## Auto-Save Logic

### Detection Rules
```javascript
function detectPlanType(lastCommand, content) {
  if (lastCommand.startsWith('/new-feature')) return 'feature';
  if (lastCommand.startsWith('/ultra-debug')) return 'ultra-debug';
  if (lastCommand.startsWith('/understand')) return 'debug';
  return 'general';
}

function generatePlanName(type, content) {
  const timestamp = new Date().toISOString().slice(0, 10);
  const description = extractDescription(content);
  return `${type}-${description}-${timestamp}`;
}
```

### Save Triggers
- Plan generation completed
- User requests save
- Before starting implementation
- After significant updates

## Examples

### Save Feature Plan
```bash
/new-feature user authentication system
# Auto-saves to: .claude/analysis/feature-user-authentication-system/

/save-plan auth-system-v2
# Saves to: .claude/analysis/feature-auth-system-v2/
```

### Save Debug Analysis
```bash
/ultra-debug login component
# Auto-saves to: .claude/analysis/ultra-debug-20250715-161915/

/save-plan login-spinner-fix
# Saves to: .claude/analysis/ultra-debug-login-spinner-fix/
```

### Multiple Planning Sessions
```bash
# Day 1: Generate multiple plans
/new-feature user dashboard
/new-feature real-time notifications
/new-feature payment integration

# Day 2: Execute saved plans
/run-plan user-dashboard
/run-plan real-time-notifications
/run-plan payment-integration
```

## Error Handling

### Missing Plan Data
```
❌ ERROR: No recent plan found to save

📋 Available Actions:
├── Generate a new plan: /new-feature [description]
├── Run debug analysis: /ultra-debug [target]
├── List existing plans: /list-plans
└── Check plan status: /plan-status [name]
```

### Duplicate Plan Names
```
⚠️ WARNING: Plan name already exists

📋 Options:
├── Overwrite existing: /save-plan [name] --overwrite
├── Create version: /save-plan [name] --version=2
├── Use different name: /save-plan [new-name]
└── View existing: /run-plan [name]
```

## Success Indicators

### Successful Save
```
✅ PLAN SAVED: feature-user-dashboard

📁 Location: .claude/analysis/feature-user-dashboard/
📋 Files Created:
├── implementation-plan.md
├── research-findings.json
├── database-analysis.json
└── execution-checklist.md

🚀 Next Steps:
├── Review plan: /run-plan user-dashboard
├── Start implementation: /plan-status user-dashboard
└── List all plans: /list-plans
```

### Plan Management
```
📊 PLAN SAVED SUCCESSFULLY

📋 Quick Actions:
├── Execute now: /run-plan [name]
├── Check status: /plan-status [name]
├── View all plans: /list-plans
└── Compare with others: /compare-plans [name] [other]
```

This command enables strategic planning sessions where you can generate multiple plans, save them automatically, and execute them systematically over time.