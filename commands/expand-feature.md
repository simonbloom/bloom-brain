# Expand Feature - Delicate Feature Enhancement & Investigation

Investigate existing features and provide expansion/improvement guidance with interactive planning for: **$ARGUMENTS**

## Orchestration Overview

This command uses specialized subagents to deeply investigate existing features and provide thoughtful expansion recommendations with interactive clarifying questions.

## Subagent Architecture

### Phase 1: Feature Investigation (6-8 minutes)
Four specialized agents run in parallel for comprehensive feature analysis:

- **🔍 Feature Detective Agent**: Maps current feature implementation and code paths
- **🗃️ Database Agent**: Analyzes database schema and extension opportunities  
- **🔬 Research Agent**: Gathers latest best practices and patterns
- **🌐 Browser Agent**: Analyzes current UI/UX state and interactions

### Phase 2: Expansion Planning (4-6 minutes)
Sequential processing for thoughtful expansion guidance:

- **💡 Expansion Strategist Agent**: Synthesizes findings and generates expansion opportunities
- **❓ Interactive Planner Agent**: Creates clarifying questions and suggests improvements

## Execution Strategy

### Automated Orchestration
When you run `/expand-feature [description]`, the system will:

1. **Initialize Feature Analysis Context**
   - Create `.claude/analysis/expand-[feature-name]/` directory
   - Set up shared context store for agent communication
   - Begin parallel investigation execution

2. **Execute Phase 1 Agents (Parallel)**
   ```
   /feature-detective-agent [description] → feature-detective.json
   /db-agent [description] → database-analysis.json
   /research-agent [description] → research-findings.json
   /browser-agent [description] → browser-analysis.json
   ```

3. **Execute Phase 2 Agents (Sequential)**
   ```
   /expansion-strategist-agent [description] → expansion-strategy.json
   /interactive-planner-agent [description] → interactive-plan.json
   ```

4. **Generate Interactive Report**
   - Synthesize all agent outputs
   - Present current feature state
   - Provide expansion opportunities with rationale
   - Ask clarifying questions for user input
   - Suggest improvements user might not have considered

## Manual Agent Execution

You can also run individual agents for focused analysis:

- **`/feature-detective-agent [description]`** - Current feature mapping and code analysis
- **`/db-agent [description]`** - Database schema analysis and extension planning
- **`/research-agent [description]`** - Latest patterns and best practices research
- **`/browser-agent [description]`** - Live UI/UX analysis and interaction testing
- **`/expansion-strategist-agent [description]`** - Expansion planning (requires other agent outputs)
- **`/interactive-planner-agent [description]`** - Questions and suggestions (requires expansion strategy)

## Orchestration Logic

### Context Store Setup
```bash
# Create analysis directory structure
mkdir -p .claude/analysis/expand-[feature-name]
touch .claude/analysis/expand-[feature-name]/analysis-context.json
```

### Analysis Context Structure
```json
{
  "feature_name": "$ARGUMENTS",
  "timestamp": "2025-01-17T12:00:00Z",
  "agents": {
    "feature_detective": { "status": "pending", "output": null },
    "database": { "status": "pending", "output": null },
    "research": { "status": "pending", "output": null },
    "browser": { "status": "pending", "output": null },
    "expansion_strategist": { "status": "pending", "output": null },
    "interactive_planner": { "status": "pending", "output": null }
  },
  "progress": {
    "phase_1_complete": false,
    "phase_2_complete": false,
    "interactive_report_ready": false
  }
}
```

## Execution Flow

#### 1. Initialize Feature Investigation
```
🚀 INITIALIZING FEATURE EXPANSION ANALYSIS: $ARGUMENTS
├── 📁 Creating analysis directory: .claude/analysis/expand-[feature-name]/
├── 📋 Setting up context store: analysis-context.json
├── 🔄 Preparing parallel investigation execution
└── ⏱️ Estimated completion: 10-14 minutes
```

#### 2. Phase 1: Parallel Investigation
```
🔄 PHASE 1: FEATURE INVESTIGATION (Starting...)

┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ 🔍 Feature      │    │ 🗃️ Database     │    │ 🔬 Research     │    │ 🌐 Browser      │
│   Detective     │    │   Agent         │    │   Agent         │    │   Agent         │
│                 │    │                 │    │                 │    │                 │
│ Status: Running │    │ Status: Running │    │ Status: Running │    │ Status: Running │
│ ETA: 2-3 min    │    │ ETA: 1-2 min    │    │ ETA: 2-3 min    │    │ ETA: 1-2 min    │
└─────────────────┘    └─────────────────┘    └─────────────────┘    └─────────────────┘
         │                       │                       │                       │
         ▼                       ▼                       ▼                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ feature-        │    │ database-       │    │ research-       │    │ browser-        │
│ detective.json  │    │ analysis.json   │    │ findings.json   │    │ analysis.json   │
└─────────────────┘    └─────────────────┘    └─────────────────┘    └─────────────────┘
```

