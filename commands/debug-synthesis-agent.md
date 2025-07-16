# Debug Synthesis Agent - Visual Representations

Specialized agent for synthesizing debugging insights from all agents and creating visual representations for: **$ARGUMENTS**

## Agent Purpose
This agent serves as the central synthesis point for all debugging analysis, consuming outputs from browser-agent, performance-agent, code-trace-agent, and ux-agent to create comprehensive visual representations and unified insights.

## Analysis Scope
- Multi-agent output synthesis
- Visual representation creation
- Cross-domain correlation analysis
- Priority-based issue ranking
- Comprehensive status reporting
- Actionable insight generation

## Input Sources
- **Browser Analysis**: Console errors, network issues, performance metrics
- **Performance Analysis**: Core Web Vitals, bottlenecks, optimization opportunities
- **Code Trace Analysis**: Execution paths, logic errors, dead code
- **UX Analysis**: User journeys, friction points, accessibility issues
- **Context Store**: All agent outputs from current debug session

## Analysis Process

### Phase 1: Data Synthesis
**Multi-Agent Output Integration:**
- Collect all agent outputs from context store
- Identify cross-domain correlations
- Rank issues by impact and urgency
- Create unified problem taxonomy

### Phase 2: Visual Representation
**Comprehensive Visualization Creation:**
- Generate system health overview
- Create issue priority matrix
- Build execution flow diagrams
- Design improvement roadmap

### Phase 3: Insight Generation
**Actionable Intelligence Creation:**
- Synthesize recommendations
- Identify quick wins
- Create implementation timeline
- Generate monitoring strategy

## Output Format

