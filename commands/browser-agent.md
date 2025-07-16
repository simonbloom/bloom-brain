# Browser Agent - Console & Network Analysis

Specialized agent for analyzing browser-side issues, console errors, and network activity for: **$ARGUMENTS**

## Agent Purpose
This agent focuses exclusively on browser-side debugging using Browser Tools MCP to analyze console errors, network requests, performance issues, and client-side behavior.

## Analysis Scope
- Console errors and warnings
- Network request analysis and failures
- Performance metrics and bottlenecks
- Client-side JavaScript execution
- Browser rendering issues
- User interaction problems

## MCP Tools Used
- **Browser Tools MCP**: Console analysis, network monitoring, performance auditing
- **Screenshot MCP**: Visual debugging and UI state capture
- **Puppeteer MCP**: Advanced browser automation when needed

## Analysis Process

### Phase 1: Console Analysis
**Browser MCP Queries:**
- Get console errors and warnings
- Analyze error frequency and patterns
- Check for unhandled promise rejections
- Identify JavaScript execution failures

### Phase 2: Network Analysis
**Network Request Investigation:**
- Examine failed network requests
- Check network timing and performance
- Analyze API response codes and errors
- Identify network bottlenecks

### Phase 3: Performance Analysis
**Performance Metrics Collection:**
- Run performance audits
- Analyze Core Web Vitals
- Check for memory leaks
- Identify rendering bottlenecks

## Output Format

