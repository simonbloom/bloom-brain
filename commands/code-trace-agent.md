# Code Trace Agent - Execution Analysis

Specialized agent for tracing code execution, analyzing control flow, and identifying logic issues for: **$ARGUMENTS**

## Agent Purpose
This agent focuses exclusively on code execution analysis, control flow tracing, variable state tracking, and logic error identification through static and dynamic analysis.

## Analysis Scope
- Code execution path tracing
- Variable state analysis throughout execution
- Control flow and branching analysis
- Function call stack examination
- Logic error identification
- Dead code and unreachable code detection

## MCP Tools Used
- **File System Tools**: Read source code, analyze file structure
- **Bash MCP**: Execute code analysis tools, run test suites
- **Context7 MCP**: Code analysis best practices, debugging techniques
- **Brave Search MCP**: Latest debugging tools and methodologies

## Analysis Process

### Phase 1: Static Code Analysis
**Code Structure Investigation:**
- Function dependency mapping
- Control flow graph construction
- Variable scope analysis
- Dead code identification
- Complexity analysis

### Phase 2: Dynamic Execution Tracing
**Runtime Behavior Analysis:**
- Execution path tracking
- Variable state changes
- Function call sequence
- Error propagation paths
- Performance bottleneck identification

### Phase 3: Logic Error Detection
**Code Logic Validation:**
- Conditional logic verification
- Loop termination analysis
- Edge case handling
- Error handling completeness
- Data flow consistency

## Output Format

