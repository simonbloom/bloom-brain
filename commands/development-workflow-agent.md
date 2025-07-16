# Development Workflow Agent - Best Practices Guide

Comprehensive development workflow guidance agent providing interactive best practices and workflow optimization for: **$ARGUMENTS**

## Agent Purpose
This agent provides interactive development workflow guidance, including development commands, Git workflow, testing strategies, and best practices enforcement with context-aware recommendations for optimal development processes.

## Analysis Scope
- Development workflow analysis
- Git workflow optimization
- Testing strategy implementation
- Code quality enforcement
- CI/CD pipeline optimization
- Development environment setup

## MCP Tools Used
- **File System Tools**: Analyze project structure, configuration files, workflow patterns
- **Git Integration**: Repository analysis, branch management, commit patterns
- **Browser Tools MCP**: Development server testing, workflow validation
- **Context7 MCP**: Development best practices, workflow patterns, tooling documentation
- **Brave Search MCP**: Latest development trends, workflow optimization techniques

## Analysis Process

### Phase 1: Development Environment Analysis
**Current Environment Assessment:**
- Development server configuration
- Package management analysis
- Build system evaluation
- Development tool integration

### Phase 2: Workflow Pattern Analysis
**Workflow Optimization Assessment:**
- Git workflow patterns
- Testing workflow efficiency
- Code review processes
- Deployment workflow analysis

### Phase 3: Best Practices Implementation
**Best Practices Enforcement:**
- Code quality guidelines
- Development standards
- Workflow automation opportunities
- Team collaboration patterns

## Output Format

