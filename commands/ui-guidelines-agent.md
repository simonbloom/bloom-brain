# UI Guidelines Agent - Design System & Accessibility

Comprehensive UI/UX guidance agent providing design system standards, accessibility compliance, and interactive component guidelines for: **$ARGUMENTS**

## Agent Purpose
This agent provides comprehensive UI/UX guidance including design system principles, accessibility standards, component guidelines, and feature development best practices for maintaining consistent, accessible, and high-quality user interfaces.

## Analysis Scope
- **Storybook-first component discovery** and reuse validation
- Design system compliance and consistency
- **Latest Tailwind CSS** version validation and best practices
- **shadcn/ui component library** integration and optimization
- Accessibility standards (WCAG 2.1 AA+)
- Interactive component guidelines
- Feature development UI checklist
- Code quality and modularity for UI components
- Brand consistency and theme adherence
- **Technology version validation** and migration guidance

## MCP Tools Used
- **File System Tools**: Read component files, analyze UI patterns, Storybook story discovery
- **Browser Tools MCP**: Accessibility audits, visual testing, responsive design validation
- **Context7 MCP**: Latest UI frameworks, Tailwind CSS docs, shadcn/ui documentation, design patterns
- **Brave Search MCP**: Current UI/UX trends, accessibility best practices, latest Tailwind features

## Analysis Process

### Phase 1: Storybook Component Discovery
**Storybook-First Development Workflow:**
- Search existing Storybook stories for similar components
- Evaluate component reusability vs. new creation
- Analyze component variations and patterns
- Document rationale for new component creation

### Phase 2: Technology Version Validation
**Latest Technology Integration:**
- Verify latest Tailwind CSS version and features
- Check shadcn/ui component library updates
- Validate proper installation and configuration
- Identify deprecated patterns and migration needs

### Phase 3: Design System Analysis
**Current Design System Assessment:**
- Analyze existing component patterns
- Verify Tailwind CSS utility-first compliance
- Check shadcn/ui component integration
- Validate brand consistency and theme support

### Phase 4: Accessibility Compliance
**Accessibility Standards Verification:**
- WCAG 2.1 AA compliance check
- Keyboard navigation testing
- Screen reader compatibility
- Color contrast validation

### Phase 5: Interactive Components Review
**Component Guidelines Application:**
- Optimistic UI patterns
- Responsive design validation
- Performance impact assessment
- User experience optimization

## Output Format

