# Analysis Progress Tracker

Monitor the progress of feature analysis and view incremental results for: **$ARGUMENTS**

## Purpose
This command provides real-time progress tracking for feature analysis, showing:
- Overall progress and completion status
- Individual agent status and timing
- Incremental results as they become available
- Estimated completion times

## Usage

### Check Overall Progress
```bash
/analysis-progress [feature-name]
```

### Monitor Specific Agent
```bash
/analysis-progress [feature-name] --agent=[agent-name]
```

### View Available Results
```bash
/analysis-progress [feature-name] --results
```

## Output Format

### Overall Progress View
```
⏱️ FEATURE ANALYSIS PROGRESS: {{FEATURE_NAME}}

📊 Overall Progress: [████████░░] {{PROGRESS}}% Complete
├── 🔍 Research Agent: {{RESEARCH_STATUS}} ({{RESEARCH_TIME}})
├── 🗃️ Database Agent: {{DATABASE_STATUS}} ({{DATABASE_TIME}})
├── 🏗️ Architecture Agent: {{ARCHITECTURE_STATUS}} ({{ARCHITECTURE_TIME}})
├── ⚠️ Risk Agent: {{RISK_STATUS}} ({{RISK_TIME}})
└── 🗺️ Planning Agent: {{PLANNING_STATUS}} ({{PLANNING_TIME}})

📂 Current Status: {{CURRENT_PHASE}}
⏳ Estimated Completion: {{ETA}}

📋 Available Results:
├── {{RESEARCH_RESULT_STATUS}} research-findings.json
├── {{DATABASE_RESULT_STATUS}} database-analysis.json  
├── {{ARCHITECTURE_RESULT_STATUS}} architecture-analysis.json
├── {{RISK_RESULT_STATUS}} risk-analysis.json
└── {{PLANNING_RESULT_STATUS}} implementation-plan.json
```

### Individual Agent Progress
```
🔍 RESEARCH AGENT PROGRESS: {{FEATURE_NAME}}

📊 Status: {{AGENT_STATUS}}
⏱️ Duration: {{AGENT_DURATION}}
📋 Current Task: {{CURRENT_TASK}}

🔧 MCP Tools Used:
├── ✅ Context.7: {{CONTEXT7_STATUS}}
├── ✅ Brave Search: {{BRAVE_SEARCH_STATUS}}
└── ⏳ Web Research: {{WEB_RESEARCH_STATUS}}

📊 Progress Breakdown:
├── [████████░░] Technology Research: 80%
├── [██████░░░░] Best Practices: 60%
├── [███████░░░] Security Analysis: 70%
└── [█████░░░░░] Performance Patterns: 50%

📋 Key Findings So Far:
├── {{FINDING_1}}
├── {{FINDING_2}}
└── {{FINDING_3}}
```

### Results Summary View
```
📊 AVAILABLE RESULTS: {{FEATURE_NAME}}

🔍 RESEARCH FINDINGS ({{RESEARCH_COMPLETION_TIME}}):
├── Latest patterns: {{RESEARCH_PATTERNS}}
├── Security considerations: {{RESEARCH_SECURITY}}
├── Performance recommendations: {{RESEARCH_PERFORMANCE}}
└── Implementation approach: {{RESEARCH_APPROACH}}

🗃️ DATABASE ANALYSIS ({{DATABASE_COMPLETION_TIME}}):
├── Current schema: {{DATABASE_CURRENT}}
├── Required changes: {{DATABASE_CHANGES}}
├── Migration strategy: {{DATABASE_MIGRATION}}
└── Risk assessment: {{DATABASE_RISKS}}

🏗️ ARCHITECTURE ANALYSIS ({{ARCHITECTURE_COMPLETION_TIME}}):
├── Integration points: {{ARCHITECTURE_INTEGRATION}}
├── Component impact: {{ARCHITECTURE_IMPACT}}
├── System dependencies: {{ARCHITECTURE_DEPENDENCIES}}
└── Implementation strategy: {{ARCHITECTURE_STRATEGY}}

⚠️ RISK ANALYSIS ({{RISK_COMPLETION_TIME}}):
├── High risks: {{RISK_HIGH_COUNT}} items
├── Medium risks: {{RISK_MEDIUM_COUNT}} items
├── Low risks: {{RISK_LOW_COUNT}} items
└── Overall risk score: {{RISK_SCORE}}/10

🗺️ IMPLEMENTATION PLAN ({{PLANNING_COMPLETION_TIME}}):
├── Timeline: {{PLANNING_TIMELINE}}
├── Resource requirements: {{PLANNING_RESOURCES}}
├── Success probability: {{PLANNING_SUCCESS}}%
└── Recommendation: {{PLANNING_RECOMMENDATION}}
```

## Progress Tracking Logic