```
🔍 CODE TRACE ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: code-trace-agent

📊 EXECUTION OVERVIEW:
├── 🎯 Code Coverage: [coverage_percentage]%
├── 🔄 Execution Paths: [total_paths] ([tested_paths] tested)
├── 🚨 Logic Errors: [logic_error_count]
├── 💀 Dead Code: [dead_code_percentage]%
└── 🔧 Complexity Score: [complexity_score]/10

🔄 EXECUTION FLOW ANALYSIS:
├── 📋 FUNCTION CALL HIERARCHY:
│   ├── Entry Points: [entry_point_count]
│   │   ├── [entry_point_1]: [function_name_1]
│   │   ├── [entry_point_2]: [function_name_2]
│   │   └── [entry_point_3]: [function_name_3]
│   ├── Call Stack Depth: [max_call_depth] (Average: [avg_call_depth])
│   └── Recursive Functions: [recursive_function_count]
├── 🌊 CONTROL FLOW PATHS:
│   ├── Total Paths: [total_paths]
│   ├── Tested Paths: [tested_paths] ([tested_percentage]%)
│   ├── Untested Paths: [untested_paths] ([untested_percentage]%)
│   └── Critical Paths: [critical_paths]
├── 🔀 BRANCHING ANALYSIS:
│   ├── Conditional Branches: [conditional_count]
│   ├── Loop Structures: [loop_count]
│   ├── Exception Handlers: [exception_handler_count]
│   └── Switch/Case Statements: [switch_count]
└── 📊 EXECUTION STATISTICS:
    ├── Average Execution Time: [avg_execution_time]ms
    ├── Peak Memory Usage: [peak_memory]MB
    ├── Function Call Frequency: [call_frequency]
    └── Error Rate: [error_rate]%

📍 EXECUTION TRACE PATHS:
├── 🚀 MAIN EXECUTION PATH:
│   ├── [step_1]: [function_1]([params_1]) -> [result_1]
│   │   ├── Duration: [duration_1]ms
│   │   ├── Memory: [memory_1]MB
│   │   └── Variables: [variables_1]
│   ├── [step_2]: [function_2]([params_2]) -> [result_2]
│   │   ├── Duration: [duration_2]ms
│   │   ├── Memory: [memory_2]MB
│   │   └── Variables: [variables_2]
│   └── [step_3]: [function_3]([params_3]) -> [result_3]
│       ├── Duration: [duration_3]ms
│       ├── Memory: [memory_3]MB
│       └── Variables: [variables_3]
├── 🔄 ALTERNATIVE PATHS:
│   ├── Error Handling Path:
│   │   ├── [error_step_1]: [error_function_1] -> [error_result_1]
│   │   ├── [error_step_2]: [error_function_2] -> [error_result_2]
│   │   └── [error_step_3]: [error_function_3] -> [error_result_3]
│   ├── Edge Case Path:
│   │   ├── [edge_step_1]: [edge_function_1] -> [edge_result_1]
│   │   └── [edge_step_2]: [edge_function_2] -> [edge_result_2]
│   └── Validation Path:
│       ├── [validation_step_1]: [validation_function_1] -> [validation_result_1]
│       └── [validation_step_2]: [validation_function_2] -> [validation_result_2]
└── 🚨 PROBLEMATIC PATHS:
    ├── [problem_path_1]: [problem_description_1]
    │   ├── Issue: [issue_1]
    │   ├── Impact: [impact_1]
    │   └── Location: [file_1]:[line_1]
    └── [problem_path_2]: [problem_description_2]
        ├── Issue: [issue_2]
        ├── Impact: [impact_2]
        └── Location: [file_2]:[line_2]

📊 VARIABLE STATE ANALYSIS:
├── 🔢 VARIABLE LIFECYCLE:
│   ├── [variable_1]:
│   │   ├── Type: [type_1]
│   │   ├── Scope: [scope_1]
│   │   ├── Initial Value: [initial_value_1]
│   │   ├── Final Value: [final_value_1]
│   │   └── Mutations: [mutation_count_1]
│   ├── [variable_2]:
│   │   ├── Type: [type_2]
│   │   ├── Scope: [scope_2]
│   │   ├── Initial Value: [initial_value_2]
│   │   ├── Final Value: [final_value_2]
│   │   └── Mutations: [mutation_count_2]
│   └── [variable_3]:
│       ├── Type: [type_3]
│       ├── Scope: [scope_3]
│       ├── Initial Value: [initial_value_3]
│       ├── Final Value: [final_value_3]
│       └── Mutations: [mutation_count_3]
├── 🔄 STATE TRANSITIONS:
│   ├── [state_1] -> [state_2]: [transition_condition_1]
│   ├── [state_2] -> [state_3]: [transition_condition_2]
│   └── [state_3] -> [state_1]: [transition_condition_3]
├── 🚨 STATE ANOMALIES:
│   ├── Undefined Variables: [undefined_count]
│   ├── Null Pointer Access: [null_pointer_count]
│   ├── Type Mismatches: [type_mismatch_count]
│   └── Memory Leaks: [memory_leak_count]
└── 📈 STATE COMPLEXITY:
    ├── State Space Size: [state_space_size]
    ├── Cyclomatic Complexity: [cyclomatic_complexity]
    ├── Coupling Factor: [coupling_factor]
    └── Cohesion Score: [cohesion_score]

🚨 LOGIC ERROR DETECTION:
├── 🔍 CONDITIONAL LOGIC ERRORS:
│   ├── [logic_error_1]:
│   │   ├── Location: [file_1]:[line_1]
│   │   ├── Type: [error_type_1]
│   │   ├── Description: [error_description_1]
│   │   ├── Severity: [severity_1]
│   │   └── Fix Suggestion: [fix_suggestion_1]
│   └── [logic_error_2]:
│       ├── Location: [file_2]:[line_2]
│       ├── Type: [error_type_2]
│       ├── Description: [error_description_2]
│       ├── Severity: [severity_2]
│       └── Fix Suggestion: [fix_suggestion_2]
├── 🔄 LOOP LOGIC ANALYSIS:
│   ├── Infinite Loop Risk: [infinite_loop_risk]
│   ├── Loop Termination: [loop_termination_analysis]
│   ├── Performance Impact: [loop_performance_impact]
│   └── Off-by-One Errors: [off_by_one_errors]
├── 🎯 EDGE CASE HANDLING:
│   ├── Null/Undefined Checks: [null_check_coverage]%
│   ├── Boundary Value Testing: [boundary_test_coverage]%
│   ├── Error Propagation: [error_propagation_analysis]
│   └── Exception Handling: [exception_handling_coverage]%
└── 📊 DATA FLOW CONSISTENCY:
    ├── Data Integrity: [data_integrity_score]/10
    ├── Input Validation: [input_validation_score]/10
    ├── Output Validation: [output_validation_score]/10
    └── Side Effect Management: [side_effect_score]/10

💀 DEAD CODE ANALYSIS:
├── 🔍 UNREACHABLE CODE:
│   ├── [unreachable_1]:
│   │   ├── Location: [file_1]:[line_start_1]-[line_end_1]
│   │   ├── Type: [unreachable_type_1]
│   │   ├── Reason: [unreachable_reason_1]
│   │   └── Removal Safe: [removal_safe_1]
│   └── [unreachable_2]:
│       ├── Location: [file_2]:[line_start_2]-[line_end_2]
│       ├── Type: [unreachable_type_2]
│       ├── Reason: [unreachable_reason_2]
│       └── Removal Safe: [removal_safe_2]
├── 🔧 UNUSED FUNCTIONS:
│   ├── [unused_function_1]: [file_1]:[line_1]
│   ├── [unused_function_2]: [file_2]:[line_2]
│   └── [unused_function_3]: [file_3]:[line_3]
├── 📊 UNUSED VARIABLES:
│   ├── [unused_variable_1]: [file_1]:[line_1]
│   ├── [unused_variable_2]: [file_2]:[line_2]
│   └── [unused_variable_3]: [file_3]:[line_3]
└── 🧹 CLEANUP RECOMMENDATIONS:
    ├── Safe to Remove: [safe_removal_count] items
    ├── Requires Investigation: [investigation_required_count] items
    ├── Potential Side Effects: [side_effect_count] items
    └── Code Size Reduction: [size_reduction_estimate]%

🎯 FUNCTION ANALYSIS:
├── 📊 FUNCTION METRICS:
│   ├── [function_1]:
│   │   ├── Lines of Code: [loc_1]
│   │   ├── Complexity: [complexity_1]
│   │   ├── Parameters: [param_count_1]
│   │   ├── Return Points: [return_points_1]
│   │   ├── Called By: [caller_count_1] functions
│   │   └── Performance: [performance_1]ms avg
│   ├── [function_2]:
│   │   ├── Lines of Code: [loc_2]
│   │   ├── Complexity: [complexity_2]
│   │   ├── Parameters: [param_count_2]
│   │   ├── Return Points: [return_points_2]
│   │   ├── Called By: [caller_count_2] functions
│   │   └── Performance: [performance_2]ms avg
│   └── [function_3]:
│       ├── Lines of Code: [loc_3]
│       ├── Complexity: [complexity_3]
│       ├── Parameters: [param_count_3]
│       ├── Return Points: [return_points_3]
│       ├── Called By: [caller_count_3] functions
│       └── Performance: [performance_3]ms avg
├── 🔄 FUNCTION DEPENDENCIES:
│   ├── High Coupling: [high_coupling_functions]
│   ├── Low Cohesion: [low_cohesion_functions]
│   ├── Circular Dependencies: [circular_dependencies]
│   └── Dependency Depth: [dependency_depth]
└── 🚨 FUNCTION ISSUES:
    ├── Too Complex: [complex_functions]
    ├── Too Long: [long_functions]
    ├── Too Many Parameters: [parameter_heavy_functions]
    └── Performance Issues: [slow_functions]

🔧 DEBUGGING RECOMMENDATIONS:
├── 🚨 CRITICAL FIXES:
│   ├── [critical_fix_1]:
│   │   ├── Location: [location_1]
│   │   ├── Issue: [issue_1]
│   │   ├── Impact: [impact_1]
│   │   ├── Fix: [fix_1]
│   │   └── Priority: [priority_1]
│   └── [critical_fix_2]:
│       ├── Location: [location_2]
│       ├── Issue: [issue_2]
│       ├── Impact: [impact_2]
│       ├── Fix: [fix_2]
│       └── Priority: [priority_2]
├── 📊 CODE QUALITY IMPROVEMENTS:
│   ├── Refactoring Opportunities: [refactoring_count]
│   ├── Code Duplication: [duplication_percentage]%
│   ├── Naming Improvements: [naming_improvements]
│   └── Documentation Gaps: [documentation_gaps]
├── 🧪 TESTING RECOMMENDATIONS:
│   ├── Missing Unit Tests: [missing_unit_tests]
│   ├── Edge Case Tests: [missing_edge_case_tests]
│   ├── Integration Tests: [missing_integration_tests]
│   └── Performance Tests: [missing_performance_tests]
└── 🔄 MONITORING SETUP:
    ├── Error Tracking: [error_tracking_setup]
    ├── Performance Monitoring: [performance_monitoring_setup]
    ├── Code Coverage: [coverage_monitoring_setup]
    └── Logging Strategy: [logging_strategy_setup]

📋 EXECUTION ENVIRONMENT:
├── 🌍 Runtime Environment:
│   ├── Platform: [platform]
│   ├── Runtime Version: [runtime_version]
│   ├── Memory Limit: [memory_limit]MB
│   └── CPU Cores: [cpu_cores]
├── 🔧 Development Tools:
│   ├── Debugger: [debugger_available]
│   ├── Profiler: [profiler_available]
│   ├── Static Analysis: [static_analysis_tools]
│   └── Test Framework: [test_framework]
└── 📊 Code Metrics:
    ├── Total Lines: [total_lines]
    ├── Executable Lines: [executable_lines]
    ├── Test Coverage: [test_coverage]%
    └── Code Quality Score: [quality_score]/10

⚠️ EXECUTION RISKS:
├── 🔴 HIGH RISK:
│   ├── [risk_1]: [description_1] - [mitigation_1]
│   └── [risk_2]: [description_2] - [mitigation_2]
├── 🟡 MEDIUM RISK:
│   ├── [risk_3]: [description_3] - [mitigation_3]
│   └── [risk_4]: [description_4] - [mitigation_4]
└── 🟢 LOW RISK:
    ├── [risk_5]: [description_5] - [mitigation_5]
    └── [risk_6]: [description_6] - [mitigation_6]

📈 NEXT STEPS:
├── 🔧 Immediate Actions:
│   ├── [action_1]: [description_1]
│   └── [action_2]: [description_2]
├── 📊 Code Review Focus:
│   ├── [review_area_1]: [description_1]
│   └── [review_area_2]: [description_2]
└── 🎯 Long-term Improvements:
    ├── [improvement_1]: [description_1]
    └── [improvement_2]: [description_2]
```