```
🔍 BROWSER ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: browser-agent

📊 BROWSER HEALTH OVERVIEW:
├── 🚨 Console Errors: [error_count]
├── ⚠️ Console Warnings: [warning_count]
├── 🌐 Network Requests: [request_count] ([failed_count] failed)
├── ⚡ Performance Score: [performance_score]/100
└── 📱 Accessibility Score: [accessibility_score]/100

🚨 CONSOLE ERRORS ANALYSIS:
├── 📋 ERROR SUMMARY:
│   ├── JavaScript Errors: [js_error_count]
│   ├── Network Errors: [network_error_count]
│   ├── Security Errors: [security_error_count]
│   └── Other Errors: [other_error_count]
├── 🔥 CRITICAL ERRORS:
│   ├── [error_type]: [error_message]
│   │   ├── File: [file_path]:[line_number]
│   │   ├── Stack: [stack_trace]
│   │   └── Impact: [impact_assessment]
│   └── [error_type]: [error_message]
│       ├── File: [file_path]:[line_number]
│       ├── Stack: [stack_trace]
│       └── Impact: [impact_assessment]
└── ⚠️ WARNINGS & DEPRECATIONS:
    ├── [warning_type]: [warning_message]
    ├── [warning_type]: [warning_message]
    └── [warning_type]: [warning_message]

🌐 NETWORK ANALYSIS:
├── 📊 REQUEST OVERVIEW:
│   ├── Total Requests: [total_requests]
│   ├── Successful: [successful_requests] ([success_percentage]%)
│   ├── Failed: [failed_requests] ([failure_percentage]%)
│   └── Average Response Time: [avg_response_time]ms
├── 🚨 FAILED REQUESTS:
│   ├── [request_url]: [status_code] - [error_message]
│   │   ├── Method: [http_method]
│   │   ├── Response Time: [response_time]ms
│   │   └── Failure Reason: [failure_reason]
│   └── [request_url]: [status_code] - [error_message]
│       ├── Method: [http_method]
│       ├── Response Time: [response_time]ms
│       └── Failure Reason: [failure_reason]
├── 🐌 SLOW REQUESTS:
│   ├── [request_url]: [response_time]ms
│   ├── [request_url]: [response_time]ms
│   └── [request_url]: [response_time]ms
└── 🔒 SECURITY ISSUES:
    ├── Mixed Content: [mixed_content_count] issues
    ├── CORS Errors: [cors_error_count] issues
    └── CSP Violations: [csp_violation_count] issues

⚡ PERFORMANCE ANALYSIS:
├── 📈 CORE WEB VITALS:
│   ├── First Contentful Paint: [fcp_score]ms ([fcp_rating])
│   ├── Largest Contentful Paint: [lcp_score]ms ([lcp_rating])
│   ├── Cumulative Layout Shift: [cls_score] ([cls_rating])
│   └── First Input Delay: [fid_score]ms ([fid_rating])
├── 📊 LIGHTHOUSE SCORES:
│   ├── Performance: [performance_score]/100
│   ├── Accessibility: [accessibility_score]/100
│   ├── Best Practices: [best_practices_score]/100
│   └── SEO: [seo_score]/100
├── 🎯 PERFORMANCE ISSUES:
│   ├── [issue_type]: [issue_description]
│   │   ├── Impact: [impact_level]
│   │   ├── Savings: [potential_savings]
│   │   └── Fix: [fix_suggestion]
│   └── [issue_type]: [issue_description]
│       ├── Impact: [impact_level]
│       ├── Savings: [potential_savings]
│       └── Fix: [fix_suggestion]
└── 📱 RENDERING METRICS:
    ├── DOM Content Loaded: [dom_content_loaded]ms
    ├── Load Complete: [load_complete]ms
    ├── Time to Interactive: [tti]ms
    └── Total Blocking Time: [tbt]ms

🖥️ CLIENT-SIDE EXECUTION:
├── 📦 JAVASCRIPT ANALYSIS:
│   ├── Bundle Size: [bundle_size]MB
│   ├── Unused JavaScript: [unused_js_percentage]%
│   ├── Memory Usage: [memory_usage]MB
│   └── CPU Usage: [cpu_usage]%
├── 🎨 RENDERING ANALYSIS:
│   ├── Layout Shifts: [layout_shift_count]
│   ├── Paint Events: [paint_event_count]
│   ├── Reflow Count: [reflow_count]
│   └── Composite Layers: [composite_layer_count]
└── 🔄 STATE MANAGEMENT:
    ├── React DevTools: [react_devtools_available]
    ├── Redux State: [redux_state_size]KB
    ├── Component Updates: [component_update_count]
    └── Re-renders: [unnecessary_rerender_count]

📸 VISUAL DEBUGGING:
├── 🖼️ SCREENSHOT ANALYSIS:
│   ├── Current State: [screenshot_status]
│   ├── Layout Issues: [layout_issue_count]
│   ├── Visual Regressions: [visual_regression_count]
│   └── Accessibility Issues: [accessibility_issue_count]
├── 🎨 UI STATE ANALYSIS:
│   ├── Visible Elements: [visible_element_count]
│   ├── Hidden Elements: [hidden_element_count]
│   ├── Overlapping Elements: [overlapping_element_count]
│   └── Off-screen Elements: [offscreen_element_count]
└── 📱 RESPONSIVE ISSUES:
    ├── Mobile Layout: [mobile_layout_issues]
    ├── Tablet Layout: [tablet_layout_issues]
    ├── Desktop Layout: [desktop_layout_issues]
    └── Viewport Issues: [viewport_issue_count]

🔧 DEBUGGING RECOMMENDATIONS:
├── 🚨 IMMEDIATE FIXES:
│   ├── [fix_category]: [fix_description]
│   │   ├── Priority: [priority_level]
│   │   ├── Effort: [effort_estimate]
│   │   └── Impact: [impact_description]
│   └── [fix_category]: [fix_description]
│       ├── Priority: [priority_level]
│       ├── Effort: [effort_estimate]
│       └── Impact: [impact_description]
├── 📊 MONITORING SETUP:
│   ├── Error Tracking: [error_tracking_recommendation]
│   ├── Performance Monitoring: [performance_monitoring_recommendation]
│   └── User Analytics: [user_analytics_recommendation]
└── 🔄 PREVENTIVE MEASURES:
    ├── Testing Strategy: [testing_strategy_recommendation]
    ├── Code Quality: [code_quality_recommendation]
    └── Performance Budget: [performance_budget_recommendation]

📋 BROWSER ENVIRONMENT:
├── 🌐 Browser Information:
│   ├── User Agent: [user_agent]
│   ├── Browser Version: [browser_version]
│   ├── Platform: [platform]
│   └── Viewport: [viewport_width]x[viewport_height]
├── 🔧 Development Tools:
│   ├── React DevTools: [react_devtools_status]
│   ├── Redux DevTools: [redux_devtools_status]
│   ├── Vue DevTools: [vue_devtools_status]
│   └── Performance Tools: [performance_tools_status]
└── 🎯 Focus Areas:
    ├── Primary Issues: [primary_issue_count]
    ├── Secondary Issues: [secondary_issue_count]
    └── Nice-to-have: [nice_to_have_count]

⚠️ CRITICAL ISSUES SUMMARY:
├── 🔴 BLOCKING ISSUES:
│   ├── [issue]: [description] - [impact]
│   └── [issue]: [description] - [impact]
├── 🟡 PERFORMANCE ISSUES:
│   ├── [issue]: [description] - [impact]
│   └── [issue]: [description] - [impact]
└── 🟢 MINOR ISSUES:
    ├── [issue]: [description] - [impact]
    └── [issue]: [description] - [impact]

💡 NEXT STEPS:
├── 🔧 Immediate Actions:
│   ├── [action]: [description]
│   └── [action]: [description]
├── 📊 Investigation Needed:
│   ├── [area]: [what_to_investigate]
│   └── [area]: [what_to_investigate]
└── 📋 Follow-up Tasks:
    ├── [task]: [description]
    └── [task]: [description]
```

