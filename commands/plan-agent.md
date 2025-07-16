# Planning Agent - Implementation Roadmap Creation

Specialized agent for creating comprehensive implementation roadmaps by synthesizing all agent outputs for: **$ARGUMENTS**

## Agent Purpose
This agent focuses exclusively on creating actionable implementation plans by synthesizing research findings, database requirements, architecture analysis, and risk assessments into a coherent roadmap.

## Synthesis Scope
- Research-informed implementation approach
- Database migration and schema planning
- Architecture integration strategy
- Risk-mitigated deployment sequence
- Resource allocation and timeline estimation
- Success criteria and validation planning

## Input Sources
- **Research Agent Output**: Latest patterns and best practices
- **Database Agent Output**: Schema changes and migration strategy
- **Architecture Agent Output**: Integration points and system impact
- **Risk Agent Output**: Risk assessment and mitigation strategies

## Planning Process

### Phase 1: Synthesis & Prioritization
**Multi-agent Input Integration:**
- Synthesize research recommendations with system constraints
- Align database changes with architecture requirements
- Integrate risk mitigation into implementation sequence
- Balance feature completeness with risk management

### Phase 2: Resource Planning
**Implementation Resource Assessment:**
- Estimate development effort and timeline
- Identify skill requirements and team assignments
- Plan testing and validation resources
- Schedule deployment and monitoring activities

### Phase 3: Execution Strategy
**Detailed Implementation Planning:**
- Create step-by-step implementation sequence
- Define deliverables and success criteria
- Plan validation and testing strategies
- Design rollback and recovery procedures

## Output Format

