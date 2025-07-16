# UX Agent - User Journey Analysis

Specialized agent for analyzing user experience, journey flows, and interaction patterns for: **$ARGUMENTS**

## Agent Purpose
This agent focuses exclusively on user experience analysis, user journey mapping, interaction pattern identification, and UX optimization recommendations through behavioral analysis and user-centric debugging.

## Analysis Scope
- User journey flow analysis
- Interaction pattern identification
- UX friction point detection
- Accessibility compliance analysis
- User behavior pattern recognition
- Conversion funnel optimization

## MCP Tools Used
- **Browser Tools MCP**: User interaction analysis, accessibility auditing, visual testing
- **Puppeteer MCP**: User journey automation, interaction flow testing, visual regression analysis
- **Supabase MCP**: User analytics data, behavior tracking, conversion metrics
- **Context7 MCP**: UX best practices, accessibility guidelines, user research methodologies
- **Brave Search MCP**: Latest UX trends, accessibility standards, user research findings

## Analysis Process

### Phase 1: User Journey Mapping
**Journey Flow Investigation:**
- Entry point identification
- User flow path analysis
- Conversion funnel mapping
- Drop-off point identification
- User goal completion analysis
- Automated journey simulation (Puppeteer)

### Phase 2: Interaction Analysis
**User Behavior Investigation:**
- Click pattern analysis
- Navigation behavior
- Form interaction patterns
- Error recovery flows
- Device-specific behaviors
- Automated interaction testing (Puppeteer)
- Real user flow simulation

### Phase 3: UX Optimization
**Experience Enhancement Opportunities:**
- Friction point elimination
- Conversion optimization
- Accessibility improvements
- Performance impact on UX
- Mobile experience optimization
- Visual regression testing (Puppeteer)
- Automated user flow validation

## Output Format