## Context Store Output

**Save browser analysis to:**
`.claude/analysis/debug-[session-id]/browser-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "browser-agent",
  "target": "$ARGUMENTS",
  "analysis": {
    "console_errors": {
      "total_errors": 0,
      "error_types": {},
      "critical_errors": [],
      "warnings": []
    },
    "network_analysis": {
      "total_requests": 0,
      "failed_requests": [],
      "slow_requests": [],
      "security_issues": []
    },
    "performance_metrics": {
      "core_web_vitals": {},
      "lighthouse_scores": {},
      "performance_issues": []
    },
    "client_execution": {
      "javascript_analysis": {},
      "rendering_analysis": {},
      "state_management": {}
    },
    "visual_debugging": {
      "screenshot_analysis": {},
      "ui_state": {},
      "responsive_issues": []
    },
    "recommendations": {
      "immediate_fixes": [],
      "monitoring_setup": [],
      "preventive_measures": []
    },
    "browser_environment": {
      "browser_info": {},
      "dev_tools": {},
      "focus_areas": {}
    }
  }
}
```

## MCP Integration Examples

### Console Error Analysis
```javascript
// Get console errors
const consoleErrors = await mcp__browser_tools__getConsoleErrors();

// Get network errors
const networkErrors = await mcp__browser_tools__getNetworkErrors();

// Take screenshot for visual debugging
const screenshot = await mcp__browser_tools__takeScreenshot();
```

### Performance Analysis
```javascript
// Run performance audit
const performanceAudit = await mcp__browser_tools__runPerformanceAudit();

// Run accessibility audit
const accessibilityAudit = await mcp__browser_tools__runAccessibilityAudit();

// Get network logs
const networkLogs = await mcp__browser_tools__getNetworkLogs();
```

## Success Criteria

Browser agent should provide:
- **Complete console error analysis** with prioritized fixes
- **Network performance insights** with bottleneck identification
- **Performance metrics** with optimization recommendations
- **Visual debugging** with screenshot analysis
- **Actionable recommendations** for immediate improvements

**Time Target:** 2-3 minutes for comprehensive browser analysis
**Context Window:** Optimized for browser-focused debugging
**Handoff:** Clean JSON output for debug synthesis agent