```
🗺️ IMPLEMENTATION ROADMAP for: $ARGUMENTS
Generated: [timestamp]
Agent: plan-agent
Synthesis: research-agent + db-agent + arch-agent + risk-agent

🎯 EXECUTIVE IMPLEMENTATION SUMMARY:
├── 📊 Complexity Level: [complexity_rating] (1-10)
├── ⏱️ Estimated Timeline: [timeline_estimate]
├── 👥 Team Size Required: [team_size]
├── 🔒 Risk Level: [risk_level] - [risk_score]/10
├── 💰 Implementation Cost: [cost_estimate]
└── 🎯 Success Probability: [success_percentage]%

📋 IMPLEMENTATION STRATEGY:
├── 🏆 Recommended Approach: [approach_summary]
├── 📚 Based on Research: [research_influence]
├── 🗃️ Database Strategy: [database_approach]
├── 🏗️ Architecture Integration: [architecture_approach]
└── 🛡️ Risk Mitigation: [risk_management_approach]

🚀 PHASED IMPLEMENTATION PLAN:

📅 PHASE 1: FOUNDATION & SETUP (Days 1-[X])
├── 🔍 Research Implementation:
│   ├── ✅ Setup: [research_setup_tasks]
│   ├── ✅ Dependencies: [dependency_installation]
│   └── ✅ Configuration: [configuration_tasks]
├── 🗃️ Database Preparation:
│   ├── ✅ Schema design: [schema_design_tasks]
│   ├── ✅ Migration creation: [migration_tasks]
│   └── ✅ Testing setup: [db_testing_setup]
├── 🏗️ Architecture Foundation:
│   ├── ✅ Component scaffolding: [component_setup]
│   ├── ✅ Integration points: [integration_setup]
│   └── ✅ Testing framework: [testing_setup]
├── 🛡️ Risk Mitigation Setup:
│   ├── ✅ Monitoring setup: [monitoring_setup]
│   ├── ✅ Feature flags: [feature_flag_setup]
│   └── ✅ Rollback preparation: [rollback_setup]
└── 📊 Phase 1 Success Criteria:
    ├── ✅ [success_criterion_1]
    ├── ✅ [success_criterion_2]
    └── ✅ [success_criterion_3]

📅 PHASE 2: CORE IMPLEMENTATION (Days [X]-[Y])
├── 🗃️ Database Implementation:
│   ├── ✅ Schema deployment: [schema_deployment]
│   ├── ✅ Migration execution: [migration_execution]
│   ├── ✅ RLS policy setup: [rls_implementation]
│   └── ✅ Performance optimization: [performance_tasks]
├── 🏗️ Backend Development:
│   ├── ✅ API endpoints: [api_development]
│   ├── ✅ Business logic: [business_logic]
│   ├── ✅ Authentication integration: [auth_integration]
│   └── ✅ Error handling: [error_handling]
├── 🎨 Frontend Development:
│   ├── ✅ Component development: [component_development]
│   ├── ✅ State management: [state_management]
│   ├── ✅ UI/UX implementation: [ui_development]
│   └── ✅ Integration testing: [integration_testing]
├── 🧪 Testing Implementation:
│   ├── ✅ Unit tests: [unit_testing]
│   ├── ✅ Integration tests: [integration_testing]
│   ├── ✅ Performance tests: [performance_testing]
│   └── ✅ Security tests: [security_testing]
└── 📊 Phase 2 Success Criteria:
    ├── ✅ [success_criterion_1]
    ├── ✅ [success_criterion_2]
    └── ✅ [success_criterion_3]

📅 PHASE 3: INTEGRATION & VALIDATION (Days [Y]-[Z])
├── 🔗 System Integration:
│   ├── ✅ Component integration: [component_integration]
│   ├── ✅ API integration: [api_integration]
│   ├── ✅ Database connectivity: [db_integration]
│   └── ✅ External service integration: [external_integration]
├── 🧪 Comprehensive Testing:
│   ├── ✅ End-to-end testing: [e2e_testing]
│   ├── ✅ Performance validation: [performance_validation]
│   ├── ✅ Security validation: [security_validation]
│   └── ✅ User acceptance testing: [uat_testing]
├── 📊 Performance Optimization:
│   ├── ✅ Query optimization: [query_optimization]
│   ├── ✅ Bundle optimization: [bundle_optimization]
│   ├── ✅ Caching implementation: [caching_implementation]
│   └── ✅ Monitoring setup: [monitoring_implementation]
└── 📊 Phase 3 Success Criteria:
    ├── ✅ [success_criterion_1]
    ├── ✅ [success_criterion_2]
    └── ✅ [success_criterion_3]

📅 PHASE 4: DEPLOYMENT & MONITORING (Days [Z]-[Final])
├── 🚀 Deployment Preparation:
│   ├── ✅ Production setup: [production_setup]
│   ├── ✅ Environment configuration: [env_configuration]
│   ├── ✅ Security hardening: [security_hardening]
│   └── ✅ Rollback testing: [rollback_testing]
├── 🎯 Phased Rollout:
│   ├── ✅ Internal testing: [internal_testing]
│   ├── ✅ Beta release: [beta_release]
│   ├── ✅ Gradual rollout: [gradual_rollout]
│   └── ✅ Full release: [full_release]
├── 📊 Post-deployment:
│   ├── ✅ Performance monitoring: [performance_monitoring]
│   ├── ✅ Error tracking: [error_tracking]
│   ├── ✅ User feedback: [user_feedback]
│   └── ✅ Success measurement: [success_measurement]
└── 📊 Phase 4 Success Criteria:
    ├── ✅ [success_criterion_1]
    ├── ✅ [success_criterion_2]
    └── ✅ [success_criterion_3]

🎯 DETAILED TASK BREAKDOWN:

🔧 TECHNICAL IMPLEMENTATION TASKS:
├── 🗃️ Database Tasks:
│   ├── [task_name]: [description] - [effort_estimate] - [assignee]
│   ├── [task_name]: [description] - [effort_estimate] - [assignee]
│   └── [task_name]: [description] - [effort_estimate] - [assignee]
├── 🏗️ Backend Tasks:
│   ├── [task_name]: [description] - [effort_estimate] - [assignee]
│   ├── [task_name]: [description] - [effort_estimate] - [assignee]
│   └── [task_name]: [description] - [effort_estimate] - [assignee]
├── 🎨 Frontend Tasks:
│   ├── [task_name]: [description] - [effort_estimate] - [assignee]
│   ├── [task_name]: [description] - [effort_estimate] - [assignee]
│   └── [task_name]: [description] - [effort_estimate] - [assignee]
└── 🧪 Testing Tasks:
    ├── [task_name]: [description] - [effort_estimate] - [assignee]
    ├── [task_name]: [description] - [effort_estimate] - [assignee]
    └── [task_name]: [description] - [effort_estimate] - [assignee]

📊 RESOURCE ALLOCATION:
├── 👥 Team Requirements:
│   ├── 🎯 Project Lead: [role_description] - [time_commitment]
│   ├── 🗃️ Database Developer: [role_description] - [time_commitment]
│   ├── 🏗️ Backend Developer: [role_description] - [time_commitment]
│   ├── 🎨 Frontend Developer: [role_description] - [time_commitment]
│   ├── 🧪 QA Engineer: [role_description] - [time_commitment]
│   └── 🔒 Security Review: [role_description] - [time_commitment]
├── 🛠️ Infrastructure Requirements:
│   ├── Development environment: [dev_requirements]
│   ├── Testing environment: [testing_requirements]
│   ├── Staging environment: [staging_requirements]
│   └── Production environment: [production_requirements]
└── 📚 Knowledge Requirements:
    ├── Technology expertise: [tech_expertise_needed]
    ├── Domain knowledge: [domain_knowledge_needed]
    └── Training needs: [training_requirements]

🧪 VALIDATION & TESTING STRATEGY:
├── 🔬 Testing Approach:
│   ├── Unit testing: [unit_test_strategy]
│   ├── Integration testing: [integration_test_strategy]
│   ├── System testing: [system_test_strategy]
│   └── User acceptance testing: [uat_strategy]
├── 📊 Performance Testing:
│   ├── Load testing: [load_test_approach]
│   ├── Stress testing: [stress_test_approach]
│   ├── Performance benchmarks: [performance_benchmarks]
│   └── Scalability testing: [scalability_testing]
├── 🔒 Security Testing:
│   ├── Security assessment: [security_assessment]
│   ├── Vulnerability testing: [vulnerability_testing]
│   ├── Penetration testing: [penetration_testing]
│   └── Compliance validation: [compliance_validation]
└── 🎯 Success Metrics:
    ├── Technical metrics: [technical_kpis]
    ├── User metrics: [user_kpis]
    ├── Business metrics: [business_kpis]
    └── Performance metrics: [performance_kpis]

🛡️ RISK MANAGEMENT INTEGRATION:
├── 🚨 High-Risk Mitigations:
│   ├── [risk_item]: [mitigation_strategy] - [implementation_plan]
│   ├── [risk_item]: [mitigation_strategy] - [implementation_plan]
│   └── [risk_item]: [mitigation_strategy] - [implementation_plan]
├── ⚠️ Medium-Risk Mitigations:
│   ├── [risk_item]: [mitigation_strategy] - [implementation_plan]
│   └── [risk_item]: [mitigation_strategy] - [implementation_plan]
├── 🔄 Contingency Plans:
│   ├── Plan A failure: [contingency_plan_a]
│   ├── Plan B failure: [contingency_plan_b]
│   └── Emergency rollback: [emergency_rollback_plan]
└── 📊 Risk Monitoring:
    ├── Risk indicators: [risk_indicators]
    ├── Monitoring frequency: [monitoring_frequency]
    └── Escalation procedures: [escalation_procedures]

🎯 SUCCESS CRITERIA & VALIDATION:
├── 🏆 Primary Success Criteria:
│   ├── [criterion_1]: [measurement_method] - [target_value]
│   ├── [criterion_2]: [measurement_method] - [target_value]
│   └── [criterion_3]: [measurement_method] - [target_value]
├── 📊 Secondary Success Criteria:
│   ├── [criterion_1]: [measurement_method] - [target_value]
│   ├── [criterion_2]: [measurement_method] - [target_value]
│   └── [criterion_3]: [measurement_method] - [target_value]
├── 🚫 Failure Criteria:
│   ├── [failure_condition]: [response_plan]
│   ├── [failure_condition]: [response_plan]
│   └── [failure_condition]: [response_plan]
└── 📈 Long-term Success Metrics:
    ├── [metric_1]: [measurement_method] - [target_value]
    ├── [metric_2]: [measurement_method] - [target_value]
    └── [metric_3]: [measurement_method] - [target_value]

📋 IMPLEMENTATION CHECKLIST:
├── 🔧 Technical Readiness:
│   ├── [ ] Development environment setup
│   ├── [ ] Dependencies installed and configured
│   ├── [ ] Database schema designed and reviewed
│   ├── [ ] API endpoints designed and documented
│   ├── [ ] Component architecture finalized
│   ├── [ ] Testing framework configured
│   └── [ ] Monitoring and logging setup
├── 👥 Team Readiness:
│   ├── [ ] Team members assigned and available
│   ├── [ ] Required skills and knowledge confirmed
│   ├── [ ] Training completed if needed
│   ├── [ ] Communication channels established
│   └── [ ] Project management tools configured
├── 🛡️ Risk Readiness:
│   ├── [ ] Risk mitigation strategies implemented
│   ├── [ ] Contingency plans documented
│   ├── [ ] Rollback procedures tested
│   ├── [ ] Monitoring alerts configured
│   └── [ ] Emergency response team identified
└── 🚀 Deployment Readiness:
    ├── [ ] Production environment prepared
    ├── [ ] Security review completed
    ├── [ ] Performance benchmarks established
    ├── [ ] User communication planned
    └── [ ] Success metrics tracking ready

💡 OPTIMIZATION RECOMMENDATIONS:
├── 🚀 Performance Optimizations:
│   ├── [optimization]: [benefit] - [implementation_effort]
│   ├── [optimization]: [benefit] - [implementation_effort]
│   └── [optimization]: [benefit] - [implementation_effort]
├── 🔧 Implementation Optimizations:
│   ├── [optimization]: [benefit] - [implementation_effort]
│   ├── [optimization]: [benefit] - [implementation_effort]
│   └── [optimization]: [benefit] - [implementation_effort]
├── 🎯 Process Optimizations:
│   ├── [optimization]: [benefit] - [implementation_effort]
│   ├── [optimization]: [benefit] - [implementation_effort]
│   └── [optimization]: [benefit] - [implementation_effort]
└── 📊 Monitoring Optimizations:
    ├── [optimization]: [benefit] - [implementation_effort]
    ├── [optimization]: [benefit] - [implementation_effort]
    └── [optimization]: [benefit] - [implementation_effort]

🎯 FINAL IMPLEMENTATION RECOMMENDATION:
├── 🏆 Recommended timeline: [timeline_recommendation]
├── 👥 Recommended team size: [team_size_recommendation]
├── 💰 Estimated cost: [cost_estimate]
├── 📊 Success probability: [success_probability]%
├── 🛡️ Risk level: [acceptable_risk_level]
└── 🚀 Go/No-Go recommendation: [go_no_go_decision]
```