```
👤 UX ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: ux-agent

📊 UX OVERVIEW:
├── 🎯 User Experience Score: [ux_score]/100
├── 📱 Mobile Experience: [mobile_ux_score]/100
├── ♿ Accessibility Score: [accessibility_score]/100
├── 🔄 Conversion Rate: [conversion_rate]%
└── 😊 User Satisfaction: [satisfaction_score]/10

🛤️ USER JOURNEY ANALYSIS:
├── 📍 ENTRY POINTS:
│   ├── Primary Entry: [primary_entry] ([entry_percentage_1]%)
│   ├── Secondary Entry: [secondary_entry] ([entry_percentage_2]%)
│   ├── Tertiary Entry: [tertiary_entry] ([entry_percentage_3]%)
│   └── Other Entries: [other_entries] ([other_percentage]%)
├── 🎯 USER GOALS:
│   ├── [goal_1]: [goal_completion_rate_1]% completion
│   │   ├── Success Path: [success_path_1]
│   │   ├── Average Time: [avg_time_1]
│   │   └── Friction Points: [friction_points_1]
│   ├── [goal_2]: [goal_completion_rate_2]% completion
│   │   ├── Success Path: [success_path_2]
│   │   ├── Average Time: [avg_time_2]
│   │   └── Friction Points: [friction_points_2]
│   └── [goal_3]: [goal_completion_rate_3]% completion
│       ├── Success Path: [success_path_3]
│       ├── Average Time: [avg_time_3]
│       └── Friction Points: [friction_points_3]
├── 🔄 CONVERSION FUNNEL:
│   ├── Step 1: [step_1] -> [conversion_rate_1]%
│   ├── Step 2: [step_2] -> [conversion_rate_2]%
│   ├── Step 3: [step_3] -> [conversion_rate_3]%
│   ├── Step 4: [step_4] -> [conversion_rate_4]%
│   └── Final Conversion: [final_conversion_rate]%
└── 🚪 EXIT POINTS:
    ├── [exit_point_1]: [exit_percentage_1]% ([exit_reason_1])
    ├── [exit_point_2]: [exit_percentage_2]% ([exit_reason_2])
    ├── [exit_point_3]: [exit_percentage_3]% ([exit_reason_3])
    └── Expected Exits: [expected_exit_percentage]%

🎭 AUTOMATED USER FLOW TESTING (Puppeteer):
├── 🚀 JOURNEY SIMULATION:
│   ├── User Registration Flow:
│   │   ├── Navigation Success: [registration_nav_success]%
│   │   ├── Form Completion: [registration_form_completion]%
│   │   ├── Validation Handling: [registration_validation_success]%
│   │   └── Error Recovery: [registration_error_recovery]%
│   ├── User Login Flow:
│   │   ├── Login Success Rate: [login_success_rate]%
│   │   ├── Authentication Time: [auth_time]ms
│   │   ├── Error Handling: [login_error_handling]%
│   │   └── Session Management: [session_management_score]/10
│   ├── Core Feature Flow:
│   │   ├── Feature Discovery: [feature_discovery_rate]%
│   │   ├── Task Completion: [task_completion_rate]%
│   │   ├── Flow Efficiency: [flow_efficiency_score]/10
│   │   └── User Satisfaction: [flow_satisfaction_score]/10
│   └── Checkout/Conversion Flow:
│       ├── Cart Completion: [cart_completion_rate]%
│       ├── Payment Process: [payment_process_success]%
│       ├── Conversion Time: [conversion_time]ms
│       └── Abandonment Points: [abandonment_points]
├── 🎨 VISUAL REGRESSION TESTING:
│   ├── UI Consistency:
│   │   ├── Component Rendering: [component_rendering_score]/100
│   │   ├── Layout Stability: [layout_stability_score]/100
│   │   ├── Visual Hierarchy: [visual_hierarchy_consistency]/100
│   │   └── Brand Consistency: [brand_consistency_score]/100
│   ├── Responsive Behavior:
│   │   ├── Mobile Rendering: [mobile_rendering_score]/100
│   │   ├── Tablet Rendering: [tablet_rendering_score]/100
│   │   ├── Desktop Rendering: [desktop_rendering_score]/100
│   │   └── Cross-Browser Consistency: [cross_browser_score]/100
│   └── Interactive Elements:
│       ├── Button States: [button_states_score]/100
│       ├── Form Validation: [form_validation_visual]/100
│       ├── Loading States: [loading_states_score]/100
│       └── Error States: [error_states_score]/100
├── 📊 INTERACTION METRICS:
│   ├── Click Response Time: [click_response_time]ms
│   ├── Form Input Delay: [form_input_delay]ms
│   ├── Page Transition Speed: [page_transition_speed]ms
│   ├── Interactive Element Count: [interactive_element_count]
│   └── Accessibility Navigation: [a11y_navigation_score]/100
└── 🔍 DOM ANALYSIS:
    ├── Element Visibility: [element_visibility_score]/100
    ├── Focus Management: [focus_management_score]/100
    ├── ARIA Implementation: [aria_implementation_score]/100
    └── Semantic Structure: [semantic_structure_score]/100

🖱️ INTERACTION PATTERNS:
├── 🎯 CLICK BEHAVIOR:
│   ├── Most Clicked Elements:
│   │   ├── [element_1]: [click_count_1] clicks ([click_percentage_1]%)
│   │   ├── [element_2]: [click_count_2] clicks ([click_percentage_2]%)
│   │   └── [element_3]: [click_count_3] clicks ([click_percentage_3]%)
│   ├── Misclicked Elements:
│   │   ├── [misclick_element_1]: [misclick_count_1] ([misclick_rate_1]%)
│   │   ├── [misclick_element_2]: [misclick_count_2] ([misclick_rate_2]%)
│   │   └── [misclick_element_3]: [misclick_count_3] ([misclick_rate_3]%)
│   └── Click Patterns:
│       ├── Average Clicks per Session: [avg_clicks_per_session]
│       ├── Click Heatmap Intensity: [heatmap_intensity]
│       └── Click Efficiency: [click_efficiency]%
├── 🧭 NAVIGATION BEHAVIOR:
│   ├── Navigation Paths:
│   │   ├── [path_1]: [path_usage_1]% of users
│   │   ├── [path_2]: [path_usage_2]% of users
│   │   └── [path_3]: [path_usage_3]% of users
│   ├── Back Button Usage: [back_button_usage]%
│   ├── Menu Usage: [menu_usage]%
│   ├── Search Usage: [search_usage]%
│   └── Breadcrumb Usage: [breadcrumb_usage]%
├── 📝 FORM INTERACTIONS:
│   ├── Form Completion Rate: [form_completion_rate]%
│   ├── Field Abandonment:
│   │   ├── [field_1]: [abandonment_rate_1]%
│   │   ├── [field_2]: [abandonment_rate_2]%
│   │   └── [field_3]: [abandonment_rate_3]%
│   ├── Validation Errors:
│   │   ├── [error_1]: [error_frequency_1]%
│   │   ├── [error_2]: [error_frequency_2]%
│   │   └── [error_3]: [error_frequency_3]%
│   └── Form Metrics:
│       ├── Average Completion Time: [avg_completion_time]
│       ├── Retry Rate: [retry_rate]%
│       └── Help Usage: [help_usage]%
└── 📱 DEVICE-SPECIFIC BEHAVIOR:
    ├── Desktop Behavior:
    │   ├── Session Duration: [desktop_session_duration]
    │   ├── Pages per Session: [desktop_pages_per_session]
    │   └── Interaction Rate: [desktop_interaction_rate]%
    ├── Mobile Behavior:
    │   ├── Session Duration: [mobile_session_duration]
    │   ├── Pages per Session: [mobile_pages_per_session]
    │   └── Interaction Rate: [mobile_interaction_rate]%
    └── Tablet Behavior:
        ├── Session Duration: [tablet_session_duration]
        ├── Pages per Session: [tablet_pages_per_session]
        └── Interaction Rate: [tablet_interaction_rate]%

🚨 FRICTION POINTS:
├── 🔍 IDENTIFIED FRICTION:
│   ├── [friction_point_1]:
│   │   ├── Location: [friction_location_1]
│   │   ├── Impact: [friction_impact_1]
│   │   ├── Affected Users: [affected_users_1]%
│   │   ├── Severity: [friction_severity_1]
│   │   └── Recommended Fix: [friction_fix_1]
│   ├── [friction_point_2]:
│   │   ├── Location: [friction_location_2]
│   │   ├── Impact: [friction_impact_2]
│   │   ├── Affected Users: [affected_users_2]%
│   │   ├── Severity: [friction_severity_2]
│   │   └── Recommended Fix: [friction_fix_2]
│   └── [friction_point_3]:
│       ├── Location: [friction_location_3]
│       ├── Impact: [friction_impact_3]
│       ├── Affected Users: [affected_users_3]%
│       ├── Severity: [friction_severity_3]
│       └── Recommended Fix: [friction_fix_3]
├── 🛑 BLOCKING ISSUES:
│   ├── [blocking_issue_1]: [blocking_description_1]
│   ├── [blocking_issue_2]: [blocking_description_2]
│   └── [blocking_issue_3]: [blocking_description_3]
├── 🐌 PERFORMANCE IMPACT:
│   ├── Slow Loading Pages: [slow_pages]
│   ├── Interaction Delays: [interaction_delays]
│   ├── Network Issues: [network_issues]
│   └── Rendering Problems: [rendering_problems]
└── 📊 FRICTION METRICS:
    ├── Total Friction Score: [total_friction_score]/10
    ├── Friction Reduction Potential: [friction_reduction_potential]%
    ├── User Frustration Index: [frustration_index]/10
    └── Abandonment Correlation: [abandonment_correlation]%

♿ ACCESSIBILITY ANALYSIS:
├── 🎯 ACCESSIBILITY COMPLIANCE:
│   ├── WCAG 2.1 AA Compliance: [wcag_aa_compliance]%
│   ├── WCAG 2.1 AAA Compliance: [wcag_aaa_compliance]%
│   ├── Section 508 Compliance: [section_508_compliance]%
│   └── ADA Compliance: [ada_compliance]%
├── 🔍 ACCESSIBILITY ISSUES:
│   ├── [a11y_issue_1]:
│   │   ├── Type: [a11y_type_1]
│   │   ├── Severity: [a11y_severity_1]
│   │   ├── Affected Elements: [a11y_elements_1]
│   │   ├── Impact: [a11y_impact_1]
│   │   └── Fix: [a11y_fix_1]
│   ├── [a11y_issue_2]:
│   │   ├── Type: [a11y_type_2]
│   │   ├── Severity: [a11y_severity_2]
│   │   ├── Affected Elements: [a11y_elements_2]
│   │   ├── Impact: [a11y_impact_2]
│   │   └── Fix: [a11y_fix_2]
│   └── [a11y_issue_3]:
│       ├── Type: [a11y_type_3]
│       ├── Severity: [a11y_severity_3]
│       ├── Affected Elements: [a11y_elements_3]
│       ├── Impact: [a11y_impact_3]
│       └── Fix: [a11y_fix_3]
├── 🎨 VISUAL ACCESSIBILITY:
│   ├── Color Contrast: [color_contrast_score]/100
│   ├── Font Readability: [font_readability_score]/100
│   ├── Visual Hierarchy: [visual_hierarchy_score]/100
│   └── Alternative Text: [alt_text_coverage]%
├── ⌨️ KEYBOARD ACCESSIBILITY:
│   ├── Keyboard Navigation: [keyboard_nav_score]/100
│   ├── Focus Indicators: [focus_indicator_score]/100
│   ├── Tab Order: [tab_order_score]/100
│   └── Shortcut Keys: [shortcut_coverage]%
└── 🔊 ASSISTIVE TECHNOLOGY:
    ├── Screen Reader Support: [screen_reader_score]/100
    ├── Voice Navigation: [voice_nav_score]/100
    ├── ARIA Labels: [aria_coverage]%
    └── Semantic HTML: [semantic_html_score]/100

📱 MOBILE UX ANALYSIS:
├── 📱 MOBILE EXPERIENCE:
│   ├── Mobile Usability Score: [mobile_usability_score]/100
│   ├── Touch Target Size: [touch_target_score]/100
│   ├── Viewport Configuration: [viewport_score]/100
│   └── Mobile-First Design: [mobile_first_score]/100
├── 👆 TOUCH INTERACTIONS:
│   ├── Touch Target Analysis:
│   │   ├── Too Small Targets: [small_targets]
│   │   ├── Overlapping Targets: [overlapping_targets]
│   │   └── Optimal Targets: [optimal_targets]
│   ├── Gesture Support:
│   │   ├── Swipe Gestures: [swipe_support]
│   │   ├── Pinch to Zoom: [pinch_support]
│   │   └── Long Press: [long_press_support]
│   └── Touch Responsiveness:
│       ├── Touch Delay: [touch_delay]ms
│       ├── Touch Accuracy: [touch_accuracy]%
│       └── Gesture Recognition: [gesture_recognition]%
├── 🔄 RESPONSIVE DESIGN:
│   ├── Breakpoint Analysis:
│   │   ├── Mobile (320-767px): [mobile_breakpoint_score]/100
│   │   ├── Tablet (768-1023px): [tablet_breakpoint_score]/100
│   │   └── Desktop (1024px+): [desktop_breakpoint_score]/100
│   ├── Layout Adaptation:
│   │   ├── Content Reflow: [content_reflow_score]/100
│   │   ├── Navigation Adaptation: [nav_adaptation_score]/100
│   │   └── Image Scaling: [image_scaling_score]/100
│   └── Orientation Support:
│       ├── Portrait Mode: [portrait_score]/100
│       ├── Landscape Mode: [landscape_score]/100
│       └── Rotation Handling: [rotation_score]/100
└── 🌐 MOBILE PERFORMANCE:
    ├── Mobile Page Speed: [mobile_page_speed]/100
    ├── Mobile Core Web Vitals: [mobile_cwv_score]/100
    ├── Mobile Data Usage: [mobile_data_usage]MB
    └── Mobile Battery Impact: [mobile_battery_impact]/10

🎯 CONVERSION OPTIMIZATION:
├── 📊 CONVERSION ANALYSIS:
│   ├── Overall Conversion Rate: [overall_conversion_rate]%
│   ├── Micro-conversions:
│   │   ├── [micro_conversion_1]: [micro_rate_1]%
│   │   ├── [micro_conversion_2]: [micro_rate_2]%
│   │   └── [micro_conversion_3]: [micro_rate_3]%
│   ├── Conversion Funnel Drop-offs:
│   │   ├── [funnel_step_1]: [drop_off_rate_1]%
│   │   ├── [funnel_step_2]: [drop_off_rate_2]%
│   │   └── [funnel_step_3]: [drop_off_rate_3]%
│   └── Conversion Optimization Score: [conversion_optimization_score]/100
├── 🎨 DESIGN IMPACT:
│   ├── CTA Effectiveness:
│   │   ├── [cta_1]: [cta_effectiveness_1]%
│   │   ├── [cta_2]: [cta_effectiveness_2]%
│   │   └── [cta_3]: [cta_effectiveness_3]%
│   ├── Visual Hierarchy Impact: [visual_hierarchy_impact]/10
│   ├── Color Psychology: [color_psychology_score]/10
│   └── Typography Impact: [typography_impact_score]/10
├── 📝 CONTENT OPTIMIZATION:
│   ├── Content Clarity: [content_clarity_score]/10
│   ├── Value Proposition: [value_proposition_score]/10
│   ├── Trust Signals: [trust_signals_score]/10
│   └── Social Proof: [social_proof_score]/10
└── 🔄 A/B TEST RECOMMENDATIONS:
    ├── [ab_test_1]: [ab_test_description_1]
    ├── [ab_test_2]: [ab_test_description_2]
    └── [ab_test_3]: [ab_test_description_3]

📊 USER BEHAVIOR INSIGHTS:
├── 👥 USER SEGMENTATION:
│   ├── New Users: [new_user_percentage]%
│   │   ├── Behavior: [new_user_behavior]
│   │   ├── Conversion: [new_user_conversion]%
│   │   └── Friction Points: [new_user_friction]
│   ├── Returning Users: [returning_user_percentage]%
│   │   ├── Behavior: [returning_user_behavior]
│   │   ├── Conversion: [returning_user_conversion]%
│   │   └── Friction Points: [returning_user_friction]
│   └── Power Users: [power_user_percentage]%
│       ├── Behavior: [power_user_behavior]
│       ├── Conversion: [power_user_conversion]%
│       └── Friction Points: [power_user_friction]
├── 📈 ENGAGEMENT METRICS:
│   ├── Session Duration: [avg_session_duration]
│   ├── Pages per Session: [avg_pages_per_session]
│   ├── Bounce Rate: [bounce_rate]%
│   ├── Return Rate: [return_rate]%
│   └── Engagement Score: [engagement_score]/10
├── 🎯 GOAL COMPLETION:
│   ├── Primary Goal: [primary_goal_completion]%
│   ├── Secondary Goals: [secondary_goal_completion]%
│   ├── Tertiary Goals: [tertiary_goal_completion]%
│   └── Goal Efficiency: [goal_efficiency_score]/10
└── 📊 BEHAVIOR PATTERNS:
    ├── Peak Usage Times: [peak_usage_times]
    ├── Usage Patterns: [usage_patterns]
    ├── Feature Adoption: [feature_adoption_rate]%
    └── User Retention: [user_retention_rate]%

🔧 UX OPTIMIZATION RECOMMENDATIONS:
├── 🚨 IMMEDIATE IMPROVEMENTS:
│   ├── [immediate_improvement_1]:
│   │   ├── Issue: [issue_1]
│   │   ├── Impact: [impact_1]
│   │   ├── Solution: [solution_1]
│   │   ├── Effort: [effort_1]
│   │   └── Expected ROI: [roi_1]
│   ├── [immediate_improvement_2]:
│   │   ├── Issue: [issue_2]
│   │   ├── Impact: [impact_2]
│   │   ├── Solution: [solution_2]
│   │   ├── Effort: [effort_2]
│   │   └── Expected ROI: [roi_2]
│   └── [immediate_improvement_3]:
│       ├── Issue: [issue_3]
│       ├── Impact: [impact_3]
│       ├── Solution: [solution_3]
│       ├── Effort: [effort_3]
│       └── Expected ROI: [roi_3]
├── 📊 STRATEGIC IMPROVEMENTS:
│   ├── User Journey Optimization: [journey_optimization]
│   ├── Information Architecture: [ia_optimization]
│   ├── Interaction Design: [interaction_optimization]
│   └── Content Strategy: [content_optimization]
├── 🧪 TESTING RECOMMENDATIONS:
│   ├── User Testing: [user_testing_recommendations]
│   ├── A/B Testing: [ab_testing_recommendations]
│   ├── Usability Testing: [usability_testing_recommendations]
│   └── Accessibility Testing: [accessibility_testing_recommendations]
└── 📈 MEASUREMENT STRATEGY:
    ├── Key Metrics: [key_metrics]
    ├── Tracking Setup: [tracking_setup]
    ├── Success Criteria: [success_criteria]
    └── Monitoring Plan: [monitoring_plan]

📋 UX ENVIRONMENT:
├── 🌍 User Context:
│   ├── Primary Audience: [primary_audience]
│   ├── User Goals: [user_goals]
│   ├── User Constraints: [user_constraints]
│   └── Usage Context: [usage_context]
├── 🛠️ Technical Context:
│   ├── Device Distribution: [device_distribution]
│   ├── Browser Distribution: [browser_distribution]
│   ├── Connection Speed: [connection_speed]
│   └── Feature Support: [feature_support]
└── 📊 Business Context:
    ├── Business Goals: [business_goals]
    ├── Success Metrics: [success_metrics]
    ├── Constraints: [business_constraints]
    └── Priorities: [business_priorities]

⚠️ UX RISKS:
├── 🔴 HIGH RISK:
│   ├── [ux_risk_1]: [description_1] - [mitigation_1]
│   └── [ux_risk_2]: [description_2] - [mitigation_2]
├── 🟡 MEDIUM RISK:
│   ├── [ux_risk_3]: [description_3] - [mitigation_3]
│   └── [ux_risk_4]: [description_4] - [mitigation_4]
└── 🟢 LOW RISK:
    ├── [ux_risk_5]: [description_5] - [mitigation_5]
    └── [ux_risk_6]: [description_6] - [mitigation_6]

💡 NEXT STEPS:
├── 🔧 Quick Wins:
│   ├── [quick_win_1]: [description_1]
│   └── [quick_win_2]: [description_2]
├── 📊 Research & Testing:
│   ├── [research_1]: [description_1]
│   └── [research_2]: [description_2]
└── 🎯 Long-term Strategy:
    ├── [strategy_1]: [description_1]
    └── [strategy_2]: [description_2]
```