```
⚡ DEVELOPMENT WORKFLOW ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: development-workflow-agent

📊 WORKFLOW OVERVIEW:
├── 🎯 Development Efficiency: [dev_efficiency_score]/100
├── 📱 Server Management: [server_management_score]/100
├── 🔧 Tool Integration: [tool_integration_score]/100
├── 🧪 Testing Workflow: [testing_workflow_score]/100
└── 🚀 Deployment Readiness: [deployment_readiness_score]/100

🛠️ DEVELOPMENT COMMANDS:

├── 🖥️ SERVER MANAGEMENT:
│   ├── **Recommended Server Management:**
│   │   ├── Primary Command: `./scripts/dev-server.sh`
│   │   ├── Start Main App: `./scripts/dev-server.sh main`
│   │   ├── Start All Services: `./scripts/dev-server.sh all`
│   │   ├── Kill All Services: `./scripts/dev-server.sh kill`
│   │   ├── Check Status: `./scripts/dev-server.sh status`
│   │   └── Force Restart: `./scripts/dev-server.sh main --force`
│   ├── **Legacy Method (Fallback):**
│   │   ├── Kill and Restart: `(lsof -ti:6123,7123 | xargs kill -9 2>/dev/null || true) && (pnpm dev & pnpm storybook & wait)`
│   │   ├── Usage: Only when script fails
│   │   └── Ports: Main app (6123), Storybook (7123)
│   ├── **Service Status Analysis:**
│   │   ├── Main App Status: [main_app_status]
│   │   ├── Storybook Status: [storybook_status]
│   │   ├── Port Conflicts: [port_conflict_count]
│   │   └── Process Health: [process_health_score]/100
│   └── **Server Optimization:**
│       ├── Startup Time: [startup_time]ms
│       ├── Memory Usage: [memory_usage]MB
│       ├── CPU Usage: [cpu_usage]%
│       └── Hot Reload Performance: [hot_reload_performance]/100
├── 🏗️ BUILD COMMANDS:
│   ├── **Development Build:**
│   │   ├── Command: `pnpm dev`
│   │   ├── Performance: [dev_build_performance]/100
│   │   ├── Error Handling: [dev_error_handling_score]/100
│   │   └── Hot Reload: [hot_reload_effectiveness]/100
│   ├── **Production Build:**
│   │   ├── Command: `pnpm build`
│   │   ├── Build Time: [build_time]ms
│   │   ├── Bundle Size: [bundle_size]MB
│   │   ├── Optimization: [build_optimization_score]/100
│   │   └── Error Rate: [build_error_rate]%
│   ├── **Development Preview:**
│   │   ├── Command: `pnpm build:dev`
│   │   ├── Use Case: Development build testing
│   │   └── Performance: [dev_preview_performance]/100
│   └── **Production Preview:**
│       ├── Command: `pnpm preview`
│       ├── Use Case: Production build testing
│       └── Accuracy: [preview_accuracy_score]/100
├── 🧪 TESTING COMMANDS:
│   ├── **Test Execution:**
│   │   ├── All Tests: `pnpm test`
│   │   ├── Test UI: `pnpm test:ui`
│   │   ├── Coverage: `pnpm test:coverage`
│   │   ├── Component Tests: `pnpm test:card`
│   │   └── Test Summary: `pnpm test:summary`
│   ├── **Test Performance:**
│   │   ├── Test Speed: [test_speed_score]/100
│   │   ├── Coverage: [test_coverage]%
│   │   ├── Pass Rate: [test_pass_rate]%
│   │   └── Reliability: [test_reliability_score]/100
│   └── **Test Quality:**
│       ├── Test Completeness: [test_completeness_score]/100
│       ├── Test Maintainability: [test_maintainability_score]/100
│       ├── Mock Quality: [mock_quality_score]/100
│       └── Integration Coverage: [integration_coverage]%
├── 🎨 STORYBOOK COMMANDS:
│   ├── **Storybook Development:**
│   │   ├── Command: `pnpm storybook`
│   │   ├── Port: http://localhost:7123
│   │   ├── Component Count: [storybook_component_count]
│   │   └── Coverage: [storybook_coverage]%
│   ├── **Storybook Build:**
│   │   ├── Command: `pnpm build-storybook`
│   │   ├── Use Case: Deployment preparation
│   │   └── Build Quality: [storybook_build_quality]/100
│   └── **Storybook Integration:**
│       ├── Component Documentation: [component_documentation_score]/100
│       ├── Story Quality: [story_quality_score]/100
│       ├── Visual Testing: [visual_testing_score]/100
│       └── Development Workflow: [storybook_workflow_score]/100
├── 🔧 EXTENSION COMMANDS:
│   ├── **Chrome Extension Development:**
│   │   ├── Install: `pnpm ext:install`
│   │   ├── Development: `pnpm ext:dev`
│   │   ├── Build: `pnpm ext:build`
│   │   └── Package: `pnpm ext:package`
│   ├── **Extension Health:**
│   │   ├── Build Status: [extension_build_status]
│   │   ├── Package Size: [extension_package_size]MB
│   │   ├── Manifest Validity: [manifest_validity_score]/100
│   │   └── Extension Performance: [extension_performance_score]/100
│   └── **Extension Workflow:**
│       ├── Development Efficiency: [extension_dev_efficiency]/100
│       ├── Testing Integration: [extension_testing_score]/100
│       ├── Deployment Readiness: [extension_deployment_score]/100
│       └── Chrome Store Compliance: [chrome_store_compliance]/100
└── 🔍 LINTING COMMANDS:
    ├── **Code Quality:**
    │   ├── Command: `pnpm lint`
    │   ├── Lint Score: [lint_score]/100
    │   ├── Rule Compliance: [rule_compliance_score]/100
    │   └── Auto-fix Coverage: [auto_fix_coverage]%
    ├── **Type Checking:**
    │   ├── TypeScript Check: [typescript_check_command]
    │   ├── Type Safety: [type_safety_score]/100
    │   ├── Type Coverage: [type_coverage]%
    │   └── Type Errors: [type_error_count]
    └── **Code Quality Metrics:**
        ├── Code Complexity: [code_complexity_score]/10
        ├── Maintainability: [maintainability_score]/100
        ├── Technical Debt: [technical_debt_score]/10
        └── Code Standards: [code_standards_score]/100

🔄 GIT WORKFLOW:

├── 🌟 BRANCH MANAGEMENT:
│   ├── **Main Branch Strategy:**
│   │   ├── Main Branch: `main`
│   │   ├── Protection Rules: [protection_rules_score]/100
│   │   ├── Merge Strategy: [merge_strategy_effectiveness]/100
│   │   └── Branch Health: [main_branch_health]/100
│   ├── **Feature Branch Workflow:**
│   │   ├── Branch Naming: [branch_naming_compliance]/100
│   │   ├── Feature Branches: [active_feature_branches]
│   │   ├── Branch Lifetime: [avg_branch_lifetime] days
│   │   └── Merge Frequency: [merge_frequency_score]/100
│   ├── **Branch Cleanup:**
│   │   ├── Stale Branches: [stale_branch_count]
│   │   ├── Cleanup Frequency: [cleanup_frequency_score]/100
│   │   ├── Automated Cleanup: [automated_cleanup_status]
│   │   └── Branch Hygiene: [branch_hygiene_score]/100
│   └── **Branch Strategy Optimization:**
│       ├── Concurrent Development: [concurrent_dev_score]/100
│       ├── Conflict Resolution: [conflict_resolution_score]/100
│       ├── Integration Speed: [integration_speed_score]/100
│       └── Release Management: [release_management_score]/100
├── 📝 COMMIT PRACTICES:
│   ├── **Commit Message Quality:**
│   │   ├── Message Format: [commit_message_format_score]/100
│   │   ├── Conventional Commits: [conventional_commits_compliance]/100
│   │   ├── Descriptiveness: [commit_descriptiveness_score]/100
│   │   └── Consistency: [commit_consistency_score]/100
│   ├── **Commit Frequency:**
│   │   ├── Commit Size: [avg_commit_size] lines
│   │   ├── Commit Frequency: [commit_frequency] per day
│   │   ├── Atomic Commits: [atomic_commits_score]/100
│   │   └── Commit Quality: [commit_quality_score]/100
│   ├── **Commit Automation:**
│   │   ├── Auto-generated Messages: [auto_generated_messages]%
│   │   ├── Claude Code Integration: [claude_integration_score]/100
│   │   ├── Co-authored Commits: [co_authored_commits]%
│   │   └── Commit Templates: [commit_template_usage]/100
│   └── **Commit History:**
│       ├── History Cleanliness: [history_cleanliness_score]/100
│       ├── Rebase vs Merge: [rebase_merge_ratio]
│       ├── Squash Usage: [squash_usage_score]/100
│       └── History Navigation: [history_navigation_score]/100
├── 🔄 PULL REQUEST WORKFLOW:
│   ├── **PR Creation:**
│   │   ├── PR Templates: [pr_template_usage]/100
│   │   ├── Description Quality: [pr_description_score]/100
│   │   ├── Review Readiness: [review_readiness_score]/100
│   │   └── CI/CD Integration: [cicd_integration_score]/100
│   ├── **Code Review Process:**
│   │   ├── Review Coverage: [review_coverage]%
│   │   ├── Review Quality: [review_quality_score]/100
│   │   ├── Review Speed: [review_speed_score]/100
│   │   └── Approval Process: [approval_process_score]/100
│   ├── **PR Automation:**
│   │   ├── Auto-checks: [auto_checks_score]/100
│   │   ├── Status Checks: [status_checks_coverage]/100
│   │   ├── Auto-merge: [auto_merge_usage]/100
│   │   └── Bot Integration: [bot_integration_score]/100
│   └── **Merge Strategy:**
│       ├── Merge Method: [merge_method_consistency]/100
│       ├── Merge Conflicts: [merge_conflict_rate]%
│       ├── Merge Speed: [merge_speed_score]/100
│       └── Post-merge Actions: [post_merge_actions_score]/100
└── 🔍 REPOSITORY HEALTH:
    ├── **Repository Metrics:**
    │   ├── Repository Size: [repo_size]MB
    │   ├── File Count: [file_count]
    │   ├── Contributor Count: [contributor_count]
    │   └── Activity Score: [activity_score]/100
    ├── **Code Quality Metrics:**
    │   ├── Code Churn: [code_churn_rate]%
    │   ├── Technical Debt: [technical_debt_score]/10
    │   ├── Code Duplication: [code_duplication]%
    │   └── Architecture Health: [architecture_health_score]/100
    ├── **Collaboration Metrics:**
    │   ├── Contribution Distribution: [contribution_distribution_score]/100
    │   ├── Knowledge Sharing: [knowledge_sharing_score]/100
    │   ├── Onboarding Efficiency: [onboarding_efficiency_score]/100
    │   └── Team Velocity: [team_velocity_score]/100
    └── **Security Metrics:**
        ├── Security Scan Results: [security_scan_score]/100
        ├── Vulnerability Count: [vulnerability_count]
        ├── Dependency Security: [dependency_security_score]/100
        └── Access Control: [access_control_score]/100

🧪 TESTING WORKFLOW:

├── 📊 TESTING STRATEGY:
│   ├── **Test Coverage Analysis:**
│   │   ├── Unit Test Coverage: [unit_test_coverage]%
│   │   ├── Integration Test Coverage: [integration_test_coverage]%
│   │   ├── E2E Test Coverage: [e2e_test_coverage]%
│   │   └── Overall Coverage: [overall_test_coverage]%
│   ├── **Test Quality Metrics:**
│   │   ├── Test Reliability: [test_reliability_score]/100
│   │   ├── Test Speed: [test_execution_speed]/100
│   │   ├── Test Maintainability: [test_maintainability_score]/100
│   │   └── Test Effectiveness: [test_effectiveness_score]/100
│   ├── **Test Automation:**
│   │   ├── Automated Test Coverage: [automated_test_coverage]%
│   │   ├── CI/CD Integration: [test_cicd_integration_score]/100
│   │   ├── Test Parallelization: [test_parallelization_score]/100
│   │   └── Test Reporting: [test_reporting_score]/100
│   └── **Test Environment:**
│       ├── Test Environment Setup: [test_env_setup_score]/100
│       ├── Test Data Management: [test_data_management_score]/100
│       ├── Test Isolation: [test_isolation_score]/100
│       └── Test Performance: [test_performance_score]/100
├── 🎯 TESTING BEST PRACTICES:
│   ├── **Test Organization:**
│   │   ├── Test Structure: [test_structure_score]/100
│   │   ├── Test Naming: [test_naming_score]/100
│   │   ├── Test Documentation: [test_documentation_score]/100
│   │   └── Test Categorization: [test_categorization_score]/100
│   ├── **Test Implementation:**
│   │   ├── Test Clarity: [test_clarity_score]/100
│   │   ├── Test Independence: [test_independence_score]/100
│   │   ├── Test Repeatability: [test_repeatability_score]/100
│   │   └── Test Assertions: [test_assertions_score]/100
│   ├── **Mock and Stub Strategy:**
│   │   ├── Mock Usage: [mock_usage_score]/100
│   │   ├── Stub Quality: [stub_quality_score]/100
│   │   ├── Test Doubles: [test_doubles_score]/100
│   │   └── External Dependencies: [external_dependencies_score]/100
│   └── **Test Maintenance:**
│       ├── Test Refactoring: [test_refactoring_score]/100
│       ├── Test Cleanup: [test_cleanup_score]/100
│       ├── Test Migration: [test_migration_score]/100
│       └── Test Evolution: [test_evolution_score]/100
├── 🔧 TESTING TOOLS:
│   ├── **Testing Framework:**
│   │   ├── Framework: [testing_framework]
│   │   ├── Framework Version: [framework_version]
│   │   ├── Configuration: [test_config_score]/100
│   │   └── Plugin Integration: [plugin_integration_score]/100
│   ├── **Testing Utilities:**
│   │   ├── Assertion Libraries: [assertion_libraries_score]/100
│   │   ├── Test Utilities: [test_utilities_score]/100
│   │   ├── Test Helpers: [test_helpers_score]/100
│   │   └── Custom Matchers: [custom_matchers_score]/100
│   ├── **Code Coverage Tools:**
│   │   ├── Coverage Tool: [coverage_tool]
│   │   ├── Coverage Reporting: [coverage_reporting_score]/100
│   │   ├── Coverage Thresholds: [coverage_thresholds_score]/100
│   │   └── Coverage Analysis: [coverage_analysis_score]/100
│   └── **Testing Infrastructure:**
│       ├── Test Runner: [test_runner_score]/100
│       ├── Test Parallel Execution: [parallel_execution_score]/100
│       ├── Test Reporting: [test_reporting_score]/100
│       └── Test Analytics: [test_analytics_score]/100
└── 🚀 CONTINUOUS TESTING:
    ├── **CI/CD Integration:**
    │   ├── Continuous Integration: [ci_integration_score]/100
    │   ├── Automated Testing: [automated_testing_score]/100
    │   ├── Test Feedback Loop: [test_feedback_loop_score]/100
    │   └── Deployment Gates: [deployment_gates_score]/100
    ├── **Test Automation Pipeline:**
    │   ├── Pipeline Configuration: [pipeline_config_score]/100
    │   ├── Test Stages: [test_stages_score]/100
    │   ├── Failure Recovery: [failure_recovery_score]/100
    │   └── Performance Monitoring: [performance_monitoring_score]/100
    ├── **Quality Gates:**
    │   ├── Coverage Gates: [coverage_gates_score]/100
    │   ├── Performance Gates: [performance_gates_score]/100
    │   ├── Security Gates: [security_gates_score]/100
    │   └── Compliance Gates: [compliance_gates_score]/100
    └── **Test Optimization:**
        ├── Test Selection: [test_selection_score]/100
        ├── Test Prioritization: [test_prioritization_score]/100
        ├── Test Optimization: [test_optimization_score]/100
        └── Test Efficiency: [test_efficiency_score]/100

🛡️ DEVELOPMENT BEST PRACTICES:

├── 📝 CODE QUALITY:
│   ├── **Code Standards:**
│   │   ├── Coding Standards: [coding_standards_score]/100
│   │   ├── Style Guide Compliance: [style_guide_compliance]/100
│   │   ├── Code Consistency: [code_consistency_score]/100
│   │   └── Documentation Standards: [documentation_standards_score]/100
│   ├── **Code Review Process:**
│   │   ├── Review Checklist: [review_checklist_score]/100
│   │   ├── Review Quality: [review_quality_score]/100
│   │   ├── Review Timeliness: [review_timeliness_score]/100
│   │   └── Review Feedback: [review_feedback_score]/100
│   ├── **Static Analysis:**
│   │   ├── Linting Coverage: [linting_coverage]/100
│   │   ├── Type Checking: [type_checking_score]/100
│   │   ├── Code Analysis: [code_analysis_score]/100
│   │   └── Security Analysis: [security_analysis_score]/100
│   └── **Code Metrics:**
│       ├── Code Complexity: [code_complexity_score]/10
│       ├── Maintainability Index: [maintainability_index]/100
│       ├── Technical Debt Ratio: [technical_debt_ratio]%
│       └── Code Quality Score: [code_quality_score]/100
├── 🔄 DEVELOPMENT WORKFLOW:
│   ├── **Development Environment:**
│   │   ├── Environment Setup: [env_setup_score]/100
│   │   ├── Development Tools: [dev_tools_score]/100
│   │   ├── Configuration Management: [config_management_score]/100
│   │   └── Environment Consistency: [env_consistency_score]/100
│   ├── **Development Process:**
│   │   ├── Feature Development: [feature_dev_score]/100
│   │   ├── Bug Fixing Process: [bug_fixing_score]/100
│   │   ├── Refactoring Process: [refactoring_score]/100
│   │   └── Knowledge Sharing: [knowledge_sharing_score]/100
│   ├── **Quality Assurance:**
│   │   ├── QA Process: [qa_process_score]/100
│   │   ├── Error Detection: [error_detection_score]/100
│   │   ├── Issue Resolution: [issue_resolution_score]/100
│   │   └── Quality Metrics: [quality_metrics_score]/100
│   └── **Deployment Readiness:**
│       ├── Deployment Checklist: [deployment_checklist_score]/100
│       ├── Pre-deployment Testing: [pre_deployment_testing_score]/100
│       ├── Deployment Automation: [deployment_automation_score]/100
│       └── Post-deployment Monitoring: [post_deployment_monitoring_score]/100
├── 🔒 SECURITY PRACTICES:
│   ├── **Security in Development:**
│   │   ├── Secure Coding: [secure_coding_score]/100
│   │   ├── Vulnerability Prevention: [vulnerability_prevention_score]/100
│   │   ├── Security Testing: [security_testing_score]/100
│   │   └── Security Awareness: [security_awareness_score]/100
│   ├── **Dependency Management:**
│   │   ├── Dependency Scanning: [dependency_scanning_score]/100
│   │   ├── Vulnerability Monitoring: [vulnerability_monitoring_score]/100
│   │   ├── Update Management: [update_management_score]/100
│   │   └── License Compliance: [license_compliance_score]/100
│   └── **Data Protection:**
│       ├── Data Handling: [data_handling_score]/100
│       ├── Privacy Compliance: [privacy_compliance_score]/100
│       ├── Data Encryption: [data_encryption_score]/100
│       └── Access Control: [access_control_score]/100
└── 📊 PERFORMANCE OPTIMIZATION:
    ├── **Performance Monitoring:**
    │   ├── Performance Metrics: [performance_metrics_score]/100
    │   ├── Performance Testing: [performance_testing_score]/100
    │   ├── Performance Optimization: [performance_optimization_score]/100
    │   └── Performance Budgets: [performance_budgets_score]/100
    ├── **Resource Optimization:**
    │   ├── Memory Usage: [memory_usage_optimization]/100
    │   ├── CPU Usage: [cpu_usage_optimization]/100
    │   ├── Network Optimization: [network_optimization_score]/100
    │   └── Storage Optimization: [storage_optimization_score]/100
    └── **Scalability Planning:**
        ├── Scalability Assessment: [scalability_assessment_score]/100
        ├── Load Testing: [load_testing_score]/100
        ├── Capacity Planning: [capacity_planning_score]/100
        └── Performance Scaling: [performance_scaling_score]/100

🔧 WORKFLOW OPTIMIZATION:

├── 🚀 IMMEDIATE IMPROVEMENTS:
│   ├── [immediate_improvement_1]: [improvement_description_1]
│   ├── [immediate_improvement_2]: [improvement_description_2]
│   └── [immediate_improvement_3]: [improvement_description_3]
├── 📊 STRATEGIC ENHANCEMENTS:
│   ├── [strategic_enhancement_1]: [enhancement_description_1]
│   ├── [strategic_enhancement_2]: [enhancement_description_2]
│   └── [strategic_enhancement_3]: [enhancement_description_3]
├── 🔄 AUTOMATION OPPORTUNITIES:
│   ├── [automation_opportunity_1]: [automation_description_1]
│   ├── [automation_opportunity_2]: [automation_description_2]
│   └── [automation_opportunity_3]: [automation_description_3]
└── 🎯 EFFICIENCY GAINS:
    ├── [efficiency_gain_1]: [gain_description_1]
    ├── [efficiency_gain_2]: [gain_description_2]
    └── [efficiency_gain_3]: [gain_description_3]

💡 NEXT STEPS:

├── 🔧 Immediate Actions:
│   ├── [immediate_action_1]: [action_description_1]
│   └── [immediate_action_2]: [action_description_2]
├── 📊 Workflow Optimization:
│   ├── [workflow_action_1]: [workflow_description_1]
│   └── [workflow_action_2]: [workflow_description_2]
└── 🎯 Long-term Strategy:
    ├── [strategy_action_1]: [strategy_description_1]
    └── [strategy_action_2]: [strategy_description_2]
```