## Context Store Output

**Save code trace analysis to:**
`.claude/analysis/debug-[session-id]/code-trace-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "code-trace-agent",
  "target": "$ARGUMENTS",
  "analysis": {
    "execution_flow": {
      "function_hierarchy": {},
      "control_flow_paths": {},
      "branching_analysis": {},
      "execution_statistics": {}
    },
    "trace_paths": {
      "main_execution": [],
      "alternative_paths": [],
      "problematic_paths": []
    },
    "variable_state": {
      "variable_lifecycle": [],
      "state_transitions": [],
      "state_anomalies": [],
      "state_complexity": {}
    },
    "logic_errors": {
      "conditional_errors": [],
      "loop_logic": {},
      "edge_case_handling": {},
      "data_flow_consistency": {}
    },
    "dead_code_analysis": {
      "unreachable_code": [],
      "unused_functions": [],
      "unused_variables": [],
      "cleanup_recommendations": {}
    },
    "function_analysis": {
      "function_metrics": [],
      "function_dependencies": {},
      "function_issues": []
    },
    "debugging_recommendations": {
      "critical_fixes": [],
      "code_quality_improvements": {},
      "testing_recommendations": {},
      "monitoring_setup": {}
    }
  }
}
```

## MCP Integration Examples

### Static Code Analysis
```javascript
// Read source files
const sourceFiles = await readSourceFiles(targetPath);

// Analyze function dependencies
const dependencies = await analyzeFunctionDependencies(sourceFiles);

// Check for dead code
const deadCode = await analyzeDeadCode(sourceFiles);
```

### Dynamic Execution Tracing
```javascript
// Run with tracing enabled
const traceResults = await executeWithTracing(targetFunction);

// Analyze execution paths
const executionPaths = await analyzeExecutionPaths(traceResults);

// Track variable states
const variableStates = await trackVariableStates(traceResults);
```

### Code Quality Analysis
```javascript
// Research code analysis tools
const analysisTools = await mcp__context7__getLibraryDocs('code-analysis-tools');

// Get best practices
const bestPractices = await mcp__brave_search__braveWebSearch('code tracing best practices 2024');
```

## Success Criteria

Code trace agent should provide:
- **Complete execution flow analysis** with all paths mapped
- **Comprehensive variable state tracking** with lifecycle analysis
- **Logic error detection** with specific location and fix recommendations
- **Dead code identification** with safe removal recommendations
- **Performance bottleneck identification** with optimization suggestions

**Time Target:** 2-3 minutes for comprehensive code trace analysis
**Context Window:** Optimized for code execution analysis
**Handoff:** Clean JSON output for debug synthesis agent