# /list-plans - Manage Saved Analysis Plans

## Purpose
View, organize, and manage all saved implementation plans from the Claude analysis directory.

## Usage

### Basic Listing
```bash
/list-plans                     # Show all saved plans
/list-plans --type=feature      # Show only feature plans
/list-plans --status=pending    # Show plans by status
/list-plans --recent             # Show recent plans only
```

### Advanced Options
```bash
/list-plans --sort=date         # Sort by creation date
/list-plans --sort=priority     # Sort by priority
/list-plans --sort=status       # Sort by implementation status
/list-plans --details           # Show detailed information
/list-plans --search=[term]     # Search plans by name/content
```

## Output Formats

### Default View
```
📋 SAVED PLANS OVERVIEW

📊 Summary:
├── Total plans: 12
├── Pending: 8
├── In Progress: 3
├── Completed: 1
└── Last updated: 2025-07-15

🔍 Recent Plans:
├── 🆕 feature-user-dashboard (pending) - 2 hours ago
├── 🔧 ultra-debug-spinner-fix (completed) - 1 day ago
├── 🏗️ architecture-system-refactor (in-progress) - 3 days ago
├── 🛡️ security-audit-fixes (pending) - 1 week ago
└── 📊 performance-optimization (pending) - 2 weeks ago

💡 Quick Actions:
├── Execute plan: /run-plan [name]
├── View plan: /plan-status [name]
├── Save new plan: /save-plan [name]
└── Archive completed: /archive-plan [name]
```

### Detailed View
```bash
/list-plans --details
```

```
📋 DETAILED PLANS OVERVIEW

🆕 FEATURE PLANS (5 total)
├── 📊 feature-user-dashboard
│   ├── Created: 2025-07-15 14:30:00
│   ├── Status: pending
│   ├── Priority: high
│   ├── Steps: 8 total
│   ├── Estimated time: 45 minutes
│   └── Description: User analytics dashboard with real-time metrics
│
├── 🔐 feature-user-authentication
│   ├── Created: 2025-07-14 16:45:00
│   ├── Status: in-progress (step 3/7)
│   ├── Priority: high
│   ├── Steps: 7 total
│   ├── Estimated time: 60 minutes
│   └── Description: OAuth2 authentication system with JWT tokens
│
└── 🔔 feature-notifications-system
    ├── Created: 2025-07-13 10:15:00
    ├── Status: pending
    ├── Priority: medium
    ├── Steps: 6 total
    ├── Estimated time: 35 minutes
    └── Description: Real-time notifications with email and push support

🔧 DEBUG PLANS (4 total)
├── 🐛 ultra-debug-spinner-fix
│   ├── Created: 2025-07-15 16:19:15
│   ├── Status: completed
│   ├── Priority: high
│   ├── Steps: 8 total
│   ├── Completion time: 23 minutes
│   └── Description: Fix infinite purple spinner in ArticleBanner
│
├── 🚨 debug-memory-leak
│   ├── Created: 2025-07-12 09:30:00
│   ├── Status: pending
│   ├── Priority: medium
│   ├── Steps: 5 total
│   ├── Estimated time: 30 minutes
│   └── Description: Memory leak in React component lifecycle
│
└── 🐌 debug-slow-queries
    ├── Created: 2025-07-11 15:20:00
    ├── Status: in-progress (step 2/4)
    ├── Priority: medium
    ├── Steps: 4 total
    ├── Estimated time: 25 minutes
    └── Description: Optimize slow database queries in article search

🏗️ ARCHITECTURE PLANS (3 total)
├── 🏛️ architecture-system-refactor
│   ├── Created: 2025-07-10 11:00:00
│   ├── Status: in-progress (step 5/12)
│   ├── Priority: low
│   ├── Steps: 12 total
│   ├── Estimated time: 120 minutes
│   └── Description: Refactor monolithic components into microservices
│
├── 🔒 architecture-security-hardening
│   ├── Created: 2025-07-08 14:45:00
│   ├── Status: pending
│   ├── Priority: high
│   ├── Steps: 9 total
│   ├── Estimated time: 90 minutes
│   └── Description: Security audit and hardening recommendations
│
└── 📈 architecture-performance-optimization
    ├── Created: 2025-07-07 16:30:00
    ├── Status: pending
    ├── Priority: medium
    ├── Steps: 7 total
    ├── Estimated time: 60 minutes
    └── Description: System-wide performance optimization strategy
```