## Context Store Output

**Save development workflow analysis to:**
`.claude/analysis/development-workflow-[session-id]/workflow-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "development-workflow-agent",
  "target": "$ARGUMENTS",
  "analysis": {
    "development_commands": {
      "server_management": {},
      "build_commands": {},
      "testing_commands": {},
      "storybook_commands": {},
      "extension_commands": {},
      "linting_commands": {}
    },
    "git_workflow": {
      "branch_management": {},
      "commit_practices": {},
      "pull_request_workflow": {},
      "repository_health": {}
    },
    "testing_workflow": {
      "testing_strategy": {},
      "testing_best_practices": {},
      "testing_tools": {},
      "continuous_testing": {}
    },
    "development_best_practices": {
      "code_quality": {},
      "development_workflow": {},
      "security_practices": {},
      "performance_optimization": {}
    },
    "workflow_optimization": {
      "immediate_improvements": [],
      "strategic_enhancements": [],
      "automation_opportunities": [],
      "efficiency_gains": []
    }
  }
}
```

## MCP Integration Examples

### Development Environment Analysis
```javascript
// Analyze development server status
const serverStatus = await analyzeServerStatus();

// Check package management
const packageHealth = await analyzePackageHealth();
```

### Git Workflow Analysis
```javascript
// Analyze git workflow patterns
const gitAnalysis = await analyzeGitWorkflow();

// Check repository health
const repoHealth = await analyzeRepositoryHealth();
```

### Testing Workflow Assessment
```javascript
// Analyze test coverage and quality
const testingAnalysis = await analyzeTestingWorkflow();

// Check CI/CD integration
const cicdHealth = await analyzeCICDIntegration();
```

## Success Criteria

Development workflow agent should provide:
- **Comprehensive workflow analysis** with optimization recommendations
- **Interactive command guidance** with context-aware suggestions
- **Git workflow optimization** with best practices enforcement
- **Testing strategy analysis** with quality metrics
- **Development best practices** with actionable improvements

**Time Target:** 3-4 minutes for comprehensive workflow analysis
**Context Window:** Optimized for development workflow focus
**Handoff:** Complete workflow optimization roadmap with implementation guidance