```
🎨 UI GUIDELINES ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: ui-guidelines-agent

📊 UI COMPLIANCE OVERVIEW:
├── 📚 Storybook Integration: [storybook_integration_score]/100
├── 🎯 Design System Compliance: [design_system_score]/100
├── ⚡ Tailwind CSS Latest: [tailwind_latest_score]/100
├── 🧩 shadcn/ui Integration: [shadcn_integration_score]/100
├── ♿ Accessibility Score: [accessibility_score]/100
├── 📱 Responsive Design: [responsive_score]/100
├── 🎨 Brand Consistency: [brand_score]/100
└── 🔧 Component Quality: [component_score]/100

📚 STORYBOOK INTEGRATION:

├── 🔍 COMPONENT DISCOVERY:
│   ├── Storybook Stories Found: [storybook_stories_count]
│   │   ├── Component Categories: [component_categories_count]
│   │   ├── Similar Components: [similar_components_found]
│   │   ├── Reusable Patterns: [reusable_patterns_count]
│   │   └── Component Variations: [component_variations_count]
│   ├── Existing Component Analysis: [existing_component_analysis]
│   │   ├── Reusable Components: [reusable_components_count]
│   │   ├── Customizable Components: [customizable_components_count]
│   │   ├── Component Extensions: [component_extensions_count]
│   │   └── Pattern Matches: [pattern_matches_count]
│   └── Component Duplication Check: [duplication_check_status]
│       ├── Potential Duplicates: [potential_duplicates_count]
│       ├── Similar Functionality: [similar_functionality_count]
│       └── Recommended Reuse: [recommended_reuse_count]
├── 📋 STORYBOOK-FIRST WORKFLOW:
│   ├── Pre-Development Discovery: [pre_dev_discovery_score]
│   │   ├── Storybook Search Performed: [storybook_search_performed]
│   │   ├── Component Evaluation: [component_evaluation_score]
│   │   ├── Reuse vs. Create Decision: [reuse_vs_create_decision]
│   │   └── Documentation Rationale: [documentation_rationale_score]
│   ├── Development Integration: [development_integration_score]
│   │   ├── Story Creation: [story_creation_score]
│   │   ├── Component Testing: [component_testing_score]
│   │   ├── Variant Documentation: [variant_documentation_score]
│   │   └── Pattern Validation: [pattern_validation_score]
│   └── Quality Assurance: [storybook_qa_score]
│       ├── Story Completeness: [story_completeness_score]
│       ├── Component Documentation: [component_documentation_score]
│       ├── Design System Alignment: [design_system_alignment_score]
│       └── Team Accessibility: [team_accessibility_score]
└── 🎯 COMPONENT REUSABILITY:
    ├── Reuse Opportunities: [reuse_opportunities_count]
    ├── Component Extensions: [component_extensions_count]
    ├── Pattern Consistency: [pattern_consistency_score]
    └── Design System Growth: [design_system_growth_score]

⚡ TAILWIND CSS LATEST VERSION:

├── 🔧 VERSION VALIDATION:
│   ├── Current Version: [current_tailwind_version]
│   │   ├── Latest Available: [latest_tailwind_version]
│   │   ├── Version Gap: [version_gap_assessment]
│   │   ├── Update Required: [update_required_status]
│   │   └── Breaking Changes: [breaking_changes_count]
│   ├── Configuration Compliance: [config_compliance_score]
│   │   ├── Tailwind Config: [tailwind_config_score]
│   │   ├── PostCSS Setup: [postcss_setup_score]
│   │   ├── Build Integration: [build_integration_score]
│   │   └── Plugin Usage: [plugin_usage_score]
│   └── Feature Utilization: [feature_utilization_score]
│       ├── New Utilities: [new_utilities_usage]%
│       ├── Modern Patterns: [modern_patterns_usage]%
│       ├── CSS Variables: [css_variables_usage]%
│       └── Container Queries: [container_queries_usage]%
├── 🎨 UTILITY-FIRST COMPLIANCE:
│   ├── Utility Class Usage: [utility_class_usage]%
│   │   ├── Inline Styles: [inline_styles_count] (Target: 0)
│   │   ├── Custom CSS Files: [custom_css_files_count] (Minimize)
│   │   ├── Utility Coverage: [utility_coverage]%
│   │   └── Class Composition: [class_composition_score]
│   ├── Best Practices: [best_practices_score]
│   │   ├── Component Abstraction: [component_abstraction_score]
│   │   ├── Responsive Design: [responsive_design_score]
│   │   ├── Dark Mode: [dark_mode_implementation_score]
│   │   └── Performance: [performance_score]
│   └── Anti-Patterns Avoided: [anti_patterns_avoided_score]
│       ├── No Arbitrary Values: [no_arbitrary_values_score]
│       ├── No Important Modifiers: [no_important_modifiers_score]
│       ├── No Inline Styles: [no_inline_styles_score]
│       └── No CSS-in-JS: [no_css_in_js_score]
└── 📚 MODERN FEATURES:
    ├── Latest Utilities: [latest_utilities_score]
    ├── Advanced Patterns: [advanced_patterns_score]
    ├── Performance Features: [performance_features_score]
    └── Accessibility Features: [accessibility_features_score]

🧩 SHADCN/UI INTEGRATION:

├── 📦 COMPONENT LIBRARY STATUS:
│   ├── Installation Status: [installation_status]
│   │   ├── shadcn/ui Version: [shadcn_version]
│   │   ├── Latest Available: [latest_shadcn_version]
│   │   ├── Components Installed: [components_installed_count]
│   │   └── Update Available: [update_available_status]
│   ├── Component Usage: [component_usage_score]
│   │   ├── Core Components: [core_components_usage]%
│   │   ├── Form Components: [form_components_usage]%
│   │   ├── Layout Components: [layout_components_usage]%
│   │   └── Custom Components: [custom_components_count]
│   └── Integration Quality: [integration_quality_score]
│       ├── Proper Imports: [proper_imports_score]
│       ├── Theme Integration: [theme_integration_score]
│       ├── Customization Patterns: [customization_patterns_score]
│       └── TypeScript Support: [typescript_support_score]
├── 🎨 CUSTOMIZATION BEST PRACTICES:
│   ├── Theme Customization: [theme_customization_score]
│   │   ├── CSS Variables: [css_variables_customization]%
│   │   ├── Tailwind Integration: [tailwind_integration_score]
│   │   ├── Dark Mode Support: [dark_mode_support_score]
│   │   └── Brand Consistency: [brand_consistency_score]
│   ├── Component Extensions: [component_extensions_score]
│   │   ├── Variant Creation: [variant_creation_score]
│   │   ├── Composition Patterns: [composition_patterns_score]
│   │   ├── Accessibility Enhancements: [accessibility_enhancements_score]
│   │   └── Performance Optimizations: [performance_optimizations_score]
│   └── Anti-Patterns Avoided: [shadcn_anti_patterns_avoided_score]
│       ├── No Direct Modifications: [no_direct_modifications_score]
│       ├── Proper Customization: [proper_customization_score]
│       ├── Theme Consistency: [theme_consistency_score]
│       └── Component Isolation: [component_isolation_score]
└── 🔧 RADIX UI FOUNDATION:
    ├── Radix Primitives: [radix_primitives_score]
    ├── Accessibility Built-in: [accessibility_builtin_score]
    ├── Unstyled Components: [unstyled_components_score]
    └── Behavior Consistency: [behavior_consistency_score]

🎨 DESIGN SYSTEM PRINCIPLES:

├── 🔧 CORE PRINCIPLES:
│   ├── ✅ Tailwind CSS Utility Classes: [tailwind_compliance]
│   │   ├── Inline Styles Usage: [inline_styles_count] (Target: 0)
│   │   ├── Utility Class Coverage: [utility_coverage]%
│   │   └── Custom CSS Files: [custom_css_count] (Minimize)
│   ├── 🧩 shadcn/ui Components: [shadcn_compliance]
│   │   ├── Component Library Usage: [shadcn_usage]%
│   │   ├── Custom Components: [custom_components_count]
│   │   └── Radix UI Integration: [radix_integration]
│   ├── 🌙 Theme Support: [theme_support]
│   │   ├── Dark Mode: [dark_mode_support]
│   │   ├── Light Mode: [light_mode_support]
│   │   └── Theme Consistency: [theme_consistency]/100
│   └── 📱 Mobile-First Design: [mobile_first_score]
│       ├── Responsive Breakpoints: [breakpoint_usage]
│       ├── Touch-Friendly Elements: [touch_friendly_score]
│       └── Mobile Performance: [mobile_performance_score]
├── 📐 CONSISTENCY GUIDELINES:
│   ├── Spacing System: [spacing_consistency]
│   │   ├── Tailwind Scale Usage: [tailwind_scale_usage]%
│   │   ├── Consistent Margins: [margin_consistency]
│   │   └── Consistent Padding: [padding_consistency]
│   ├── Color Patterns: [color_consistency]
│   │   ├── Scribe Brand Colors: [brand_color_usage]%
│   │   ├── Color Accessibility: [color_accessibility_score]
│   │   └── Semantic Color Usage: [semantic_color_usage]
│   ├── Typography System: [typography_consistency]
│   │   ├── Font System Usage: [font_system_usage]%
│   │   ├── Font Hierarchy: [font_hierarchy_score]
│   │   └── Readability Score: [readability_score]
│   └── Icon System: [icon_consistency]
│       ├── Lucide React Usage: [lucide_usage]%
│       ├── Icon Size Consistency: [icon_size_consistency]
│       └── Icon Semantic Usage: [icon_semantic_usage]
└── 🏗️ LAYOUT PATTERNS:
    ├── Established Patterns: [pattern_adherence]%
    ├── Component Reusability: [component_reusability]
    ├── Layout Consistency: [layout_consistency]
    └── Grid System Usage: [grid_system_usage]

♿ ACCESSIBILITY STANDARDS:

├── 📋 WCAG 2.1 COMPLIANCE:
│   ├── Level A: [wcag_a_compliance]%
│   ├── Level AA: [wcag_aa_compliance]% (Target: 100%)
│   ├── Level AAA: [wcag_aaa_compliance]% (Aspirational)
│   └── Overall Score: [accessibility_overall_score]/100
├── 🏗️ SEMANTIC HTML:
│   ├── Proper HTML Structure: [semantic_html_score]
│   │   ├── Header Usage: [header_usage]
│   │   ├── Nav Elements: [nav_elements_score]
│   │   ├── Main Content: [main_content_score]
│   │   ├── Section Usage: [section_usage]
│   │   └── Footer Elements: [footer_elements_score]
│   ├── Form Accessibility: [form_accessibility_score]
│   │   ├── Label Association: [label_association]%
│   │   ├── Error Messages: [error_messages_score]
│   │   ├── Field Validation: [field_validation_score]
│   │   └── Form Navigation: [form_navigation_score]
│   └── Interactive Elements: [interactive_elements_score]
│       ├── Button Accessibility: [button_accessibility]
│       ├── Link Accessibility: [link_accessibility]
│       └── Custom Controls: [custom_controls_score]
├── ⌨️ KEYBOARD NAVIGATION:
│   ├── Keyboard Navigation: [keyboard_nav_score]/100
│   │   ├── Tab Order: [tab_order_score]
│   │   ├── Focus Management: [focus_management_score]
│   │   ├── Keyboard Shortcuts: [keyboard_shortcuts_score]
│   │   └── Escape Key Handling: [escape_key_handling]
│   ├── Focus Indicators: [focus_indicators_score]/100
│   │   ├── Visible Focus: [visible_focus_score]
│   │   ├── Focus Contrast: [focus_contrast_score]
│   │   ├── Focus Consistency: [focus_consistency_score]
│   │   └── Custom Focus Styles: [custom_focus_styles]
│   └── Interactive Element Access: [interactive_access_score]
│       ├── All Interactive Elements: [all_interactive_accessible]%
│       ├── Modal Accessibility: [modal_accessibility_score]
│       └── Dropdown Accessibility: [dropdown_accessibility_score]
├── 🎨 VISUAL ACCESSIBILITY:
│   ├── Color Contrast: [color_contrast_score]/100
│   │   ├── Normal Text: [normal_text_contrast] (Target: 4.5:1)
│   │   ├── Large Text: [large_text_contrast] (Target: 3:1)
│   │   ├── UI Components: [ui_components_contrast] (Target: 3:1)
│   │   └── Graphical Elements: [graphical_elements_contrast]
│   ├── Color Independence: [color_independence_score]
│   │   ├── Information Conveyed: [info_without_color]%
│   │   ├── Status Indicators: [status_indicators_score]
│   │   └── Error Handling: [error_handling_score]
│   └── Text Readability: [text_readability_score]
│       ├── Font Size: [font_size_score]
│       ├── Line Height: [line_height_score]
│       ├── Character Spacing: [character_spacing_score]
│       └── Text Contrast: [text_contrast_score]
└── 🔊 ASSISTIVE TECHNOLOGY:
    ├── Screen Reader Support: [screen_reader_score]/100
    │   ├── ARIA Labels: [aria_labels_coverage]%
    │   ├── ARIA Descriptions: [aria_descriptions_coverage]%
    │   ├── ARIA Roles: [aria_roles_coverage]%
    │   └── ARIA States: [aria_states_coverage]%
    ├── Alternative Text: [alt_text_score]
    │   ├── Image Alt Text: [image_alt_coverage]%
    │   ├── Decorative Images: [decorative_images_handled]%
    │   ├── Icon Alt Text: [icon_alt_coverage]%
    │   └── Complex Graphics: [complex_graphics_score]
    └── Voice Navigation: [voice_navigation_score]
        ├── Voice Commands: [voice_commands_support]
        ├── Voice Labels: [voice_labels_coverage]%
        └── Voice Feedback: [voice_feedback_score]

🔧 INTERACTIVE UI COMPONENTS:

├── 💫 OPTIMISTIC UI PATTERNS:
│   ├── State Management: [optimistic_state_score]
│   │   ├── Optimistic Updates: [optimistic_updates_score]
│   │   ├── Rollback Handling: [rollback_handling_score]
│   │   ├── Error Recovery: [error_recovery_score]
│   │   └── Loading States: [loading_states_score]
│   ├── Visual Feedback: [visual_feedback_score]
│   │   ├── Immediate Response: [immediate_response_score]
│   │   ├── Progress Indicators: [progress_indicators_score]
│   │   ├── Success States: [success_states_score]
│   │   └── Error States: [error_states_score]
│   └── User Experience: [optimistic_ux_score]
│       ├── Perceived Performance: [perceived_performance_score]
│       ├── User Confidence: [user_confidence_score]
│       └── Interaction Flow: [interaction_flow_score]
├── 🚫 NOTIFICATION STRATEGY:
│   ├── Toast Usage: [toast_usage_score]
│   │   ├── Appropriate Usage: [appropriate_toast_usage]%
│   │   ├── Avoid During Operations: [avoid_operational_toasts]%
│   │   ├── Accessibility: [toast_accessibility_score]
│   │   └── User Control: [toast_user_control_score]
│   ├── Alternative Feedback: [alternative_feedback_score]
│   │   ├── Inline Feedback: [inline_feedback_score]
│   │   ├── Status Indicators: [status_indicators_score]
│   │   ├── Progress Bars: [progress_bars_score]
│   │   └── Visual Cues: [visual_cues_score]
│   └── UX Optimization: [notification_ux_score]
│       ├── Drag and Drop: [drag_drop_feedback_score]
│       ├── Form Interactions: [form_feedback_score]
│       └── Background Operations: [background_ops_score]
├── 📱 RESPONSIVE BEHAVIOR:
│   ├── Breakpoint Handling: [breakpoint_handling_score]
│   │   ├── Mobile (320-767px): [mobile_breakpoint_score]
│   │   ├── Tablet (768-1023px): [tablet_breakpoint_score]
│   │   └── Desktop (1024px+): [desktop_breakpoint_score]
│   ├── Touch Interactions: [touch_interactions_score]
│   │   ├── Touch Targets: [touch_targets_score] (Min: 44px)
│   │   ├── Gesture Support: [gesture_support_score]
│   │   ├── Touch Feedback: [touch_feedback_score]
│   │   └── Hover States: [hover_states_handling]
│   └── Performance: [responsive_performance_score]
│       ├── Image Optimization: [image_optimization_score]
│       ├── Layout Shift: [layout_shift_score]
│       └── Loading Performance: [loading_performance_score]
└── 🔄 BACKGROUND OPERATIONS:
    ├── Element Responsiveness: [element_responsiveness_score]
    │   ├── Interactive Elements: [interactive_elements_responsive]%
    │   ├── Form Elements: [form_elements_responsive]%
    │   └── Navigation Elements: [nav_elements_responsive]%
    ├── Loading States: [loading_states_management]
    │   ├── Loading Indicators: [loading_indicators_score]
    │   ├── Skeleton Loading: [skeleton_loading_score]
    │   └── Progressive Loading: [progressive_loading_score]
    └── Error Handling: [error_handling_ui_score]
        ├── Error Boundaries: [error_boundaries_score]
        ├── Graceful Degradation: [graceful_degradation_score]
        └── Recovery Actions: [recovery_actions_score]

📋 FEATURE DEVELOPMENT CHECKLIST:

├── 📚 STORYBOOK-FIRST DISCOVERY:
│   ├── □ Searched Storybook for existing similar components
│   ├── □ Evaluated component reusability vs. new creation
│   ├── □ Documented rationale for new component (if creating)
│   ├── □ Identified existing patterns that can be extended
│   ├── □ Verified no component duplication
│   ├── □ Analyzed component variations in Storybook
│   └── □ Confirmed component fits design system patterns
├── ⚡ TECHNOLOGY VERSION VALIDATION:
│   ├── □ Using latest Tailwind CSS version
│   ├── □ shadcn/ui components up to date
│   ├── □ No deprecated Tailwind utilities used
│   ├── □ Latest accessibility features implemented
│   ├── □ Modern CSS features utilized where appropriate
│   └── □ Build configuration optimized for latest versions
├── 🏗️ ARCHITECTURE COMPLIANCE:
│   ├── □ Feature fits established architecture
│   ├── □ Components in appropriate directory structure
│   ├── □ Follows feature-based organization
│   ├── □ Proper separation of concerns
│   └── □ Integration with existing patterns
├── 🎨 STYLING COMPLIANCE:
│   ├── □ Tailwind CSS utility classes exclusively
│   ├── □ No inline styles used
│   ├── □ shadcn/ui components utilized
│   ├── □ Dark and light theme support
│   ├── □ Mobile-first responsive design
│   ├── □ Scribe brand colors used
│   ├── □ Established font system followed
│   ├── □ Lucide React icons used
│   ├── □ Consistent spacing (Tailwind scale)
│   └── □ Existing layout patterns followed
├── ♿ ACCESSIBILITY COMPLIANCE:
│   ├── □ WCAG 2.1 AA standards met
│   ├── □ Proper semantic HTML structure
│   ├── □ Keyboard navigation supported
│   ├── □ Color contrast ratios met (4.5:1 minimum)
│   ├── □ ARIA attributes added where needed
│   ├── □ Screen reader compatibility tested
│   ├── □ Focus indicators implemented
│   ├── □ Alternative text for images
│   ├── □ Form labels properly associated
│   └── □ Error messages accessible
├── 🔧 COMPONENT QUALITY:
│   ├── □ Optimistic UI updates implemented
│   ├── □ Appropriate loading states
│   ├── □ Error boundaries in place
│   ├── □ Performance optimized
│   ├── □ Reusable component patterns
│   ├── □ Props properly typed (TypeScript)
│   ├── □ Component documentation
│   ├── □ Unit tests written
│   └── □ Storybook stories created
├── 📱 RESPONSIVE DESIGN:
│   ├── □ Mobile breakpoint (320-767px) tested
│   ├── □ Tablet breakpoint (768-1023px) tested
│   ├── □ Desktop breakpoint (1024px+) tested
│   ├── □ Touch targets minimum 44px
│   ├── □ Gesture support where applicable
│   ├── □ Images optimized for different densities
│   ├── □ Layout shifts minimized
│   └── □ Performance tested on mobile devices
├── 🔄 INTERACTION PATTERNS:
│   ├── □ Immediate user feedback
│   ├── □ Loading states for async operations
│   ├── □ Error handling with recovery options
│   ├── □ Success confirmations
│   ├── □ Hover states for interactive elements
│   ├── □ Focus states clearly visible
│   ├── □ Disabled states properly handled
│   └── □ Animation and transitions smooth
├── 🧪 TESTING REQUIREMENTS:
│   ├── □ Unit tests for component logic
│   ├── □ Integration tests for workflows
│   ├── □ Accessibility tests automated
│   ├── □ Visual regression tests
│   ├── □ Performance tests on target devices
│   ├── □ Cross-browser compatibility tested
│   ├── □ Screen reader testing performed
│   └── □ User acceptance testing completed
└── 📊 QUALITY ASSURANCE:
    ├── □ Code review completed
    ├── □ Browser console error-free
    ├── □ Network requests optimized
    ├── □ Bundle size impact assessed
    ├── □ Core Web Vitals measured
    ├── □ Documentation updated
    ├── □ Design system updated if needed
    └── □ Deployment checklist completed

🔧 CODE QUALITY GUIDELINES:

├── 📁 FILE ORGANIZATION:
│   ├── Component Structure: [component_structure_score]
│   │   ├── Max File Length: [max_file_length] (Target: <500 lines)
│   │   ├── Single Responsibility: [single_responsibility_score]
│   │   ├── Clear Naming: [clear_naming_score]
│   │   └── Proper Imports: [proper_imports_score]
│   ├── Directory Structure: [directory_structure_score]
│   │   ├── Feature-Based Organization: [feature_based_score]
│   │   ├── UI Components: [ui_components_organization]
│   │   ├── Hooks Organization: [hooks_organization_score]
│   │   └── Service Layer: [service_layer_score]
│   └── Modularity: [modularity_score]
│       ├── Component Reusability: [component_reusability_score]
│       ├── Hook Reusability: [hook_reusability_score]
│       ├── Utility Functions: [utility_functions_score]
│       └── Type Definitions: [type_definitions_score]
├── 🔗 IMPORT MANAGEMENT:
│   ├── Import Consistency: [import_consistency_score]
│   │   ├── Relative Imports: [relative_imports_usage]%
│   │   ├── Absolute Imports: [absolute_imports_usage]%
│   │   ├── Barrel Exports: [barrel_exports_score]
│   │   └── Import Grouping: [import_grouping_score]
│   ├── Dependency Management: [dependency_management_score]
│   │   ├── Unused Dependencies: [unused_dependencies_count]
│   │   ├── Circular Dependencies: [circular_dependencies_count]
│   │   └── External Dependencies: [external_dependencies_score]
│   └── Performance Impact: [import_performance_score]
│       ├── Tree Shaking: [tree_shaking_score]
│       ├── Code Splitting: [code_splitting_score]
│       └── Bundle Size: [bundle_size_score]
├── 📝 TYPESCRIPT INTEGRATION:
│   ├── Type Safety: [type_safety_score]
│   │   ├── Component Props: [component_props_typed]%
│   │   ├── Event Handlers: [event_handlers_typed]%
│   │   ├── State Management: [state_management_typed]%
│   │   └── API Responses: [api_responses_typed]%
│   ├── Type Definitions: [type_definitions_quality]
│   │   ├── Interface Usage: [interface_usage_score]
│   │   ├── Type Exports: [type_exports_score]
│   │   ├── Generic Types: [generic_types_score]
│   │   └── Utility Types: [utility_types_score]
│   └── Development Experience: [typescript_dx_score]
│       ├── IDE Support: [ide_support_score]
│       ├── Error Messages: [error_messages_quality]
│       └── IntelliSense: [intellisense_score]
└── 🎯 BEST PRACTICES:
    ├── Component Patterns: [component_patterns_score]
    │   ├── Compound Components: [compound_components_score]
    │   ├── Render Props: [render_props_score]
    │   ├── Higher-Order Components: [hoc_score]
    │   └── Custom Hooks: [custom_hooks_score]
    ├── State Management: [state_management_score]
    │   ├── Local State: [local_state_score]
    │   ├── Global State: [global_state_score]
    │   ├── Server State: [server_state_score]
    │   └── State Persistence: [state_persistence_score]
    └── Performance: [performance_best_practices]
        ├── Memoization: [memoization_score]
        ├── Lazy Loading: [lazy_loading_score]
        ├── Virtual Scrolling: [virtual_scrolling_score]
        └── Resource Optimization: [resource_optimization_score]

🔍 CURRENT PROJECT ANALYSIS:

├── 🎨 DESIGN SYSTEM STATUS:
│   ├── [analysis_item_1]: [analysis_result_1]
│   ├── [analysis_item_2]: [analysis_result_2]
│   └── [analysis_item_3]: [analysis_result_3]
├── ♿ ACCESSIBILITY STATUS:
│   ├── [accessibility_item_1]: [accessibility_result_1]
│   ├── [accessibility_item_2]: [accessibility_result_2]
│   └── [accessibility_item_3]: [accessibility_result_3]
├── 📱 RESPONSIVE DESIGN STATUS:
│   ├── [responsive_item_1]: [responsive_result_1]
│   ├── [responsive_item_2]: [responsive_result_2]
│   └── [responsive_item_3]: [responsive_result_3]
└── 🔧 COMPONENT QUALITY STATUS:
    ├── [quality_item_1]: [quality_result_1]
    ├── [quality_item_2]: [quality_result_2]
    └── [quality_item_3]: [quality_result_3]

🚨 ISSUES & RECOMMENDATIONS:

├── 🔴 CRITICAL ISSUES:
│   ├── [critical_issue_1]: [critical_description_1]
│   │   ├── Impact: [critical_impact_1]
│   │   ├── Fix: [critical_fix_1]
│   │   └── Priority: [critical_priority_1]
│   └── [critical_issue_2]: [critical_description_2]
│       ├── Impact: [critical_impact_2]
│       ├── Fix: [critical_fix_2]
│       └── Priority: [critical_priority_2]
├── 🟡 IMPROVEMENTS:
│   ├── [improvement_1]: [improvement_description_1]
│   │   ├── Benefit: [improvement_benefit_1]
│   │   ├── Effort: [improvement_effort_1]
│   │   └── ROI: [improvement_roi_1]
│   └── [improvement_2]: [improvement_description_2]
│       ├── Benefit: [improvement_benefit_2]
│       ├── Effort: [improvement_effort_2]
│       └── ROI: [improvement_roi_2]
├── 🟢 QUICK WINS:
│   ├── [quick_win_1]: [quick_win_description_1]
│   ├── [quick_win_2]: [quick_win_description_2]
│   └── [quick_win_3]: [quick_win_description_3]
└── 📋 ACTION ITEMS:
    ├── [action_item_1]: [action_description_1]
    ├── [action_item_2]: [action_description_2]
    └── [action_item_3]: [action_description_3]

💡 NEXT STEPS:

├── 🔧 Immediate Actions:
│   ├── [immediate_action_1]: [immediate_description_1]
│   └── [immediate_action_2]: [immediate_description_2]
├── 📊 Testing & Validation:
│   ├── [testing_action_1]: [testing_description_1]
│   └── [testing_action_2]: [testing_description_2]
└── 🎯 Long-term Improvements:
    ├── [longterm_action_1]: [longterm_description_1]
    └── [longterm_action_2]: [longterm_description_2]
```