### Filtered Views

#### By Status
```bash
/list-plans --status=pending
```

```
📋 PENDING PLANS (8 total)

🔥 HIGH PRIORITY (3 plans)
├── 🔐 feature-user-authentication (7 steps, ~60 min)
├── 🔒 architecture-security-hardening (9 steps, ~90 min)
└── 🛡️ security-audit-fixes (6 steps, ~40 min)

🟡 MEDIUM PRIORITY (4 plans)
├── 🔔 feature-notifications-system (6 steps, ~35 min)
├── 🚨 debug-memory-leak (5 steps, ~30 min)
├── 🐌 debug-slow-queries (4 steps, ~25 min)
└── 📈 architecture-performance-optimization (7 steps, ~60 min)

🟢 LOW PRIORITY (1 plan)
└── 🏛️ architecture-system-refactor (12 steps, ~120 min)

💡 Recommended Next: feature-user-authentication (high priority, ready to execute)
```

#### By Type
```bash
/list-plans --type=feature
```

```
📋 FEATURE PLANS (5 total)

🚀 READY TO EXECUTE (2 plans)
├── 📊 feature-user-dashboard (pending, high priority)
└── 🔔 feature-notifications-system (pending, medium priority)

⏳ IN PROGRESS (1 plan)
└── 🔐 feature-user-authentication (step 3/7, high priority)

✅ COMPLETED (1 plan)
└── 🎨 feature-ui-redesign (completed 2 days ago)

🗃️ ARCHIVED (1 plan)
└── 📱 feature-mobile-app (archived 1 week ago)
```

### Search Functionality
```bash
/list-plans --search=authentication
```

```
📋 SEARCH RESULTS: "authentication"

🔍 Found 3 matching plans:

├── 🔐 feature-user-authentication
│   ├── Status: in-progress
│   ├── Match: Plan name
│   └── Description: OAuth2 authentication system with JWT tokens
│
├── 🔒 architecture-security-hardening
│   ├── Status: pending
│   ├── Match: Plan content
│   └── Description: Security audit including authentication hardening
│
└── 🛡️ security-audit-fixes
    ├── Status: pending
    ├── Match: Implementation steps
    └── Description: Fix authentication vulnerabilities
```

## Plan Management Actions

### Quick Actions
```
📋 PLAN MANAGEMENT ACTIONS

🚀 Execution Commands:
├── Execute plan: /run-plan [name]
├── Check status: /plan-status [name]
├── Resume execution: /run-plan [name] --continue
└── Validate plan: /run-plan [name] --validate

📁 Organization Commands:
├── Archive completed: /archive-plan [name]
├── Delete plan: /delete-plan [name]
├── Duplicate plan: /copy-plan [name] [new-name]
└── Update plan: /save-plan [name] --update

🔍 Analysis Commands:
├── Compare plans: /compare-plans [plan1] [plan2]
├── Plan dependencies: /plan-dependencies [name]
├── Estimate timeline: /plan-timeline [name]
└── Resource requirements: /plan-resources [name]
```

### Batch Operations
```bash
/list-plans --batch=execute --status=pending --priority=high
```

```
🔄 BATCH EXECUTION: High Priority Pending Plans

📋 Selected Plans (3 total):
├── 🔐 feature-user-authentication
├── 🔒 architecture-security-hardening
└── 🛡️ security-audit-fixes

⏱️ Estimated Total Time: 190 minutes (~3.2 hours)

🚀 Execution Order:
1. feature-user-authentication (60 min)
2. security-audit-fixes (40 min)
3. architecture-security-hardening (90 min)

💡 Execute all? [Y/n]
```