## Context Store Output

**Save implementation plan to:**
`.claude/analysis/[feature-name]/implementation-plan.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "plan-agent",
  "feature": "$ARGUMENTS",
  "synthesis_sources": ["research-agent", "db-agent", "arch-agent", "risk-agent"],
  "executive_summary": {
    "complexity_level": 0,
    "timeline_estimate": "",
    "team_size": 0,
    "risk_level": "",
    "cost_estimate": "",
    "success_probability": 0
  },
  "implementation_phases": [
    {
      "phase": 1,
      "name": "",
      "duration": "",
      "tasks": [],
      "success_criteria": []
    }
  ],
  "resource_allocation": {
    "team_requirements": [],
    "infrastructure_requirements": [],
    "knowledge_requirements": []
  },
  "validation_strategy": {
    "testing_approach": {},
    "performance_testing": {},
    "security_testing": {},
    "success_metrics": []
  },
  "risk_management": {
    "high_risk_mitigations": [],
    "medium_risk_mitigations": [],
    "contingency_plans": [],
    "risk_monitoring": []
  },
  "success_criteria": {
    "primary": [],
    "secondary": [],
    "failure_criteria": [],
    "long_term_metrics": []
  },
  "recommendations": {
    "performance_optimizations": [],
    "implementation_optimizations": [],
    "process_optimizations": [],
    "final_recommendation": {}
  }
}
```

## Success Criteria

Planning agent should provide:
- **Actionable implementation roadmap** with clear phases and tasks
- **Resource allocation plan** with team and infrastructure requirements
- **Risk-integrated approach** with mitigation strategies built into the plan
- **Success validation strategy** with measurable criteria
- **Clear recommendations** for go/no-go decisions

**Time Target:** 3-4 minutes for comprehensive planning
**Context Window:** Optimized for synthesis and planning focus
**Output:** Complete implementation roadmap ready for execution