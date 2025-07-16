# New Feature Impact Analysis - Orchestration Command

Perform a comprehensive analysis of the current codebase to understand what exists and plan the implementation of: **$ARGUMENTS**

## Orchestration Overview

This command coordinates specialized subagents to provide comprehensive feature analysis with optimized context windows and parallel processing.

## Subagent Architecture

### Phase 1: Parallel Analysis (2-3 minutes)
- **🔍 Research Agent**: External best practices and latest patterns
- **🗃️ Database Agent**: Schema analysis and extension planning  
- **🏗️ Architecture Agent**: System architecture and integration points

### Phase 2: Synthesis & Planning (3-4 minutes)
- **⚠️ Risk Agent**: Risk assessment and mitigation strategies
- **🗺️ Planning Agent**: Implementation roadmap and resource planning

## Execution Strategy

### Automated Orchestration
When you run `/new-feature [description]`, the system will:

1. **Initialize Analysis Context**
   - Create `.claude/analysis/[feature-name]/` directory
   - Set up shared context store for agent communication
   - Begin parallel agent execution

2. **Execute Phase 1 Agents (Parallel)**
   ```
   /research-agent [description] → research-findings.json
   /db-agent [description] → database-analysis.json
   /arch-agent [description] → architecture-analysis.json
   ```

3. **Execute Phase 2 Agents (Sequential)**
   ```
   /risk-agent [description] → risk-analysis.json
   /plan-agent [description] → implementation-plan.json
   ```

4. **Generate Consolidated Report**
   - Synthesize all agent outputs
   - Create executive summary
   - Provide actionable recommendations

## Manual Agent Execution

You can also run individual agents for focused analysis:

- **`/research-agent [description]`** - Latest patterns and best practices
- **`/db-agent [description]`** - Database schema analysis
- **`/arch-agent [description]`** - Architecture and integration analysis
- **`/risk-agent [description]`** - Risk assessment (requires other agent outputs)
- **`/plan-agent [description]`** - Implementation planning (requires other agent outputs)

## Orchestration Logic

### Context Store Setup
```bash
# Create analysis directory structure
mkdir -p .claude/analysis/[feature-name]
touch .claude/analysis/[feature-name]/analysis-context.json
```

### Analysis Context Structure
```json
{
  "feature_name": "$ARGUMENTS",
  "timestamp": "2025-01-14T12:00:00Z",
  "agents": {
    "research": { "status": "pending", "output": null },
    "database": { "status": "pending", "output": null },
    "architecture": { "status": "pending", "output": null },
    "risk": { "status": "pending", "output": null },
    "planning": { "status": "pending", "output": null }
  },
  "progress": {
    "phase_1_complete": false,
    "phase_2_complete": false,
    "final_report_ready": false
  }
}
```

### Execution Flow

#### 1. Initialize Analysis
```
🚀 INITIALIZING FEATURE ANALYSIS: $ARGUMENTS
├── 📁 Creating analysis directory: .claude/analysis/[feature-name]/
├── 📋 Setting up context store: analysis-context.json
├── 🔄 Preparing parallel agent execution
└── ⏱️ Estimated completion: 8-10 minutes
```

#### 2. Phase 1: Parallel Agent Execution
```
🔄 PHASE 1: PARALLEL ANALYSIS (Starting...)

┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ 🔍 Research     │    │ 🗃️ Database     │    │ 🏗️ Architecture │
│   Agent         │    │   Agent         │    │   Agent         │
│                 │    │                 │    │                 │
│ Status: Running │    │ Status: Running │    │ Status: Running │
│ ETA: 2-3 min    │    │ ETA: 1-2 min    │    │ ETA: 2-3 min    │
└─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │
         ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ research-       │    │ database-       │    │ architecture-   │
│ findings.json   │    │ analysis.json   │    │ analysis.json   │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

#### 3. Phase 2: Sequential Synthesis
```
🔄 PHASE 2: SYNTHESIS & PLANNING