## Plan Statistics

### Overview Dashboard
```bash
/list-plans --stats
```

```
📊 PLAN STATISTICS DASHBOARD

📈 Execution Metrics:
├── Total plans created: 47
├── Successfully completed: 32 (68%)
├── Currently in progress: 8 (17%)
├── Pending execution: 7 (15%)
└── Success rate: 91.4%

⏱️ Time Analysis:
├── Average execution time: 42 minutes
├── Total time saved: 18.3 hours
├── Fastest completion: 12 minutes (debug-console-error)
├── Longest completion: 156 minutes (architecture-migration)
└── Most common duration: 30-60 minutes (67% of plans)

🏆 Most Successful Plan Types:
├── Debug plans: 96% success rate
├── Feature plans: 89% success rate
├── Architecture plans: 83% success rate
└── Security plans: 91% success rate

📅 Activity Trends:
├── Most productive day: Tuesday (avg 3.2 plans)
├── Peak hours: 2-4 PM (40% of executions)
├── Completion rate: 2.1 plans/day
└── Planning sessions: 1.3 plans/session
```

### Plan Health
```bash
/list-plans --health
```

```
🏥 PLAN HEALTH ANALYSIS

✅ HEALTHY PLANS (10 total)
├── Recent activity
├── Clear implementation steps
├── Realistic time estimates
└── Good success probability

⚠️ ATTENTION NEEDED (2 plans)
├── 🏛️ architecture-system-refactor
│   ├── Issue: Stale (no activity in 5 days)
│   ├── Risk: Dependencies may have changed
│   └── Action: Review and update plan
│
└── 📱 feature-mobile-app
    ├── Issue: Blocked dependencies
    ├── Risk: Cannot execute until API v2 ready
    └── Action: Update dependencies or reschedule

❌ PROBLEMATIC PLANS (1 total)
└── 🔧 debug-legacy-code
    ├── Issue: Outdated implementation approach
    ├── Risk: High failure probability
    └── Action: Regenerate plan with current standards
```

## Interactive Features

### Plan Explorer
```
📋 INTERACTIVE PLAN EXPLORER

🔍 Filter Options:
├── [1] Show all plans
├── [2] Filter by type (feature/debug/architecture)
├── [3] Filter by status (pending/progress/completed)
├── [4] Filter by priority (high/medium/low)
├── [5] Search by keyword
└── [6] Show statistics

📊 Sort Options:
├── [a] Sort by date (newest first)
├── [b] Sort by priority (highest first)
├── [c] Sort by status (pending first)
├── [d] Sort by completion time
└── [e] Sort alphabetically

🚀 Quick Actions:
├── [Enter] Execute selected plan
├── [Space] View plan details
├── [d] Delete plan
├── [a] Archive plan
└── [q] Quit explorer

> Select option: _
```

### Plan Comparison
```bash
/list-plans --compare=feature-auth-v1,feature-auth-v2
```

```
📊 PLAN COMPARISON: Authentication Systems

🔍 Plan 1: feature-auth-v1
├── Created: 2025-07-01
├── Approach: Session-based authentication
├── Complexity: Medium (6 steps)
├── Time estimate: 45 minutes
└── Security level: Standard

🔍 Plan 2: feature-auth-v2
├── Created: 2025-07-14
├── Approach: JWT with OAuth2
├── Complexity: High (7 steps)
├── Time estimate: 60 minutes
└── Security level: Enhanced

📈 Comparison Analysis:
├── ✅ Plan 2 has better security
├── ✅ Plan 2 supports modern standards
├── ⚠️ Plan 2 requires more time
├── ⚠️ Plan 2 has higher complexity
└── 💡 Recommendation: Use Plan 2 for new projects

🚀 Action: Execute feature-auth-v2? [Y/n]
```

This command provides comprehensive plan management capabilities, enabling efficient organization and execution of complex project workflows.