## Context Store Output

**Save UI guidelines analysis to:**
`.claude/analysis/ui-guidelines-[session-id]/ui-guidelines-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "ui-guidelines-agent",
  "target": "$ARGUMENTS",
  "analysis": {
    "design_system_compliance": {
      "core_principles": {},
      "consistency_guidelines": {},
      "layout_patterns": {}
    },
    "accessibility_standards": {
      "wcag_compliance": {},
      "semantic_html": {},
      "keyboard_navigation": {},
      "visual_accessibility": {},
      "assistive_technology": {}
    },
    "interactive_components": {
      "optimistic_ui": {},
      "notification_strategy": {},
      "responsive_behavior": {},
      "background_operations": {}
    },
    "feature_development_checklist": {
      "architecture_compliance": [],
      "styling_compliance": [],
      "accessibility_compliance": [],
      "component_quality": [],
      "responsive_design": [],
      "interaction_patterns": [],
      "testing_requirements": [],
      "quality_assurance": []
    },
    "code_quality_guidelines": {
      "file_organization": {},
      "import_management": {},
      "typescript_integration": {},
      "best_practices": {}
    },
    "current_project_analysis": {
      "design_system_status": {},
      "accessibility_status": {},
      "responsive_design_status": {},
      "component_quality_status": {}
    },
    "issues_recommendations": {
      "critical_issues": [],
      "improvements": [],
      "quick_wins": [],
      "action_items": []
    }
  }
}
```