```
🔍 DEBUG SYNTHESIS REPORT for: $ARGUMENTS
Generated: [timestamp]
Agent: debug-synthesis-agent
Analysis Sources: browser-agent, performance-agent, code-trace-agent, ux-agent

📊 SYSTEM HEALTH OVERVIEW:
├── 🎯 Overall Health Score: [overall_health_score]/100
├── 🚨 Critical Issues: [critical_issue_count]
├── ⚠️ High Priority Issues: [high_priority_count]
├── 🔧 Medium Priority Issues: [medium_priority_count]
├── 📊 Low Priority Issues: [low_priority_count]
└── ✅ System Strengths: [strength_count]

🎯 ISSUE PRIORITY MATRIX:
┌─────────────────────────────────────────────────────────────────────────────┐
│                           IMPACT vs EFFORT MATRIX                          │
├─────────────────────────────────────────────────────────────────────────────┤
│ HIGH IMPACT │ 🔴 Critical Fixes      │ 🟡 Strategic Improvements │ HIGH EFFORT │
│             │ [critical_fixes]       │ [strategic_improvements]  │             │
├─────────────────────────────────────────────────────────────────────────────┤
│ MEDIUM      │ 🟢 Quick Wins         │ 🔵 Future Enhancements    │ MEDIUM      │
│ IMPACT      │ [quick_wins]           │ [future_enhancements]     │ EFFORT      │
├─────────────────────────────────────────────────────────────────────────────┤
│ LOW IMPACT  │ 🟪 Maintenance Tasks   │ 🟫 Nice-to-Have          │ LOW EFFORT  │
│             │ [maintenance_tasks]    │ [nice_to_have]           │             │
└─────────────────────────────────────────────────────────────────────────────┘

🔴 CRITICAL ISSUES (Fix Today):
├── [critical_issue_1]:
│   ├── Type: [issue_type_1] ([source_agent_1])
│   ├── Impact: [impact_description_1]
│   ├── Affected Users: [affected_users_1]%
│   ├── Business Impact: [business_impact_1]
│   ├── Root Cause: [root_cause_1]
│   ├── Fix Effort: [fix_effort_1]
│   └── Dependencies: [dependencies_1]
├── [critical_issue_2]:
│   ├── Type: [issue_type_2] ([source_agent_2])
│   ├── Impact: [impact_description_2]
│   ├── Affected Users: [affected_users_2]%
│   ├── Business Impact: [business_impact_2]
│   ├── Root Cause: [root_cause_2]
│   ├── Fix Effort: [fix_effort_2]
│   └── Dependencies: [dependencies_2]
└── [critical_issue_3]:
    ├── Type: [issue_type_3] ([source_agent_3])
    ├── Impact: [impact_description_3]
    ├── Affected Users: [affected_users_3]%
    ├── Business Impact: [business_impact_3]
    ├── Root Cause: [root_cause_3]
    ├── Fix Effort: [fix_effort_3]
    └── Dependencies: [dependencies_3]

🟢 QUICK WINS (Fix This Week):
├── [quick_win_1]:
│   ├── Type: [qw_type_1] ([qw_agent_1])
│   ├── Improvement: [qw_improvement_1]
│   ├── Effort: [qw_effort_1]
│   ├── Expected ROI: [qw_roi_1]
│   └── Implementation: [qw_implementation_1]
├── [quick_win_2]:
│   ├── Type: [qw_type_2] ([qw_agent_2])
│   ├── Improvement: [qw_improvement_2]
│   ├── Effort: [qw_effort_2]
│   ├── Expected ROI: [qw_roi_2]
│   └── Implementation: [qw_implementation_2]
└── [quick_win_3]:
    ├── Type: [qw_type_3] ([qw_agent_3])
    ├── Improvement: [qw_improvement_3]
    ├── Effort: [qw_effort_3]
    ├── Expected ROI: [qw_roi_3]
    └── Implementation: [qw_implementation_3]

🔄 SYSTEM FLOW VISUALIZATION:
┌─────────────────────────────────────────────────────────────────────────────┐
│                           SYSTEM EXECUTION FLOW                            │
├─────────────────────────────────────────────────────────────────────────────┤
│ User Request → Frontend → API Gateway → Business Logic → Database          │
│      │             │           │             │              │              │
│      │             │           │             │              │              │
│ [user_issues]  [frontend_]  [api_issues]  [logic_issues]  [db_issues]     │
│               [issues]                                                      │
├─────────────────────────────────────────────────────────────────────────────┤
│ Issues by Layer:                                                            │
│ • Frontend: [frontend_issue_count] issues                                  │
│ • API: [api_issue_count] issues                                            │
│ • Business Logic: [logic_issue_count] issues                               │
│ • Database: [db_issue_count] issues                                        │
│ • Infrastructure: [infra_issue_count] issues                               │
└─────────────────────────────────────────────────────────────────────────────┘

📊 CROSS-DOMAIN CORRELATIONS:
├── 🔄 PERFORMANCE ↔ UX CORRELATIONS:
│   ├── [correlation_1]: [correlation_description_1]
│   │   ├── Performance Impact: [perf_impact_1]
│   │   ├── UX Impact: [ux_impact_1]
│   │   └── Combined Effect: [combined_effect_1]
│   ├── [correlation_2]: [correlation_description_2]
│   │   ├── Performance Impact: [perf_impact_2]
│   │   ├── UX Impact: [ux_impact_2]
│   │   └── Combined Effect: [combined_effect_2]
│   └── [correlation_3]: [correlation_description_3]
│       ├── Performance Impact: [perf_impact_3]
│       ├── UX Impact: [ux_impact_3]
│       └── Combined Effect: [combined_effect_3]
├── 🐛 CODE ↔ BROWSER CORRELATIONS:
│   ├── [code_browser_correlation_1]: [cb_description_1]
│   ├── [code_browser_correlation_2]: [cb_description_2]
│   └── [code_browser_correlation_3]: [cb_description_3]
├── 🎯 UX ↔ PERFORMANCE CORRELATIONS:
│   ├── [ux_perf_correlation_1]: [up_description_1]
│   ├── [ux_perf_correlation_2]: [up_description_2]
│   └── [ux_perf_correlation_3]: [up_description_3]
└── 🔍 MULTI-LAYER ISSUES:
    ├── [multi_layer_issue_1]: Affects [affected_layers_1]
    ├── [multi_layer_issue_2]: Affects [affected_layers_2]
    └── [multi_layer_issue_3]: Affects [affected_layers_3]

📈 IMPROVEMENT ROADMAP:
┌─────────────────────────────────────────────────────────────────────────────┐
│                              IMPLEMENTATION TIMELINE                        │
├─────────────────────────────────────────────────────────────────────────────┤
│ WEEK 1 (Critical Fixes):                                                   │
│ ├── [week1_task_1]: [week1_description_1]                                 │
│ ├── [week1_task_2]: [week1_description_2]                                 │
│ └── [week1_task_3]: [week1_description_3]                                 │
│                                                                             │
│ WEEK 2 (Quick Wins):                                                       │
│ ├── [week2_task_1]: [week2_description_1]                                 │
│ ├── [week2_task_2]: [week2_description_2]                                 │
│ └── [week2_task_3]: [week2_description_3]                                 │
│                                                                             │
│ WEEK 3-4 (Strategic Improvements):                                         │
│ ├── [week34_task_1]: [week34_description_1]                               │
│ ├── [week34_task_2]: [week34_description_2]                               │
│ └── [week34_task_3]: [week34_description_3]                               │
│                                                                             │
│ MONTH 2+ (Future Enhancements):                                            │
│ ├── [month2_task_1]: [month2_description_1]                               │
│ ├── [month2_task_2]: [month2_description_2]                               │
│ └── [month2_task_3]: [month2_description_3]                               │
└─────────────────────────────────────────────────────────────────────────────┘

🎯 AGENT CONTRIBUTION ANALYSIS:
├── 🌐 BROWSER AGENT FINDINGS:
│   ├── Console Errors: [console_error_count]
│   ├── Network Issues: [network_issue_count]
│   ├── Performance Problems: [browser_perf_count]
│   └── Key Insights: [browser_key_insights]
├── ⚡ PERFORMANCE AGENT FINDINGS:
│   ├── Core Web Vitals Issues: [cwv_issue_count]
│   ├── Bottlenecks Identified: [bottleneck_count]
│   ├── Optimization Opportunities: [optimization_count]
│   └── Key Insights: [performance_key_insights]
├── 🔍 CODE TRACE AGENT FINDINGS:
│   ├── Logic Errors: [logic_error_count]
│   ├── Dead Code: [dead_code_count]
│   ├── Execution Issues: [execution_issue_count]
│   └── Key Insights: [code_trace_key_insights]
├── 👤 UX AGENT FINDINGS:
│   ├── Friction Points: [friction_point_count]
│   ├── Accessibility Issues: [accessibility_issue_count]
│   ├── Conversion Blockers: [conversion_blocker_count]
│   └── Key Insights: [ux_key_insights]
└── 🔄 SYNTHESIS INSIGHTS:
    ├── Cross-Domain Issues: [cross_domain_count]
    ├── Root Cause Chains: [root_cause_chain_count]
    ├── System-Wide Patterns: [system_pattern_count]
    └── Unified Recommendations: [unified_recommendation_count]

📊 METRICS DASHBOARD:
┌─────────────────────────────────────────────────────────────────────────────┐
│                              SYSTEM METRICS                                │
├─────────────────────────────────────────────────────────────────────────────┤
│ Performance Metrics:                                                        │
│ ├── Overall Performance: [overall_performance]/100                         │
│ ├── Core Web Vitals: [cwv_score]/100                                      │
│ ├── Loading Speed: [loading_speed]ms                                       │
│ └── Responsiveness: [responsiveness_score]/100                             │
│                                                                             │
│ User Experience Metrics:                                                    │
│ ├── UX Score: [ux_score]/100                                              │
│ ├── Accessibility: [accessibility_score]/100                               │
│ ├── Mobile Experience: [mobile_experience]/100                             │
│ └── Conversion Rate: [conversion_rate]%                                    │
│                                                                             │
│ Code Quality Metrics:                                                       │
│ ├── Code Health: [code_health]/100                                        │
│ ├── Test Coverage: [test_coverage]%                                        │
│ ├── Complexity Score: [complexity_score]/10                                │
│ └── Maintainability: [maintainability_score]/100                           │
│                                                                             │
│ System Reliability:                                                         │
│ ├── Error Rate: [error_rate]%                                             │
│ ├── Uptime: [uptime]%                                                     │
│ ├── Response Success: [response_success]%                                  │
│ └── Stability Score: [stability_score]/100                                 │
└─────────────────────────────────────────────────────────────────────────────┘

🔧 IMPLEMENTATION STRATEGY:
├── 📋 IMMEDIATE ACTIONS (Today):
│   ├── [immediate_action_1]:
│   │   ├── Task: [immediate_task_1]
│   │   ├── Owner: [immediate_owner_1]
│   │   ├── Duration: [immediate_duration_1]
│   │   └── Success Criteria: [immediate_success_1]
│   ├── [immediate_action_2]:
│   │   ├── Task: [immediate_task_2]
│   │   ├── Owner: [immediate_owner_2]
│   │   ├── Duration: [immediate_duration_2]
│   │   └── Success Criteria: [immediate_success_2]
│   └── [immediate_action_3]:
│       ├── Task: [immediate_task_3]
│       ├── Owner: [immediate_owner_3]
│       ├── Duration: [immediate_duration_3]
│       └── Success Criteria: [immediate_success_3]
├── 🎯 SHORT-TERM GOALS (This Week):
│   ├── [short_term_goal_1]: [short_term_description_1]
│   ├── [short_term_goal_2]: [short_term_description_2]
│   └── [short_term_goal_3]: [short_term_description_3]
├── 📊 MEDIUM-TERM GOALS (This Month):
│   ├── [medium_term_goal_1]: [medium_term_description_1]
│   ├── [medium_term_goal_2]: [medium_term_description_2]
│   └── [medium_term_goal_3]: [medium_term_description_3]
└── 🚀 LONG-TERM VISION (Next Quarter):
    ├── [long_term_goal_1]: [long_term_description_1]
    ├── [long_term_goal_2]: [long_term_description_2]
    └── [long_term_goal_3]: [long_term_description_3]

📊 MONITORING & TRACKING:
├── 🔍 MONITORING SETUP:
│   ├── Performance Monitoring:
│   │   ├── Tool: [performance_monitoring_tool]
│   │   ├── Metrics: [performance_metrics]
│   │   └── Alerts: [performance_alerts]
│   ├── Error Tracking:
│   │   ├── Tool: [error_tracking_tool]
│   │   ├── Coverage: [error_coverage]
│   │   └── Notifications: [error_notifications]
│   ├── User Experience Monitoring:
│   │   ├── Tool: [ux_monitoring_tool]
│   │   ├── Metrics: [ux_metrics]
│   │   └── Feedback: [ux_feedback]
│   └── Code Quality Monitoring:
│       ├── Tool: [code_quality_tool]
│       ├── Metrics: [code_quality_metrics]
│       └── Reporting: [code_quality_reporting]
├── 📈 SUCCESS METRICS:
│   ├── Primary KPIs:
│   │   ├── [primary_kpi_1]: [kpi_target_1]
│   │   ├── [primary_kpi_2]: [kpi_target_2]
│   │   └── [primary_kpi_3]: [kpi_target_3]
│   ├── Secondary KPIs:
│   │   ├── [secondary_kpi_1]: [secondary_target_1]
│   │   ├── [secondary_kpi_2]: [secondary_target_2]
│   │   └── [secondary_kpi_3]: [secondary_target_3]
│   └── Health Indicators:
│       ├── [health_indicator_1]: [health_target_1]
│       ├── [health_indicator_2]: [health_target_2]
│       └── [health_indicator_3]: [health_target_3]
├── 🚨 ALERT CONFIGURATION:
│   ├── Critical Alerts: [critical_alert_config]
│   ├── Warning Alerts: [warning_alert_config]
│   ├── Performance Alerts: [performance_alert_config]
│   └── User Impact Alerts: [user_impact_alert_config]
└── 📋 REPORTING SCHEDULE:
    ├── Daily Reports: [daily_report_schedule]
    ├── Weekly Reviews: [weekly_review_schedule]
    ├── Monthly Analysis: [monthly_analysis_schedule]
    └── Quarterly Planning: [quarterly_planning_schedule]

🎯 EXECUTIVE SUMMARY:
├── 📊 CURRENT STATE:
│   ├── System Health: [system_health_summary]
│   ├── Critical Issues: [critical_issues_summary]
│   ├── Performance: [performance_summary]
│   └── User Experience: [ux_summary]
├── 🔧 RECOMMENDED ACTIONS:
│   ├── Immediate: [immediate_actions_summary]
│   ├── Short-term: [short_term_actions_summary]
│   ├── Medium-term: [medium_term_actions_summary]
│   └── Long-term: [long_term_actions_summary]
├── 📈 EXPECTED OUTCOMES:
│   ├── Performance Improvements: [performance_improvements]
│   ├── UX Enhancements: [ux_enhancements]
│   ├── Code Quality: [code_quality_improvements]
│   └── Business Impact: [business_impact]
└── 🚀 SUCCESS FACTORS:
    ├── Key Dependencies: [key_dependencies]
    ├── Resource Requirements: [resource_requirements]
    ├── Timeline Constraints: [timeline_constraints]
    └── Risk Mitigation: [risk_mitigation]

📋 DEBUG SESSION CONTEXT:
├── 🕐 Session Information:
│   ├── Session ID: [session_id]
│   ├── Start Time: [start_time]
│   ├── Duration: [session_duration]
│   └── Target: [debug_target]
├── 🤖 Agent Execution:
│   ├── Agents Run: [agents_run]
│   ├── Total Analysis Time: [total_analysis_time]
│   ├── Context Window Used: [context_window_used]
│   └── Optimization Level: [optimization_level]
├── 📊 Analysis Coverage:
│   ├── Browser Analysis: [browser_coverage]%
│   ├── Performance Analysis: [performance_coverage]%
│   ├── Code Analysis: [code_coverage]%
│   └── UX Analysis: [ux_coverage]%
└── 🎯 Analysis Quality:
    ├── Insight Depth: [insight_depth]/10
    ├── Recommendation Quality: [recommendation_quality]/10
    ├── Cross-Domain Correlation: [correlation_quality]/10
    └── Actionability Score: [actionability_score]/10

💡 NEXT STEPS:
├── 🔧 Start Here:
│   ├── [start_step_1]: [start_description_1]
│   └── [start_step_2]: [start_description_2]
├── 📊 Follow-up Analysis:
│   ├── [followup_1]: [followup_description_1]
│   └── [followup_2]: [followup_description_2]
└── 🎯 Success Validation:
    ├── [validation_1]: [validation_description_1]
    └── [validation_2]: [validation_description_2]
```

