# /run-plan - Execute Saved Implementation Plans

## Purpose
Execute previously saved implementation plans from the Claude analysis directory, tracking progress and ensuring systematic implementation.

## Usage

### Basic Execution
```bash
/run-plan [plan-name]           # Execute saved plan
/run-plan [plan-name] --step=3  # Start from specific step
/run-plan [plan-name] --check   # Check implementation status
```

### Advanced Options
```bash
/run-plan [plan-name] --dry-run     # Preview execution without changes
/run-plan [plan-name] --priority=high  # Execute only high-priority items
/run-plan [plan-name] --continue    # Resume from last checkpoint
/run-plan [plan-name] --validate    # Validate plan before execution
```

## Execution Flow

### 1. Plan Loading
```
🔍 LOADING PLAN: feature-user-dashboard

📁 Plan Details:
├── Created: 2025-07-15
├── Type: feature
├── Status: pending
├── Steps: 8 total
└── Estimated Time: 45 minutes

📋 Implementation Steps:
├── ✅ Step 1: Database schema analysis (completed)
├── ⏳ Step 2: Component architecture (in-progress)
├── ⏸️ Step 3: API integration (pending)
└── ⏸️ Step 4: Testing implementation (pending)
```

### 2. Pre-execution Validation
```
🔍 VALIDATING PLAN: feature-user-dashboard

📊 Validation Results:
├── ✅ All required files exist
├── ✅ Database connection available
├── ✅ Dependencies installed
├── ⚠️ Warning: Port 6123 not available
└── ✅ Git repository clean

🚀 Ready to execute? [Y/n]
```

### 3. Step-by-Step Execution
```
🚀 EXECUTING PLAN: feature-user-dashboard

📋 Step 2/8: Component Architecture
├── 📁 Creating components/dashboard/
├── 📄 Writing DashboardLayout.tsx
├── 📄 Writing DashboardHeader.tsx
├── 🔧 Updating routing configuration
└── ✅ Step 2 completed (3 minutes)

⏭️ Next: Step 3 - API Integration
```

### 4. Progress Tracking
```
📊 EXECUTION PROGRESS: feature-user-dashboard

⏱️ Overall Progress: [██████░░░░] 60% Complete
├── ✅ Database Analysis (5 min)
├── ✅ Component Architecture (8 min)
├── ✅ API Integration (12 min)
├── ⏳ Testing Implementation (in progress)
└── ⏸️ Documentation (pending)

📈 Performance:
├── Time elapsed: 25 minutes
├── Estimated remaining: 15 minutes
└── Success rate: 100%
```

## Plan Types

### Feature Plans
```bash
/run-plan user-dashboard
# Executes: .claude/analysis/feature-user-dashboard/implementation-plan.md
```

**Execution includes:**
- Database schema updates
- Component creation
- API integration
- Testing setup
- Documentation

### Debug Plans  
```bash
/run-plan spinner-fix
# Executes: .claude/analysis/ultra-debug-spinner-fix/ultra-solutions-implementation-plan.md
```

**Execution includes:**
- Code fixes implementation
- Error handling updates
- Testing verification
- Performance monitoring

### Architecture Plans
```bash
/run-plan system-refactor
# Executes: .claude/analysis/architecture-system-refactor/implementation-plan.md
```

**Execution includes:**
- System architecture updates
- Integration point changes
- Performance optimizations
- Security enhancements

## Execution Strategies

### Sequential Execution (Default)
```
📋 SEQUENTIAL EXECUTION: feature-user-dashboard

Step 1 → Step 2 → Step 3 → Step 4 → Complete
├── Each step completes before next begins
├── Dependencies respected
├── Error handling at each step
└── Progress checkpoints saved
```

### Parallel Execution
```bash
/run-plan [plan-name] --parallel
```

```
📋 PARALLEL EXECUTION: feature-user-dashboard

Step 1 ┐
Step 2 ├── Running in parallel
Step 3 ┘
├── Independent steps run simultaneously
├── Dependency blocking respected
└── Faster completion time
```

### Priority-based Execution
```bash
/run-plan [plan-name] --priority=high
```

```
📋 PRIORITY EXECUTION: feature-user-dashboard

🔴 High Priority:
├── ✅ Critical bug fixes
├── ⏳ Security updates
└── ⏸️ Database migrations

🟡 Medium Priority: (skipped)
🟢 Low Priority: (skipped)
```