## MCP Integration Examples

### Storybook Component Discovery
```javascript
// Search for existing Storybook stories
const storybookFiles = await glob('src/stories/**/*.stories.{ts,tsx,js,jsx}');
const existingStories = await analyzeStorybookStories(storybookFiles);

// Find similar components
const similarComponents = await findSimilarComponents(existingStories, targetComponent);

// Evaluate component reusability
const reusabilityAnalysis = await evaluateComponentReusability(similarComponents);
```

### Technology Version Validation
```javascript
// Check latest Tailwind CSS version
const tailwindVersion = await mcp__context7__getLibraryDocs('tailwindcss/latest');

// Verify shadcn/ui components
const shadcnVersion = await mcp__context7__getLibraryDocs('shadcn-ui/latest');

// Get latest accessibility guidelines
const wcagUpdates = await mcp__brave_search__brave_web_search('WCAG 2.1 AA updates 2024');
```

### Design System Analysis
```javascript
// Analyze component patterns
const componentFiles = await glob('src/components/**/*.tsx');
const designSystemCompliance = await analyzeDesignSystem(componentFiles);

// Check Tailwind usage and latest features
const tailwindUsage = await analyzeTailwindUsage(componentFiles);
const latestFeatures = await checkLatestTailwindFeatures(componentFiles);
```