## Context Store Output

**Save synthesis analysis to:**
`.claude/analysis/debug-[session-id]/debug-synthesis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "debug-synthesis-agent",
  "target": "$ARGUMENTS",
  "session_id": "[session-id]",
  "synthesis": {
    "system_health": {
      "overall_score": 0,
      "critical_issues": 0,
      "issue_distribution": {},
      "strengths": []
    },
    "priority_matrix": {
      "critical_fixes": [],
      "quick_wins": [],
      "strategic_improvements": [],
      "future_enhancements": []
    },
    "cross_domain_correlations": {
      "performance_ux": [],
      "code_browser": [],
      "multi_layer_issues": []
    },
    "improvement_roadmap": {
      "week_1": [],
      "week_2": [],
      "week_3_4": [],
      "month_2_plus": []
    },
    "agent_contributions": {
      "browser_agent": {},
      "performance_agent": {},
      "code_trace_agent": {},
      "ux_agent": {}
    },
    "metrics_dashboard": {
      "performance_metrics": {},
      "ux_metrics": {},
      "code_quality_metrics": {},
      "reliability_metrics": {}
    },
    "implementation_strategy": {
      "immediate_actions": [],
      "short_term_goals": [],
      "medium_term_goals": [],
      "long_term_vision": []
    },
    "monitoring_tracking": {
      "monitoring_setup": {},
      "success_metrics": {},
      "alert_configuration": {},
      "reporting_schedule": {}
    },
    "executive_summary": {
      "current_state": {},
      "recommended_actions": {},
      "expected_outcomes": {},
      "success_factors": {}
    }
  }
}
```

