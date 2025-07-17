# Comparison Debug - Stubborn Functionality Analysis

Specialized debugging command for stubborn functionality where similar features work/don't work, using multi-agent comparative analysis for: **$ARGUMENTS**

## Command Purpose
This command is designed for those frustrating situations where you have similar functionality but can't figure out why one works and another doesn't. It deploys 5 specialized agents to perform deep comparative analysis and provide evidence-based failure reasons.

## Problem Statement
**Background:** You have two similar features/components - one working, one failing
**Challenge:** Traditional debugging hasn't revealed the root cause
**Solution:** Multi-agent comparative analysis with evidence-based ranking

## Agent Architecture

This command orchestrates **5 specialized agents** to provide comprehensive comparative analysis:

### Phase 1: Parallel Analysis (4-6 minutes)
1. **Code Comparison Agent** - Structural differences analysis
2. **Data Flow Analysis Agent** - Request/response pattern tracing
3. **Error Pattern Investigation Agent** - Failure mode examination
4. **Best Practices Research Agent** - Optimal implementation investigation
5. **Fresh Implementation Agent** - From-scratch design approach

### Phase 2: Synthesis & Consensus (2-3 minutes)
6. **Comparison Synthesis Agent** - Multi-agent consensus and evidence ranking

## Execution Strategy

### Automated Orchestration
When you run `/comparison-debug [working feature] vs [failing feature]`, the system will:

1. **Initialize Comparison Context**
   - Create `.claude/analysis/comparison-debug-[session-id]/` directory
   - Set up shared context store for agent communication
   - Begin parallel agent execution

2. **Execute Phase 1 Agents (Parallel)**
   ```
   /code-comparison-agent [args] → code-comparison-analysis.json
   /data-flow-analysis-agent [args] → data-flow-analysis.json
   /error-pattern-agent [args] → error-pattern-analysis.json
   /best-practices-agent [args] → best-practices-analysis.json
   /fresh-implementation-agent [args] → fresh-implementation-analysis.json
   ```

3. **Execute Phase 2 Synthesis (Sequential)**
   ```
   /comparison-synthesis-agent [args] → comparison-synthesis.json
   ```

4. **Generate Consolidated Report**
   - Synthesize all agent outputs
   - Create comparative analysis
   - Provide evidence-based failure ranking

## Analysis Process

```
🔄 COMPARISON DEBUG WORKFLOW for: $ARGUMENTS
├── 📋 PHASE 1: PARALLEL ANALYSIS (4-6 min)
│   ├── 🔍 Code Comparison Agent: Structural differences
│   ├── 📊 Data Flow Analysis Agent: Request/response patterns
│   ├── 🚨 Error Pattern Agent: Failure mode examination
│   ├── 📚 Best Practices Agent: Optimal implementations
│   └── 🆕 Fresh Implementation Agent: From-scratch design
├── 📊 PHASE 2: SYNTHESIS & CONSENSUS (2-3 min)
│   └── 🎯 Comparison Synthesis Agent: Evidence ranking
└── 📋 FINAL REPORT: Top 3 failure reasons with evidence
```

## Output Format

