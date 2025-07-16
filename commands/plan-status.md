# /plan-status - Check Implementation Progress

## Purpose
Monitor the implementation status of saved plans, track progress, and view detailed execution information.

## Usage

### Basic Status Check
```bash
/plan-status [plan-name]        # Check specific plan status
/plan-status --all              # Check all plans status
/plan-status --active           # Check only active/in-progress plans
/plan-status --recent           # Check recently updated plans
```

### Advanced Options
```bash
/plan-status [plan-name] --details     # Detailed progress view
/plan-status [plan-name] --history     # Show execution history
/plan-status [plan-name] --timeline    # Show progress timeline
/plan-status [plan-name] --metrics     # Show performance metrics
```

## Status Display Formats

### Single Plan Status
```bash
/plan-status feature-user-dashboard
```

```
📊 PLAN STATUS: feature-user-dashboard

📋 Plan Overview:
├── Created: 2025-07-15 14:30:00
├── Type: Feature Plan
├── Priority: High
├── Status: In Progress
└── Last updated: 2025-07-15 16:45:00

⏱️ Progress Overview:
├── Overall: [███████░░░] 70% Complete
├── Elapsed time: 42 minutes
├── Estimated remaining: 18 minutes
├── Success rate: 100%
└── Next milestone: Testing Phase

📋 Step Progress:
├── ✅ Step 1: Database Analysis (5 min) - Completed
├── ✅ Step 2: Component Architecture (8 min) - Completed
├── ✅ Step 3: API Integration (12 min) - Completed
├── ✅ Step 4: UI Implementation (15 min) - Completed
├── ✅ Step 5: State Management (7 min) - Completed
├── ⏳ Step 6: Testing Setup (in progress, 5 min elapsed)
├── ⏸️ Step 7: Error Handling (pending)
└── ⏸️ Step 8: Documentation (pending)

🎯 Current Task: Setting up unit tests for dashboard components
└── Progress: 60% complete, 3 of 5 test suites configured

🚀 Quick Actions:
├── Continue execution: /run-plan feature-user-dashboard --continue
├── View details: /plan-status feature-user-dashboard --details
├── Check issues: /plan-status feature-user-dashboard --issues
└── Abort execution: /run-plan feature-user-dashboard --abort
```

### Multiple Plans Status
```bash
/plan-status --all
```

```
📊 ALL PLANS STATUS OVERVIEW

🔥 HIGH PRIORITY (3 plans)
├── 🔐 feature-user-authentication
│   ├── Status: In Progress (step 3/7)
│   ├── Progress: [████░░░░░░] 43%
│   ├── Time: 25 min elapsed, ~35 min remaining
│   └── Issue: None
│
├── 🔒 architecture-security-hardening
│   ├── Status: Pending
│   ├── Progress: [░░░░░░░░░░] 0%
│   ├── Time: Not started
│   └── Issue: Blocked by authentication completion
│
└── 🛡️ security-audit-fixes
    ├── Status: Pending
    ├── Progress: [░░░░░░░░░░] 0%
    ├── Time: Not started
    └── Issue: None

🟡 MEDIUM PRIORITY (2 plans)
├── 📊 feature-user-dashboard
│   ├── Status: In Progress (step 6/8)
│   ├── Progress: [███████░░░] 70%
│   ├── Time: 42 min elapsed, ~18 min remaining
│   └── Issue: None
│
└── 🔔 feature-notifications-system
    ├── Status: Pending
    ├── Progress: [░░░░░░░░░░] 0%
    ├── Time: Not started
    └── Issue: None

🟢 LOW PRIORITY (1 plan)
└── 🏛️ architecture-system-refactor
    ├── Status: In Progress (step 5/12)
    ├── Progress: [████░░░░░░] 42%
    ├── Time: 68 min elapsed, ~82 min remaining
    └── Issue: Dependency conflicts detected

📈 Summary:
├── Total plans: 6
├── In progress: 3 (50%)
├── Pending: 3 (50%)
├── Completed today: 0
└── Average completion: 51.7%
```

### Detailed Status View
```bash
/plan-status feature-user-dashboard --details
```