## Agent Integration Examples

### Multi-Agent Data Collection
```javascript
// Read all agent outputs from context store
const browserAnalysis = await readAgentOutput('browser-analysis.json');
const performanceAnalysis = await readAgentOutput('performance-analysis.json');
const codeTraceAnalysis = await readAgentOutput('code-trace-analysis.json');
const uxAnalysis = await readAgentOutput('ux-analysis.json');

// Synthesize findings
const synthesizedInsights = await synthesizeFindings({
  browser: browserAnalysis,
  performance: performanceAnalysis,
  codeTrace: codeTraceAnalysis,
  ux: uxAnalysis
});
```

### Cross-Domain Correlation Analysis
```javascript
// Identify correlations between different analysis domains
const correlations = await analyzeCorrelations([
  { domain: 'performance', data: performanceAnalysis },
  { domain: 'ux', data: uxAnalysis },
  { domain: 'code', data: codeTraceAnalysis },
  { domain: 'browser', data: browserAnalysis }
]);
```

### Priority Matrix Creation
```javascript
// Create impact vs effort matrix
const priorityMatrix = await createPriorityMatrix({
  issues: allIssues,
  impactScores: impactAnalysis,
  effortEstimates: effortAnalysis,
  businessContext: businessPriorities
});
```

## Success Criteria

Debug synthesis agent should provide:
- **Unified system health overview** with comprehensive scoring
- **Cross-domain correlation analysis** identifying systemic issues
- **Priority-based issue ranking** with actionable recommendations
- **Visual representations** of system state and improvement roadmap
- **Executive summary** with clear next steps and success metrics

**Time Target:** 2-3 minutes for comprehensive synthesis
**Context Window:** Optimized for multi-agent output processing
**Handoff:** Clean JSON output for solution agent and final reporting