```
🔍 COMPARISON DEBUG ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Analysis Type: Multi-Agent Comparative Analysis
Total Agents: 5
Session ID: [session-id]

🎯 ANALYSIS OVERVIEW:
├── 📊 Working Feature: [working_feature]
├── 🚨 Failing Feature: [failing_feature]
├── 🔍 Comparison Points: [comparison_points]
├── 📈 Evidence Strength: [evidence_strength]/10
└── ⏱️ Analysis Duration: [analysis_duration]

🔴 TOP 3 MOST LIKELY FAILURE REASONS:

┌─────────────────────────────────────────────────────────────────────────────┐
│                               FAILURE REASON #1                            │
├─────────────────────────────────────────────────────────────────────────────┤
│ Probability: [probability_1]% (Based on [evidence_sources_1])              │
│ Category: [failure_category_1]                                             │
│ Impact: [impact_level_1]                                                   │
└─────────────────────────────────────────────────────────────────────────────┘

🔍 ROOT CAUSE ANALYSIS:
├── Issue: [root_cause_1]
├── Evidence: [evidence_description_1]
├── Supporting Data: [supporting_data_1]
└── Confidence Level: [confidence_level_1]/10

🔄 COMPARATIVE ANALYSIS:
├── Working Implementation:
│   ├── Code Path: [working_code_path_1]
│   ├── Data Flow: [working_data_flow_1]
│   ├── Key Differences: [working_differences_1]
│   └── Success Factors: [success_factors_1]
├── Failing Implementation:
│   ├── Code Path: [failing_code_path_1]
│   ├── Data Flow: [failing_data_flow_1]
│   ├── Key Issues: [failing_issues_1]
│   └── Blocking Factors: [blocking_factors_1]
└── Divergence Point: [divergence_point_1]

🛠️ RECOMMENDED SOLUTION:
├── Fix Strategy: [fix_strategy_1]
├── Implementation: [implementation_1]
├── Testing: [testing_approach_1]
└── Validation: [validation_method_1]

💻 CODE IMPLEMENTATION:
```javascript
// [code_fix_description_1]
[code_fix_example_1]
```

📊 EVIDENCE BREAKDOWN:
├── Code Analysis: [code_evidence_1]
├── Data Flow: [data_flow_evidence_1]
├── Error Patterns: [error_pattern_evidence_1]
├── Best Practices: [best_practices_evidence_1]
└── Fresh Perspective: [fresh_perspective_evidence_1]

┌─────────────────────────────────────────────────────────────────────────────┐
│                               FAILURE REASON #2                            │
├─────────────────────────────────────────────────────────────────────────────┤
│ Probability: [probability_2]% (Based on [evidence_sources_2])              │
│ Category: [failure_category_2]                                             │
│ Impact: [impact_level_2]                                                   │
└─────────────────────────────────────────────────────────────────────────────┘

[Similar detailed structure for each failure reason...]

┌─────────────────────────────────────────────────────────────────────────────┐
│                               FAILURE REASON #3                            │
├─────────────────────────────────────────────────────────────────────────────┤
│ Probability: [probability_3]% (Based on [evidence_sources_3])              │
│ Category: [failure_category_3]                                             │
│ Impact: [impact_level_3]                                                   │
└─────────────────────────────────────────────────────────────────────────────┘

[Similar detailed structure for failure reason #3...]

🔄 COMPARATIVE EXECUTION FLOW:

┌─────────────────────────────────────────────────────────────────────────────┐
│                           EXECUTION FLOW COMPARISON                        │
├─────────────────────────────────────────────────────────────────────────────┤
│ WORKING FEATURE FLOW:                                                      │
│ User Action → [step_1] → [step_2] → [step_3] → SUCCESS                    │
│      │           │         │         │           │                        │
│      ✓           ✓         ✓         ✓           ✓                        │
│                                                                             │
│ FAILING FEATURE FLOW:                                                      │
│ User Action → [step_1] → [step_2] → [step_3] → FAILURE                    │
│      │           │         │         │           │                        │
│      ✓           ✓         ✗         ✗           ✗                        │
│                            │                                               │
│                      DIVERGENCE POINT                                      │
│                                                                             │
│ ANALYSIS:                                                                   │
│ • Steps 1-2: Identical behavior                                           │
│ • Step 3: [divergence_description]                                        │
│ • Root Cause: [root_cause_summary]                                        │
│ • Fix Target: [fix_target_location]                                       │
└─────────────────────────────────────────────────────────────────────────────┘

📊 MULTI-AGENT CONSENSUS MATRIX:

┌─────────────────────────────────────────────────────────────────────────────┐
│                            AGENT CONSENSUS ANALYSIS                        │
├─────────────────────────────────────────────────────────────────────────────┤
│ FAILURE REASON #1: [failure_reason_1]                                     │
│ ├── Code Comparison Agent: [agent_1_verdict_1] ([confidence_1]/10)        │
│ ├── Data Flow Agent: [agent_2_verdict_1] ([confidence_2]/10)              │
│ ├── Error Pattern Agent: [agent_3_verdict_1] ([confidence_3]/10)          │
│ ├── Best Practices Agent: [agent_4_verdict_1] ([confidence_4]/10)         │
│ └── Fresh Implementation Agent: [agent_5_verdict_1] ([confidence_5]/10)   │
│                                                                             │
│ CONSENSUS STRENGTH: [consensus_strength_1]/10                             │
│ EVIDENCE QUALITY: [evidence_quality_1]/10                                 │
│ IMPLEMENTATION FEASIBILITY: [implementation_feasibility_1]/10              │
└─────────────────────────────────────────────────────────────────────────────┘

🎯 MULTI-AGENT CONTRIBUTION ANALYSIS:
├── 🔍 CODE COMPARISON AGENT FINDINGS:
│   ├── Structural Differences: [structural_differences_count]
│   ├── Logic Variations: [logic_variations_count]
│   ├── Data Handling: [data_handling_differences]
│   └── Key Insights: [code_comparison_insights]
├── 📊 DATA FLOW ANALYSIS AGENT FINDINGS:
│   ├── Request Patterns: [request_pattern_differences]
│   ├── Response Handling: [response_handling_differences]
│   ├── State Management: [state_management_differences]
│   └── Key Insights: [data_flow_insights]
├── 🚨 ERROR PATTERN INVESTIGATION AGENT FINDINGS:
│   ├── Error Types: [error_type_analysis]
│   ├── Failure Modes: [failure_mode_analysis]
│   ├── Exception Handling: [exception_handling_analysis]
│   └── Key Insights: [error_pattern_insights]
├── 📚 BEST PRACTICES RESEARCH AGENT FINDINGS:
│   ├── Industry Standards: [industry_standards_comparison]
│   ├── Optimal Patterns: [optimal_patterns_identified]
│   ├── Common Pitfalls: [common_pitfalls_identified]
│   └── Key Insights: [best_practices_insights]
├── 🆕 FRESH IMPLEMENTATION AGENT FINDINGS:
│   ├── Modern Approaches: [modern_approaches_identified]
│   ├── Architecture Alternatives: [architecture_alternatives]
│   ├── Performance Optimizations: [performance_optimizations]
│   └── Key Insights: [fresh_implementation_insights]
└── 🎯 SYNTHESIS INSIGHTS:
    ├── Cross-Agent Correlations: [cross_agent_correlations]
    ├── Consensus Points: [consensus_points]
    ├── Conflicting Evidence: [conflicting_evidence]
    └── Final Recommendations: [final_recommendations]

📈 IMPLEMENTATION ROADMAP:

┌─────────────────────────────────────────────────────────────────────────────┐
│                              IMPLEMENTATION TIMELINE                       │
├─────────────────────────────────────────────────────────────────────────────┤
│ IMMEDIATE (Today): Critical Fix                                            │
│ ├── [immediate_action_1]: [immediate_description_1]                       │
│ ├── [immediate_action_2]: [immediate_description_2]                       │
│ └── [immediate_action_3]: [immediate_description_3]                       │
│                                                                             │
│ SHORT-TERM (This Week): Validation & Testing                               │
│ ├── [short_term_action_1]: [short_term_description_1]                     │
│ ├── [short_term_action_2]: [short_term_description_2]                     │
│ └── [short_term_action_3]: [short_term_description_3]                     │
│                                                                             │
│ MEDIUM-TERM (Next Week): Enhancement & Optimization                        │
│ ├── [medium_term_action_1]: [medium_term_description_1]                   │
│ ├── [medium_term_action_2]: [medium_term_description_2]                   │
│ └── [medium_term_action_3]: [medium_term_description_3]                   │
└─────────────────────────────────────────────────────────────────────────────┘

🔧 STEP-BY-STEP IMPLEMENTATION GUIDE:

├── 📋 PREPARATION PHASE:
│   ├── [prep_step_1]: [prep_description_1]
│   │   ├── Duration: [prep_duration_1]
│   │   ├── Prerequisites: [prep_prerequisites_1]
│   │   └── Success Criteria: [prep_success_1]
│   └── [prep_step_2]: [prep_description_2]
│       ├── Duration: [prep_duration_2]
│       ├── Prerequisites: [prep_prerequisites_2]
│       └── Success Criteria: [prep_success_2]
├── 🛠️ IMPLEMENTATION PHASE:
│   ├── [impl_step_1]: [impl_description_1]
│   │   ├── Code Changes: [impl_code_changes_1]
│   │   ├── Testing: [impl_testing_1]
│   │   └── Validation: [impl_validation_1]
│   ├── [impl_step_2]: [impl_description_2]
│   │   ├── Code Changes: [impl_code_changes_2]
│   │   ├── Testing: [impl_testing_2]
│   │   └── Validation: [impl_validation_2]
│   └── [impl_step_3]: [impl_description_3]
│       ├── Code Changes: [impl_code_changes_3]
│       ├── Testing: [impl_testing_3]
│       └── Validation: [impl_validation_3]
├── 📊 VALIDATION PHASE:
│   ├── [validation_step_1]: [validation_description_1]
│   ├── [validation_step_2]: [validation_description_2]
│   └── [validation_step_3]: [validation_description_3]
└── 🎯 SUCCESS CONFIRMATION:
    ├── [success_criterion_1]: [success_description_1]
    ├── [success_criterion_2]: [success_description_2]
    └── [success_criterion_3]: [success_description_3]

🧪 TESTING STRATEGY:
├── 🔧 UNIT TESTING:
│   ├── [unit_test_1]: [unit_test_description_1]
│   ├── [unit_test_2]: [unit_test_description_2]
│   └── [unit_test_3]: [unit_test_description_3]
├── 🔗 INTEGRATION TESTING:
│   ├── [integration_test_1]: [integration_test_description_1]
│   └── [integration_test_2]: [integration_test_description_2]
├── 📸 VISUAL VERIFICATION:
│   ├── Before/After Screenshots: [screenshot_comparison]
│   ├── UI Consistency Check: [ui_consistency_check]
│   └── Cross-browser Testing: [cross_browser_testing]
└── 👤 USER ACCEPTANCE TESTING:
    ├── [uat_test_1]: [uat_test_description_1]
    └── [uat_test_2]: [uat_test_description_2]

🚨 ROLLBACK PLAN:
├── Rollback Triggers: [rollback_triggers]
├── Rollback Steps: [rollback_steps]
├── Recovery Time: [recovery_time]
└── Monitoring: [rollback_monitoring]

💡 FINAL RECOMMENDATIONS:

├── 🎯 START HERE:
│   ├── [start_recommendation_1]: [start_description_1]
│   └── [start_recommendation_2]: [start_description_2]
├── 🔧 IMPLEMENTATION TIPS:
│   ├── [tip_1]: [tip_description_1]
│   ├── [tip_2]: [tip_description_2]
│   └── [tip_3]: [tip_description_3]
├── ⚠️ POTENTIAL PITFALLS:
│   ├── [pitfall_1]: [pitfall_description_1]
│   ├── [pitfall_2]: [pitfall_description_2]
│   └── [pitfall_3]: [pitfall_description_3]
├── 🔄 FOLLOW-UP ACTIONS:
│   ├── [followup_1]: [followup_description_1]
│   └── [followup_2]: [followup_description_2]
└── 📞 SUPPORT RESOURCES:
    ├── [resource_1]: [resource_description_1]
    └── [resource_2]: [resource_description_2]

📋 COMPARISON DEBUG SESSION CONTEXT:
├── 🕐 Session Information:
│   ├── Session ID: [session_id]
│   ├── Start Time: [start_time]
│   ├── Duration: [session_duration]
│   └── Comparison Target: [comparison_target]
├── 🤖 Multi-Agent Execution:
│   ├── Total Agents: 5
│   ├── Parallel Execution Time: [parallel_execution_time]
│   ├── Synthesis Time: [synthesis_time]
│   └── Total Analysis Time: [total_analysis_time]
├── 📊 Analysis Coverage:
│   ├── Code Analysis: [code_analysis_coverage]%
│   ├── Data Flow Analysis: [data_flow_coverage]%
│   ├── Error Pattern Analysis: [error_pattern_coverage]%
│   ├── Best Practices Analysis: [best_practices_coverage]%
│   └── Fresh Implementation Analysis: [fresh_implementation_coverage]%
└── 🎯 Analysis Quality:
    ├── Evidence Strength: [evidence_strength]/10
    ├── Consensus Quality: [consensus_quality]/10
    ├── Implementation Feasibility: [implementation_feasibility]/10
    └── Actionability Score: [actionability_score]/10
```