```
📊 DETAILED STATUS: feature-user-dashboard

📋 Plan Information:
├── Plan ID: feature-user-dashboard-20250715
├── Created: 2025-07-15 14:30:00
├── Type: Feature Plan
├── Priority: High
├── Status: In Progress
├── Last updated: 2025-07-15 16:45:00
├── Estimated total time: 60 minutes
├── Actual time spent: 42 minutes
└── Success probability: 94%

⏱️ Time Breakdown:
├── Planning time: 8 minutes
├── Execution time: 42 minutes
├── Debug time: 3 minutes
├── Testing time: 5 minutes (ongoing)
└── Documentation time: 0 minutes

📋 Detailed Step Progress:
├── ✅ Step 1: Database Analysis
│   ├── Started: 14:45:00
│   ├── Completed: 14:50:00
│   ├── Duration: 5 minutes
│   ├── Status: Success
│   └── Output: 3 table schemas created
│
├── ✅ Step 2: Component Architecture  
│   ├── Started: 14:50:00
│   ├── Completed: 14:58:00
│   ├── Duration: 8 minutes
│   ├── Status: Success
│   └── Output: 5 components structured
│
├── ✅ Step 3: API Integration
│   ├── Started: 14:58:00
│   ├── Completed: 15:10:00
│   ├── Duration: 12 minutes
│   ├── Status: Success
│   └── Output: 8 API endpoints integrated
│
├── ✅ Step 4: UI Implementation
│   ├── Started: 15:10:00
│   ├── Completed: 15:25:00
│   ├── Duration: 15 minutes
│   ├── Status: Success
│   └── Output: Dashboard UI complete
│
├── ✅ Step 5: State Management
│   ├── Started: 15:25:00
│   ├── Completed: 15:32:00
│   ├── Duration: 7 minutes
│   ├── Status: Success
│   └── Output: Redux store configured
│
├── ⏳ Step 6: Testing Setup
│   ├── Started: 15:32:00
│   ├── Current time: 15:37:00
│   ├── Duration: 5 minutes (ongoing)
│   ├── Status: In Progress (60% complete)
│   ├── Substeps: 
│   │   ├── ✅ Unit test configuration
│   │   ├── ✅ Integration test setup
│   │   ├── ✅ Mock data creation
│   │   ├── ⏳ Component testing (in progress)
│   │   └── ⏸️ E2E test configuration
│   └── Current task: Testing DashboardHeader component
│
├── ⏸️ Step 7: Error Handling
│   ├── Status: Pending
│   ├── Dependencies: Step 6 completion
│   ├── Estimated time: 8 minutes
│   └── Description: Implement error boundaries and fallbacks
│
└── ⏸️ Step 8: Documentation
    ├── Status: Pending
    ├── Dependencies: Step 7 completion
    ├── Estimated time: 5 minutes
    └── Description: Update component documentation

🏥 Health Status:
├── Overall health: Excellent
├── No blocking issues
├── Performance: On track
├── Resource usage: Normal
└── Dependencies: All available

🎯 Next Actions:
├── Complete component testing (2 more components)
├── Set up E2E test configuration
├── Proceed to error handling implementation
└── Update documentation
```

## Status Categories

### Plan States
```
📊 PLAN STATUS CATEGORIES

✅ COMPLETED
├── All steps successfully executed
├── Tests passing
├── Documentation updated
├── No outstanding issues
└── Ready for deployment

⏳ IN PROGRESS
├── Currently executing steps
├── Progress tracking active
├── No blocking issues
├── Within estimated timeframe
└── Regular progress updates

⏸️ PENDING
├── Ready for execution
├── All dependencies met
├── No blocking issues
├── Awaiting execution command
└── Plans validated

⚠️ BLOCKED
├── Cannot proceed
├── Dependencies not met
├── External issues
├── Requires manual intervention
└── Issue resolution needed

❌ FAILED
├── Execution failed
├── Errors encountered
├── Requires investigation
├── Manual fixes needed
└── Retry or redesign required

🗃️ ARCHIVED
├── Completed and stored
├── No longer active
├── Historical reference
├── Can be restored
└── Cleanup eligible
```