#### 3. Phase 2: Expansion Planning
```
🔄 PHASE 2: EXPANSION PLANNING & INTERACTION

┌─────────────────┐    ┌─────────────────┐
│ 💡 Expansion    │───▶│ ❓ Interactive  │
│   Strategist    │    │   Planner       │
│                 │    │                 │
│ Status: Running │    │ Status: Pending │
│ ETA: 2-3 min    │    │ ETA: 2-3 min    │
└─────────────────┘    └─────────────────┘
         │                       │
         ▼                       ▼
┌─────────────────┐    ┌─────────────────┐
│ expansion-      │    │ interactive-    │
│ strategy.json   │    │ plan.json       │
└─────────────────┘    └─────────────────┘
```

#### 4. Interactive Report Generation
```
📊 GENERATING INTERACTIVE EXPANSION REPORT

🔍 Feature Detective Analysis: ✅ Complete
🗃️ Database Extension Analysis: ✅ Complete  
🔬 Research Findings: ✅ Complete
🌐 Browser UI Analysis: ✅ Complete
💡 Expansion Strategy: ✅ Complete
❓ Interactive Planning: ✅ Complete

📋 Creating current state analysis...
📋 Highlighting expansion opportunities...
📋 Generating clarifying questions...
📋 Preparing thoughtful suggestions...

✅ ANALYSIS COMPLETE: feature-expansion-report.md
```

## Progress Tracking

### Real-time Status Updates
```
⏱️ FEATURE EXPANSION PROGRESS: $ARGUMENTS

📊 Overall Progress: [████████░░] 80% Complete
├── 🔍 Feature Detective: ✅ Complete (2.1 min)
├── 🗃️ Database Agent: ✅ Complete (1.3 min)
├── 🔬 Research Agent: ✅ Complete (2.5 min)
├── 🌐 Browser Agent: ✅ Complete (1.8 min)
├── 💡 Expansion Strategist: ✅ Complete (2.2 min)
└── ❓ Interactive Planner: 🔄 In Progress (1.1 min remaining)

📂 Analysis Files Available:
├── ✅ feature-detective.json
├── ✅ database-analysis.json
├── ✅ research-findings.json
├── ✅ browser-analysis.json
├── ✅ expansion-strategy.json
└── ⏳ interactive-plan.json (generating...)
```

## Output Format

### Interactive Expansion Report
```
🎯 FEATURE EXPANSION ANALYSIS: $ARGUMENTS

📊 CURRENT FEATURE STATE:
├── 🔍 Feature Mapping: [feature_completeness]/10
├── 🗃️ Database Schema: [schema_extensibility]/10
├── 🌐 UI/UX Implementation: [ui_quality]/10
├── 📚 Documentation: [documentation_coverage]/10
└── 🔧 Technical Debt: [debt_level]/10

🚀 EXPANSION OPPORTUNITIES:
├── 🏆 HIGH IMPACT / LOW EFFORT:
│   ├── [opportunity_1]: [description] (Impact: [rating], Effort: [rating])
│   ├── [opportunity_2]: [description] (Impact: [rating], Effort: [rating])
│   └── [opportunity_3]: [description] (Impact: [rating], Effort: [rating])
├── 💡 HIGH IMPACT / HIGH EFFORT:
│   ├── [opportunity_4]: [description] (Impact: [rating], Effort: [rating])
│   └── [opportunity_5]: [description] (Impact: [rating], Effort: [rating])
└── 🔧 TECHNICAL IMPROVEMENTS:
    ├── [improvement_1]: [description]
    ├── [improvement_2]: [description]
    └── [improvement_3]: [description]

❓ CLARIFYING QUESTIONS:
├── 🎯 Scope Questions:
│   ├── [question_1]: [rationale]
│   ├── [question_2]: [rationale]
│   └── [question_3]: [rationale]
├── 🔧 Technical Questions:
│   ├── [question_4]: [rationale]
│   └── [question_5]: [rationale]
└── 🎨 User Experience Questions:
    ├── [question_6]: [rationale]
    └── [question_7]: [rationale]

💡 AI SUGGESTIONS (You might not have considered):
├── 🌟 [suggestion_1]: [description] - [why_valuable]
├── 🌟 [suggestion_2]: [description] - [why_valuable]
├── 🌟 [suggestion_3]: [description] - [why_valuable]
└── 🌟 [suggestion_4]: [description] - [why_valuable]

⚠️ RISK ASSESSMENT:
├── 🚨 HIGH RISK AREAS:
│   ├── [risk_1]: [description] - [mitigation_strategy]
│   └── [risk_2]: [description] - [mitigation_strategy]
├── ⚠️ MEDIUM RISK AREAS:
│   ├── [risk_3]: [description] - [mitigation_strategy]
│   └── [risk_4]: [description] - [mitigation_strategy]
└── 🔒 WHAT NOT TO BREAK:
    ├── [critical_component_1]: [why_critical]
    ├── [critical_component_2]: [why_critical]
    └── [critical_component_3]: [why_critical]

🗺️ DELICATE IMPLEMENTATION ROADMAP:
├── 🥇 PHASE 1 (Safe Foundation):
│   ├── [step_1]: [description] - [safety_rationale]
│   ├── [step_2]: [description] - [safety_rationale]
│   └── [step_3]: [description] - [safety_rationale]
├── 🥈 PHASE 2 (Careful Enhancement):
│   ├── [step_4]: [description] - [safety_rationale]
│   ├── [step_5]: [description] - [safety_rationale]
│   └── [step_6]: [description] - [safety_rationale]
└── 🥉 PHASE 3 (Advanced Features):
    ├── [step_7]: [description] - [safety_rationale]
    ├── [step_8]: [description] - [safety_rationale]
    └── [step_9]: [description] - [safety_rationale]

🎯 NEXT STEPS:
├── 📋 Please answer the clarifying questions above
├── 🤔 Review the AI suggestions and let me know which interest you
├── 🎯 Choose your preferred expansion opportunities
└── 🚀 I'll create a detailed implementation plan based on your choices
```