## Context Store System

### Comparison Debug Context Store Structure
**Base Path:** `.claude/analysis/comparison-debug-[session-id]/`

**Multi-Agent Analysis Files:**
- `code-comparison-analysis.json` - Structural differences and code path analysis
- `data-flow-analysis.json` - Request/response pattern comparison
- `error-pattern-analysis.json` - Failure mode and exception analysis
- `best-practices-analysis.json` - Industry standards and optimal patterns
- `fresh-implementation-analysis.json` - Modern approaches and alternatives
- `comparison-synthesis.json` - Multi-agent consensus and evidence ranking

### Context Store JSON Structure
```json
{
  "timestamp": "2025-01-15T12:00:00Z",
  "session_id": "comparison-debug-[session-id]",
  "comparison_target": "$ARGUMENTS",
  "agents_used": 5,
  "analysis_type": "comparative",
  "total_duration": "6-8 minutes",
  "comparison_analysis": {
    "working_feature": {
      "code_comparison": {},
      "data_flow": {},
      "error_patterns": {},
      "best_practices": {},
      "fresh_implementation": {}
    },
    "failing_feature": {
      "code_comparison": {},
      "data_flow": {},
      "error_patterns": {},
      "best_practices": {},
      "fresh_implementation": {}
    },
    "comparative_synthesis": {
      "failure_reasons": [],
      "evidence_ranking": {},
      "consensus_matrix": {},
      "implementation_roadmap": {}
    }
  }
}
```