### Issue Detection
```
🚨 ISSUE ANALYSIS: feature-user-dashboard

⚠️ WARNINGS (2 found)
├── Step 6: Test coverage below 90% (currently 87%)
├── Step 4: Performance benchmark missed by 50ms
└── Impact: Low - can proceed with monitoring

🔴 ERRORS (0 found)
└── No blocking errors detected

🟡 DEPENDENCIES (1 pending)
├── External API rate limiting
├── Impact: Medium - may slow Step 3
├── Workaround: Implement request queuing
└── Status: In progress

💡 RECOMMENDATIONS
├── Increase test coverage in UserProfile component
├── Optimize dashboard rendering performance
├── Add error boundary to dashboard layout
└── Consider caching strategy for API responses
```

## Execution History

### Timeline View
```bash
/plan-status feature-user-dashboard --timeline
```

```
⏱️ EXECUTION TIMELINE: feature-user-dashboard

📅 2025-07-15

14:30:00 ┌─ Plan created
14:42:00 ├─ Execution started
14:45:00 ├─ Step 1: Database Analysis (started)
14:50:00 ├─ Step 1: Database Analysis (completed) ✅
14:50:00 ├─ Step 2: Component Architecture (started)
14:58:00 ├─ Step 2: Component Architecture (completed) ✅
14:58:00 ├─ Step 3: API Integration (started)
15:10:00 ├─ Step 3: API Integration (completed) ✅
15:10:00 ├─ Step 4: UI Implementation (started)
15:25:00 ├─ Step 4: UI Implementation (completed) ✅
15:25:00 ├─ Step 5: State Management (started)
15:32:00 ├─ Step 5: State Management (completed) ✅
15:32:00 ├─ Step 6: Testing Setup (started)
15:37:00 ├─ Step 6: Testing Setup (in progress) ⏳
         └─ Current time

📊 Timeline Statistics:
├── Total execution time: 42 minutes
├── Average step time: 9.4 minutes
├── Fastest step: Step 1 (5 minutes)
├── Slowest step: Step 4 (15 minutes)
├── Success rate: 100%
└── Estimated completion: 15:55:00
```

### Performance Metrics
```bash
/plan-status feature-user-dashboard --metrics
```

```
📈 PERFORMANCE METRICS: feature-user-dashboard

⏱️ Time Metrics:
├── Planned time: 60 minutes
├── Actual time: 42 minutes (70% complete)
├── Efficiency: 105% (ahead of schedule)
├── Time per step: 7.0 minutes average
└── Completion rate: 1.67 steps/hour

🎯 Quality Metrics:
├── Success rate: 100%
├── Error rate: 0%
├── Retry rate: 0%
├── Test coverage: 87%
└── Performance score: 94/100

🔄 Resource Metrics:
├── CPU usage: 23% average
├── Memory usage: 145 MB peak
├── Network requests: 247 total
├── Database queries: 89 total
└── File changes: 23 files modified

📊 Comparison with Similar Plans:
├── Time efficiency: 15% faster than average
├── Quality score: 8% higher than average
├── Resource usage: 12% lower than average
└── Success rate: Equal to average (100%)

🏆 Performance Grade: A- (92/100)
├── Excellent time management
├── Good quality metrics
├── Efficient resource usage
└── Room for test coverage improvement
```

## Integration Commands

### Status-Based Actions
```
🚀 STATUS-BASED ACTIONS

📊 Current Status: In Progress (Step 6/8)

💡 Available Actions:
├── Continue execution: /run-plan feature-user-dashboard --continue
├── Pause execution: /run-plan feature-user-dashboard --pause
├── Skip current step: /run-plan feature-user-dashboard --skip=6
├── Retry current step: /run-plan feature-user-dashboard --retry=6
├── View step details: /plan-status feature-user-dashboard --step=6
└── Abort execution: /run-plan feature-user-dashboard --abort

⚠️ Blocked Status Actions:
├── Identify blocker: /plan-status feature-user-dashboard --issues
├── Resolve dependencies: /plan-status feature-user-dashboard --dependencies
├── Force execution: /run-plan feature-user-dashboard --force
└── Redesign plan: /save-plan feature-user-dashboard --update

✅ Completed Status Actions:
├── View results: /plan-status feature-user-dashboard --results
├── Archive plan: /archive-plan feature-user-dashboard
├── Create follow-up: /new-feature feature-user-dashboard-v2
└── Deploy changes: /deploy feature-user-dashboard
```

This command provides comprehensive visibility into plan execution, enabling effective monitoring and management of complex implementation projects.