## Context Store Output

**Save UX analysis to:**
`.claude/analysis/debug-[session-id]/ux-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "ux-agent",
  "target": "$ARGUMENTS",
  "analysis": {
    "user_journey": {
      "entry_points": [],
      "user_goals": [],
      "conversion_funnel": [],
      "exit_points": []
    },
    "automated_flow_testing": {
      "journey_simulation": {
        "registration_flow": {},
        "login_flow": {},
        "core_feature_flow": {},
        "conversion_flow": {}
      },
      "visual_regression_testing": {
        "ui_consistency": {},
        "responsive_behavior": {},
        "interactive_elements": {}
      },
      "interaction_metrics": {
        "response_times": {},
        "element_counts": {},
        "accessibility_navigation": {}
      },
      "dom_analysis": {
        "element_visibility": {},
        "focus_management": {},
        "aria_implementation": {},
        "semantic_structure": {}
      }
    },
    "interaction_patterns": {
      "click_behavior": {},
      "navigation_behavior": {},
      "form_interactions": {},
      "device_specific_behavior": {}
    },
    "friction_points": {
      "identified_friction": [],
      "blocking_issues": [],
      "performance_impact": {},
      "friction_metrics": {}
    },
    "accessibility_analysis": {
      "compliance": {},
      "accessibility_issues": [],
      "visual_accessibility": {},
      "keyboard_accessibility": {},
      "assistive_technology": {}
    },
    "mobile_ux": {
      "mobile_experience": {},
      "touch_interactions": {},
      "responsive_design": {},
      "mobile_performance": {}
    },
    "conversion_optimization": {
      "conversion_analysis": {},
      "design_impact": {},
      "content_optimization": {},
      "ab_test_recommendations": []
    },
    "user_behavior_insights": {
      "user_segmentation": {},
      "engagement_metrics": {},
      "goal_completion": {},
      "behavior_patterns": {}
    },
    "optimization_recommendations": {
      "immediate_improvements": [],
      "strategic_improvements": {},
      "testing_recommendations": {},
      "measurement_strategy": {}
    }
  }
}
```