## MCP Tools Integration

### Code Analysis Tools
- **File System Tools**: Read, Edit, Glob, Grep for code comparison
- **Browser Tools MCP**: Runtime behavior analysis, console comparison
- **Context7 MCP**: Best practices research, library documentation

### Research Tools
- **Brave Search MCP**: Latest implementation patterns, known issues
- **Context7 MCP**: Framework-specific best practices

### Analysis Tools
- **Browser Tools MCP**: Network behavior comparison, runtime analysis
- **Performance comparison tools**: Execution time, memory usage analysis

## Usage Examples

### Feature Comparison
```bash
/comparison-debug avatar upload vs banner upload
```
Compare two similar upload features where one works and one doesn't

### Authentication Comparison
```bash
/comparison-debug working login vs failing password reset
```
Compare authentication flows to identify reset-specific issues

### Search Functionality
```bash
/comparison-debug functional search vs broken filter
```
Compare search implementations to identify filtering problems

### API Endpoint Comparison
```bash
/comparison-debug working user API vs failing admin API
```
Compare similar API endpoints with different success rates

## Success Criteria

The comparison debug command should provide:
- **Comprehensive comparative analysis** across all 5 specialized domains
- **Evidence-based failure ranking** with Top 3 most likely reasons
- **Multi-agent consensus** with confidence levels and conflicting evidence
- **Actionable implementation roadmap** with step-by-step guidance
- **Complete testing strategy** with validation checkpoints

**Time Target:** 6-8 minutes for complete comparative analysis
**Context Window:** Optimized for multi-agent comparative processing
**Coverage:** Code + Data Flow + Error Patterns + Best Practices + Fresh Implementation
**Depth:** 5x deeper analysis than single-agent debugging approaches

## Automatic Trigger Detection

### Comparison Debug Auto-Trigger Conditions
The `/comparison-debug` command automatically triggers when:

1. **Similar Feature Failure Patterns:**
   - One feature works, similar feature fails
   - Inconsistent behavior across similar components
   - Partial functionality in related features

2. **Comparative Keywords:**
   - "working vs failing"
   - "one works, one doesn't"
   - "similar features"
   - "comparison debug"
   - "why does X work but Y doesn't"

3. **Stubborn Issue Indicators:**
   - Multiple debugging attempts failed
   - Traditional debugging shows no clear cause
   - Evidence points to implementation differences

Target Analysis: $ARGUMENTS