### Phase Detection
```javascript
function detectCurrentPhase(context) {
  const agents = context.agents;
  
  // Phase 1: Parallel agents (research, database, architecture)
  if (!context.progress.phase_1_complete) {
    const phase1Agents = ['research', 'database', 'architecture'];
    const completed = phase1Agents.filter(agent => agents[agent].status === 'completed');
    const inProgress = phase1Agents.filter(agent => agents[agent].status === 'in_progress');
    
    if (completed.length === 3) {
      context.progress.phase_1_complete = true;
      return 'Phase 1 Complete - Starting Phase 2';
    } else if (inProgress.length > 0) {
      return `Phase 1 In Progress - ${inProgress.length} agents running`;
    } else {
      return 'Phase 1 Starting';
    }
  }
  
  // Phase 2: Sequential agents (risk, planning)
  if (!context.progress.phase_2_complete) {
    if (agents.risk.status === 'completed' && agents.planning.status === 'completed') {
      context.progress.phase_2_complete = true;
      return 'Phase 2 Complete - Generating Report';
    } else if (agents.risk.status === 'in_progress') {
      return 'Phase 2 In Progress - Risk Analysis';
    } else if (agents.planning.status === 'in_progress') {
      return 'Phase 2 In Progress - Implementation Planning';
    } else {
      return 'Phase 2 Starting';
    }
  }
  
  // Final phase: Report generation
  if (!context.progress.final_report_ready) {
    return 'Generating Consolidated Report';
  }
  
  return 'Analysis Complete';
}
```

### Progress Calculation
```javascript
function calculateProgress(context) {
  const agents = context.agents;
  const totalAgents = Object.keys(agents).length;
  const completedAgents = Object.values(agents).filter(agent => agent.status === 'completed').length;
  const inProgressAgents = Object.values(agents).filter(agent => agent.status === 'in_progress').length;
  
  // Base progress from completed agents
  let progress = (completedAgents / totalAgents) * 100;
  
  // Add partial progress for in-progress agents
  progress += (inProgressAgents / totalAgents) * 50; // 50% credit for in-progress
  
  return Math.round(progress);
}
```

### Status Icons
```javascript
function getStatusIcon(status) {
  const icons = {
    'pending': '⏳',
    'in_progress': '🔄',
    'completed': '✅',
    'failed': '❌',
    'skipped': '⏭️'
  };
  return icons[status] || '❓';
}
```

## Interactive Features

### Live Updates
- Real-time progress tracking
- Automatic refresh when agents complete
- Status change notifications

### Drill-down Capability
- Click on agent names to see detailed progress
- View partial results as they become available
- Monitor MCP tool usage and performance

### Results Preview
- Preview key findings before full completion
- Access individual agent outputs immediately
- Build understanding incrementally

## Error Handling

### Agent Failures
```
❌ AGENT FAILURE: Research Agent

📋 Error Details:
├── Error Type: {{ERROR_TYPE}}
├── Error Message: {{ERROR_MESSAGE}}
├── Timestamp: {{ERROR_TIMESTAMP}}
└── Retry Available: {{RETRY_AVAILABLE}}

🔧 Suggested Actions:
├── 1. Check MCP server connectivity
├── 2. Retry with reduced scope
├── 3. Continue with available results
└── 4. Manual intervention required
```

### Recovery Options
```
🔄 RECOVERY OPTIONS: {{FEATURE_NAME}}

📋 Available Actions:
├── 1. Retry failed agent: /research-agent {{FEATURE_NAME}}
├── 2. Skip failed agent: /analysis-progress {{FEATURE_NAME}} --skip=research
├── 3. Continue with partial results: /analysis-progress {{FEATURE_NAME}} --continue
└── 4. Reset and restart: /new-feature {{FEATURE_NAME}} --reset
```

## Performance Metrics

### Timing Analysis
```
⏱️ PERFORMANCE METRICS: {{FEATURE_NAME}}

📊 Agent Performance:
├── 🔍 Research Agent: {{RESEARCH_DURATION}} (Target: 2-3 min)
├── 🗃️ Database Agent: {{DATABASE_DURATION}} (Target: 1-2 min)
├── 🏗️ Architecture Agent: {{ARCHITECTURE_DURATION}} (Target: 2-3 min)
├── ⚠️ Risk Agent: {{RISK_DURATION}} (Target: 2-3 min)
└── 🗺️ Planning Agent: {{PLANNING_DURATION}} (Target: 3-4 min)

📈 Optimization Metrics:
├── Context window usage: {{CONTEXT_USAGE}}% (Target: <40%)
├── Parallel efficiency: {{PARALLEL_EFFICIENCY}}% (Target: >80%)
├── Total analysis time: {{TOTAL_TIME}} (Target: <10 min)
└── Speed improvement: {{SPEED_IMPROVEMENT}}% vs monolithic
```

## Success Criteria

Progress tracking should provide:
- **Real-time visibility** into analysis progress
- **Incremental results** as agents complete
- **Error handling** with recovery options
- **Performance monitoring** for optimization
- **User-friendly interface** for monitoring

**Update Frequency**: Every 30 seconds during active analysis
**Result Availability**: Immediate access to completed agent outputs
**Error Recovery**: Automatic retry with fallback options