## Error Handling

### Step Failures
```
❌ STEP FAILED: API Integration

📋 Error Details:
├── Error: Connection refused to localhost:8080
├── Step: 3 of 8
├── Time: 2025-07-15 16:30:42
└── Context: Database connection setup

🔧 Recovery Options:
├── 1. Retry step: /run-plan [name] --retry=3
├── 2. Skip step: /run-plan [name] --skip=3
├── 3. Fix manually: /run-plan [name] --manual=3
└── 4. Abort execution: /run-plan [name] --abort
```

### Plan Validation Failures
```
❌ PLAN VALIDATION FAILED: feature-user-dashboard

📋 Issues Found:
├── Missing file: src/components/ui/button.tsx
├── Dependency conflict: react@17 vs react@18
├── Port conflict: 6123 already in use
└── Git dirty state: 3 uncommitted changes

🔧 Fix Required Before Execution:
├── Install missing dependencies: pnpm install
├── Resolve port conflicts: pnpm kill:servers
├── Commit changes: git add . && git commit
└── Update plan: /save-plan [name] --update
```

## Progress Persistence

### Checkpoint System
```
📊 CHECKPOINT SAVED: feature-user-dashboard

📋 Progress State:
├── Completed steps: 1, 2, 3
├── Current step: 4
├── Time elapsed: 25 minutes
├── Success rate: 100%
└── Next checkpoint: Step 6 completion

🔄 Resume Command: /run-plan user-dashboard --continue
```

### State Recovery
```bash
/run-plan [plan-name] --continue
```

```
🔄 RESUMING EXECUTION: feature-user-dashboard

📋 Last Checkpoint:
├── Step 4: Testing Implementation (50% complete)
├── Last saved: 2025-07-15 16:25:00
├── Elapsed time: 25 minutes
└── Remaining time: ~15 minutes

🚀 Continue from checkpoint? [Y/n]
```

## Integration with Development Workflow

### Git Integration
```
📊 GIT INTEGRATION: feature-user-dashboard

🌿 Branch Management:
├── Created branch: feature/user-dashboard
├── Committed changes: 3 files
├── Pushed to remote: origin/feature/user-dashboard
└── Ready for PR: /create-pr user-dashboard

📋 Commit History:
├── feat: add dashboard layout component
├── feat: implement dashboard header
└── feat: add dashboard routing
```

### Testing Integration
```
🧪 TESTING INTEGRATION: feature-user-dashboard

📋 Test Execution:
├── ✅ Unit tests: 15 passed, 0 failed
├── ✅ Integration tests: 8 passed, 0 failed  
├── ✅ E2E tests: 3 passed, 0 failed
└── ✅ All tests passing

🔍 Coverage Report:
├── Statements: 95.2%
├── Branches: 91.8%
├── Functions: 100%
└── Lines: 94.7%
```

## Plan Execution Examples

### Feature Implementation
```bash
# Execute complete feature plan
/run-plan user-authentication-system

# Execute specific priority level
/run-plan user-authentication-system --priority=high

# Resume from checkpoint
/run-plan user-authentication-system --continue
```

### Debug Fix Implementation
```bash
# Execute debug fixes
/run-plan spinner-loading-fix

# Validate before execution
/run-plan spinner-loading-fix --validate

# Dry run to preview changes
/run-plan spinner-loading-fix --dry-run
```

### Architecture Changes
```bash
# Execute system refactor
/run-plan database-migration-v2

# Execute with parallel processing
/run-plan database-migration-v2 --parallel

# Execute specific step
/run-plan database-migration-v2 --step=3
```

## Success Metrics

### Execution Completion
```
✅ PLAN EXECUTION COMPLETED: feature-user-dashboard

📊 Execution Summary:
├── Total steps: 8
├── Completed: 8 (100%)
├── Failed: 0 (0%)
├── Skipped: 0 (0%)
└── Total time: 42 minutes

🎯 Success Metrics:
├── ✅ All tests passing
├── ✅ No console errors
├── ✅ Performance benchmarks met
└── ✅ Security checks passed

🚀 Next Steps:
├── Create PR: /create-pr user-dashboard
├── Deploy to staging: /deploy staging
└── Archive plan: /archive-plan user-dashboard
```

This command enables systematic execution of saved plans, ensuring consistent implementation and progress tracking across complex projects.