## Analysis Storage

**Save feature expansion analysis to:**
`.claude/analysis/expand-[feature-name]/expansion-analysis.json`

**Standard Structure:**
```json
{
  "timestamp": "2025-01-17T12:00:00Z",
  "agent": "expand-feature-orchestrator",
  "target": "$ARGUMENTS",
  "session_id": "expand-[feature-name]-[timestamp]",
  "analysis_type": "feature_expansion",
  "version": "1.0",
  "analysis": {
    "feature_detective": {},
    "database_analysis": {},
    "research_findings": {},
    "browser_analysis": {},
    "expansion_strategy": {},
    "interactive_plan": {}
  }
}
```

**Access Pattern:**
```bash
# View expansion analysis
cat .claude/analysis/expand-[feature-name]/expansion-analysis.json

# List all expansion analyses
ls .claude/analysis/expand-*/

# Search analyses by date
ls .claude/analysis/expand-*/ | grep $(date +%Y%m%d)
```

### Individual Agent Access
You can access individual agent outputs at any time:
- `cat .claude/analysis/expand-[feature-name]/feature-detective.json`
- `cat .claude/analysis/expand-[feature-name]/database-analysis.json`
- `cat .claude/analysis/expand-[feature-name]/research-findings.json`
- `cat .claude/analysis/expand-[feature-name]/browser-analysis.json`
- `cat .claude/analysis/expand-[feature-name]/expansion-strategy.json`
- `cat .claude/analysis/expand-[feature-name]/interactive-plan.json`

## Benefits

### Context Window Optimization
- **60-80% reduction** in context usage per agent
- **Parallel processing** reduces total analysis time
- **Focused expertise** improves analysis quality
- **Delicate approach** prevents breaking existing functionality

### Interactive Planning
- **Clarifying questions** ensure proper scope understanding
- **AI suggestions** surface opportunities you might miss
- **Risk assessment** identifies what not to break
- **Delicate roadmap** provides safe implementation path

### Quality Enhancements
- **Existing feature mapping** provides complete current state
- **Database-first approach** ensures data integrity
- **Research-backed suggestions** leverage latest patterns
- **Live UI analysis** validates current user experience

## Usage Examples

### General Feature Expansion
```bash
/expand-feature user authentication system
```

### Specific Feature Enhancement
```bash
/expand-feature messaging feature real-time notifications
```

### UI/UX Focused Expansion
```bash
/expand-feature dashboard improve user experience
```

### Performance Focused Expansion
```bash
/expand-feature search functionality optimize performance
```

## Success Criteria

The expand-feature command should provide:
- **Complete current state mapping** of existing feature
- **Thoughtful expansion opportunities** with clear rationale
- **Interactive clarifying questions** for proper scope
- **AI-generated suggestions** for missed opportunities
- **Risk-aware implementation** that preserves working functionality
- **Delicate roadmap** for safe feature enhancement

**Total Time:** 10-14 minutes for comprehensive analysis and planning
**Context Efficiency:** 60-80% improvement over monolithic approach
**Interactivity:** Complete question-answer cycle with user guidance
**Safety:** Delicate approach that preserves existing functionality

Target Analysis: $ARGUMENTS