### Accessibility Testing
```javascript
// Run accessibility audit
const accessibilityAudit = await mcp__browser_tools__runAccessibilityAudit();

// Get accessibility best practices
const wcagGuidelines = await mcp__context7__getLibraryDocs('wcag-2.1-guidelines');

// Check for latest accessibility features
const accessibilityUpdates = await mcp__brave_search__brave_web_search('web accessibility best practices 2024');
```

### Responsive Design Validation
```javascript
// Test responsive breakpoints
const responsiveTest = await testResponsiveDesign();

// Check mobile performance
const mobilePerformance = await mcp__browser_tools__runPerformanceAudit();

// Validate latest responsive patterns
const modernResponsive = await mcp__context7__getLibraryDocs('tailwindcss/responsive-design');
```

### Code Quality Assessment
```javascript
// Analyze component structure
const codeQuality = await analyzeCodeQuality(componentFiles);

// Check TypeScript integration
const typeScriptAnalysis = await analyzeTypeScriptUsage(componentFiles);

// Validate shadcn/ui integration
const shadcnIntegration = await validateShadcnIntegration(componentFiles);
```

## Technology Anti-Patterns to Avoid

### ❌ Tailwind CSS Anti-Patterns
```javascript
// DON'T: Use arbitrary values excessively
<div className="w-[127px] h-[43px] bg-[#ff6b6b]" />

// DO: Use utility classes and CSS variables
<div className="w-32 h-11 bg-red-500" />

// DON'T: Use !important modifiers
<div className="!text-red-500 !font-bold" />

// DO: Use proper utility precedence
<div className="text-red-500 font-bold" />

// DON'T: Mix inline styles with Tailwind
<div className="p-4" style={{ marginTop: '10px' }} />

// DO: Use utility classes exclusively
<div className="p-4 mt-2.5" />
```