## MCP Integration Examples

### User Journey Analysis
```javascript
// Analyze user flows with analytics data
const userJourneys = await mcp__supabase_mcp_server__executeSQL(`
  SELECT user_id, event_sequence, conversion_status 
  FROM user_analytics 
  WHERE event_type = 'page_view'
`);

// Simulate actual user journeys with Puppeteer
const userFlow = await mcp__puppeteer__puppeteer_navigate('http://localhost:6123');
await mcp__puppeteer__puppeteer_click('[data-testid="login-button"]');
await mcp__puppeteer__puppeteer_fill('[data-testid="email-input"]', 'test@example.com');
await mcp__puppeteer__puppeteer_click('[data-testid="submit-button"]');

// Take screenshots for visual analysis
const screenshots = await mcp__browser_tools__takeScreenshot();
const puppeteerScreenshots = await mcp__puppeteer__puppeteer_screenshot({
  name: 'user-journey-flow',
  selector: '[data-testid="main-content"]'
});
```

### Accessibility Analysis
```javascript
// Run accessibility audit
const accessibilityAudit = await mcp__browser_tools__runAccessibilityAudit();

// Get accessibility guidelines
const wcagGuidelines = await mcp__context7__getLibraryDocs('wcag-accessibility');
```

### UX Research
```javascript
// Research UX best practices
const uxBestPractices = await mcp__context7__getLibraryDocs('ux-design-patterns');

// Get latest UX trends
const uxTrends = await mcp__brave_search__braveWebSearch('user experience trends 2024');
```