┌─────────────────┐    ┌─────────────────┐
│ ⚠️ Risk Agent   │───▶│ 🗺️ Planning     │
│                 │    │   Agent         │
│ Status: Running │    │ Status: Pending │
│ ETA: 2-3 min    │    │ ETA: 3-4 min    │
└─────────────────┘    └─────────────────┘
         │                       │
         ▼                       ▼
┌─────────────────┐    ┌─────────────────┐
│ risk-           │    │ implementation- │
│ analysis.json   │    │ plan.json       │
└─────────────────┘    └─────────────────┘
```

#### 4. Final Report Generation
```
📊 GENERATING CONSOLIDATED REPORT

🔍 Research Findings: ✅ Complete
🗃️ Database Analysis: ✅ Complete
🏗️ Architecture Analysis: ✅ Complete
⚠️ Risk Assessment: ✅ Complete
🗺️ Implementation Plan: ✅ Complete

📋 Creating executive summary...
📋 Highlighting key recommendations...
📋 Finalizing action items...

✅ ANALYSIS COMPLETE: feature-analysis-report.md
```

## Progress Tracking

### Real-time Status Updates
```
⏱️ FEATURE ANALYSIS PROGRESS: $ARGUMENTS

📊 Overall Progress: [████████░░] 80% Complete
├── 🔍 Research Agent: ✅ Complete (2.3 min)
├── 🗃️ Database Agent: ✅ Complete (1.8 min)
├── 🏗️ Architecture Agent: ✅ Complete (2.1 min)
├── ⚠️ Risk Agent: ✅ Complete (2.7 min)
└── 🗺️ Planning Agent: 🔄 In Progress (1.2 min remaining)

📂 Outputs Available:
├── ✅ research-findings.json
├── ✅ database-analysis.json
├── ✅ architecture-analysis.json
├── ✅ risk-analysis.json
└── ⏳ implementation-plan.json (generating...)
```

## Output Format

### Executive Summary
```
🎯 FEATURE ANALYSIS SUMMARY: $ARGUMENTS

📊 FEASIBILITY ASSESSMENT:
├── 💡 Innovation Level: [rating]/10
├── 🔧 Technical Complexity: [rating]/10
├── ⚠️ Risk Level: [rating]/10
├── 💰 Implementation Cost: [estimate]
└── 📈 Success Probability: [percentage]%

🏆 RECOMMENDATION: [GO/NO-GO/MODIFY]

🔑 KEY FINDINGS:
├── 🔍 Research: [key_insight]
├── 🗃️ Database: [key_insight]
├── 🏗️ Architecture: [key_insight]
├── ⚠️ Risk: [key_insight]
└── 🗺️ Planning: [key_insight]

📋 NEXT STEPS:
1. [action_item]
2. [action_item]
3. [action_item]
```

### Individual Agent Access
You can access individual agent outputs at any time:
- `cat .claude/analysis/[feature-name]/research-findings.json`
- `cat .claude/analysis/[feature-name]/database-analysis.json`
- `cat .claude/analysis/[feature-name]/architecture-analysis.json`
- `cat .claude/analysis/[feature-name]/risk-analysis.json`
- `cat .claude/analysis/[feature-name]/implementation-plan.json`

## Benefits

### Context Window Optimization
- **60-80% reduction** in context usage per agent
- **Parallel processing** reduces total analysis time
- **Focused expertise** improves analysis quality

### Speed Improvements
- **Phase 1**: 3 agents run in parallel (2-3 minutes total)
- **Phase 2**: 2 agents run sequentially (5-7 minutes total)
- **Total Time**: 8-10 minutes vs 15-20 minutes monolithic

### Quality Enhancements
- **Specialized agents** provide deeper expertise
- **MCP integration** ensures latest information
- **Risk-first approach** prevents costly mistakes
- **Actionable outputs** ready for implementation

## Usage Examples

### Full Analysis
```bash
/new-feature user dashboard with real-time metrics
```

### Individual Agent Analysis
```bash
/research-agent Next.js dashboard implementation
/db-agent dashboard metrics storage
/arch-agent dashboard integration points
```

### Progress Monitoring
```bash
# Check current analysis status
cat .claude/analysis/user-dashboard/analysis-context.json

# View specific agent output
cat .claude/analysis/user-dashboard/research-findings.json
```