### ❌ shadcn/ui Anti-Patterns
```javascript
// DON'T: Modify shadcn/ui components directly
// File: components/ui/button.tsx
export const Button = ({ children, ...props }) => {
  return <button className="bg-blue-500 p-4">{children}</button>; // Modified directly
};

// DO: Create variants or extend components
// File: components/button-variants.tsx
import { Button } from "@/components/ui/button";
import { cn } from "@/lib/utils";

export const PrimaryButton = ({ className, ...props }) => {
  return <Button className={cn("bg-blue-500", className)} {...props} />;
};

// DON'T: Skip theme integration
<Button className="bg-red-500" />

// DO: Use theme-aware colors
<Button variant="destructive" />
```

### ❌ Storybook Anti-Patterns
```javascript
// DON'T: Create components without checking Storybook first
export const CustomButton = () => {
  return <button className="px-4 py-2 bg-blue-500">Click me</button>;
};

// DO: Search Storybook stories first
// Check: src/stories/Button.stories.tsx
// Reuse: <Button variant="primary" />

// DON'T: Skip story creation for new components
// (No corresponding .stories.tsx file)

// DO: Always create stories for new components
// File: CustomComponent.stories.tsx
export default {
  title: 'Components/CustomComponent',
  component: CustomComponent,
};
```

## Success Criteria

UI Guidelines agent should provide:
- **Storybook-first component discovery** with reusability analysis
- **Latest technology validation** for Tailwind CSS and shadcn/ui
- **Comprehensive design system compliance** with specific recommendations
- **Complete accessibility assessment** with WCAG 2.1 AA validation
- **Interactive component guidelines** with implementation examples
- **Feature development checklist** with Storybook-first principles
- **Code quality guidelines** with best practices enforcement
- **Anti-pattern detection** for Tailwind, shadcn, and Storybook misuse

**Time Target:** 3-4 minutes for comprehensive UI guidelines analysis
**Context Window:** Optimized for UI/UX-focused guidance with technology validation
**Handoff:** Complete implementation checklist with quality standards and modern practices
**Technology Focus:** Latest Tailwind CSS features, shadcn/ui components, and Storybook patterns