### Automated User Flow Testing
```javascript
// Test complete user journey with Puppeteer
const flowTest = async () => {
  await mcp__puppeteer__puppeteer_navigate('http://localhost:6123');
  
  // Test user registration flow
  await mcp__puppeteer__puppeteer_click('[data-testid="register-link"]');
  await mcp__puppeteer__puppeteer_fill('[data-testid="name-input"]', 'Test User');
  await mcp__puppeteer__puppeteer_fill('[data-testid="email-input"]', 'test@example.com');
  await mcp__puppeteer__puppeteer_fill('[data-testid="password-input"]', 'password123');
  
  // Screenshot key steps
  await mcp__puppeteer__puppeteer_screenshot({
    name: 'registration-form',
    selector: '[data-testid="registration-form"]'
  });
  
  await mcp__puppeteer__puppeteer_click('[data-testid="submit-button"]');
  
  // Test navigation flow
  await mcp__puppeteer__puppeteer_click('[data-testid="dashboard-link"]');
  await mcp__puppeteer__puppeteer_hover('[data-testid="user-menu"]');
  
  // Evaluate DOM for UX insights
  const uxMetrics = await mcp__puppeteer__puppeteer_evaluate(`
    // Measure interaction responsiveness
    const startTime = performance.now();
    document.querySelector('[data-testid="action-button"]').click();
    const endTime = performance.now();
    
    return {
      clickResponseTime: endTime - startTime,
      visibleElements: document.querySelectorAll('[data-testid]').length,
      scrollHeight: document.body.scrollHeight,
      focusableElements: document.querySelectorAll('button, input, select, textarea, a[href]').length
    };
  `);
};
```

## Success Criteria

UX agent should provide:
- **Comprehensive user journey mapping** with conversion analysis
- **Automated user flow testing** with real interaction simulation (Puppeteer)
- **Visual regression testing** for UI consistency across devices
- **Detailed friction point identification** with impact assessment
- **Complete accessibility compliance analysis** with remediation steps
- **Mobile UX optimization** with responsive design evaluation
- **Actionable UX improvement recommendations** with ROI estimates

**Time Target:** 3-4 minutes for comprehensive UX analysis
**Context Window:** Optimized for user experience analysis
**Handoff:** Clean JSON output for debug synthesis agent