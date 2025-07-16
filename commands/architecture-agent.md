# Architecture Agent - Live System Analysis

Comprehensive architecture analysis and documentation agent providing real-time system insights for: **$ARGUMENTS**

## Agent Purpose
This agent provides live architecture analysis, system documentation, and integration pattern analysis with real-time assessment of the current system state, database schema, and architectural health.

## Analysis Scope
- Live system architecture analysis
- Database schema and relationship mapping
- Integration pattern identification
- Architecture health assessment
- Performance architecture review
- Scalability analysis

## MCP Tools Used
- **File System Tools**: Analyze codebase structure, configuration files, architectural patterns
- **Supabase MCP**: Database schema analysis, RLS policy review, real-time data insights
- **Browser Tools MCP**: Live system testing, integration verification
- **Context7 MCP**: Architecture best practices, design patterns, system documentation
- **Brave Search MCP**: Latest architectural trends, technology updates

## Analysis Process

### Phase 1: System Architecture Analysis
**Current Architecture Assessment:**
- Analyze application structure and organization
- Identify architectural patterns in use
- Review service layer implementation
- Assess component organization

### Phase 2: Database Architecture Review
**Database Schema Analysis:**
- Real-time schema documentation
- Relationship mapping and analysis
- RLS policy effectiveness review
- Performance optimization opportunities

### Phase 3: Integration Architecture
**Integration Pattern Analysis:**
- External service integrations
- API architecture review
- Authentication flow analysis
- Data flow documentation

## Output Format

```
🏗️ ARCHITECTURE ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: architecture-agent

📊 ARCHITECTURE OVERVIEW:
├── 🎯 Architecture Health Score: [architecture_health_score]/100
├── 📱 Frontend Architecture: [frontend_architecture_score]/100
├── 🔧 Backend Architecture: [backend_architecture_score]/100
├── 🗄️ Database Architecture: [database_architecture_score]/100
└── 🔗 Integration Architecture: [integration_architecture_score]/100

🏛️ SYSTEM ARCHITECTURE:

├── 📱 FRONTEND ARCHITECTURE:
│   ├── Framework: React with TypeScript
│   ├── Build System: Vite
│   ├── State Management: TanStack Query (React Query)
│   ├── Styling: Tailwind CSS + shadcn/ui
│   ├── Component Library: Radix UI primitives
│   ├── Architecture Pattern: [current_frontend_pattern]
│   ├── Code Organization: [organization_assessment]
│   │   ├── Feature-Based Organization: [feature_based_score]/100
│   │   ├── Component Structure: [component_structure_score]/100
│   │   ├── Hook Usage: [hook_usage_score]/100
│   │   └── Service Layer: [service_layer_score]/100
│   └── Key Directories:
│       ├── src/components/ui/: shadcn UI components
│       ├── src/pages/: Route-level components
│       ├── src/hooks/: Custom React hooks
│       └── src/services/: Business logic services
├── 🖥️ BACKEND ARCHITECTURE:
│   ├── Database: Supabase (PostgreSQL)
│   ├── Authentication: Supabase Auth
│   ├── API: Supabase REST API + Edge Functions
│   ├── Real-time: Supabase Realtime
│   ├── Storage: Supabase Storage
│   ├── Architecture Pattern: [current_backend_pattern]
│   ├── Edge Functions: [edge_function_count] functions
│   │   ├── Webhook Handlers: [webhook_function_count]
│   │   ├── Payment Processing: [payment_function_count]
│   │   ├── Content Generation: [content_function_count]
│   │   └── External Integrations: [integration_function_count]
│   └── Infrastructure:
│       ├── Hosting: Supabase Cloud
│       ├── CDN: Supabase CDN
│       ├── SSL: Automatic SSL
│       └── Monitoring: Supabase Dashboard
├── 🗄️ DATABASE ARCHITECTURE:
│   ├── Primary Database: PostgreSQL (via Supabase)
│   ├── Database Name: "scribe"
│   ├── Connection: Supabase Client
│   ├── Schema Health: [schema_health_score]/100
│   ├── Performance: [db_performance_score]/100
│   └── Security: Row Level Security (RLS)
└── 🔗 INTEGRATION ARCHITECTURE:
    ├── External Services: [external_service_count]
    ├── API Integrations: [api_integration_count]
    ├── Authentication: Supabase Auth
    ├── Payment Processing: Stripe
    └── Content Management: [cms_integration_count]

🗄️ DATABASE SCHEMA ANALYSIS:

├── 📊 CORE ENTITIES:
│   ├── **Articles**: Content with metadata
│   │   ├── Schema Status: [articles_schema_status]
│   │   ├── Relationship Count: [articles_relationship_count]
│   │   ├── Index Optimization: [articles_index_score]/100
│   │   └── RLS Policy: [articles_rls_score]/100
│   ├── **Campaigns**: Organizational units for articles
│   │   ├── Schema Status: [campaigns_schema_status]
│   │   ├── Relationship Count: [campaigns_relationship_count]
│   │   ├── Index Optimization: [campaigns_index_score]/100
│   │   └── RLS Policy: [campaigns_rls_score]/100
│   ├── **Templates**: Four types (SEO, Tone, Image Style, Author)
│   │   ├── Schema Status: [templates_schema_status]
│   │   ├── Template Types: [template_type_count]
│   │   ├── Index Optimization: [templates_index_score]/100
│   │   └── RLS Policy: [templates_rls_score]/100
│   ├── **Credentials**: Encrypted API credentials
│   │   ├── Schema Status: [credentials_schema_status]
│   │   ├── Encryption Status: [credentials_encryption_score]/100
│   │   ├── Index Optimization: [credentials_index_score]/100
│   │   └── RLS Policy: [credentials_rls_score]/100
│   └── **Webhooks**: Configurable endpoints
│       ├── Schema Status: [webhooks_schema_status]
│       ├── Configuration Count: [webhook_config_count]
│       ├── Index Optimization: [webhooks_index_score]/100
│       └── RLS Policy: [webhooks_rls_score]/100
├── 🔐 SECURITY ARCHITECTURE:
│   ├── Row Level Security (RLS): [rls_coverage]%
│   ├── Authentication: Supabase Auth
│   ├── Authorization: RLS Policies
│   ├── Data Encryption: [encryption_coverage]%
│   └── API Security: [api_security_score]/100
├── 🔄 RELATIONSHIP MAPPING:
│   ├── Article → Campaign: [article_campaign_relationship]
│   ├── Article → Template: [article_template_relationship]
│   ├── Campaign → Template: [campaign_template_relationship]
│   ├── User → Article: [user_article_relationship]
│   └── User → Campaign: [user_campaign_relationship]
└── 📈 PERFORMANCE METRICS:
    ├── Query Performance: [query_performance_score]/100
    ├── Index Usage: [index_usage_score]/100
    ├── Connection Pool: [connection_pool_score]/100
    └── Cache Hit Rate: [cache_hit_rate]%

💳 CREDIT SYSTEM ARCHITECTURE:

├── 💰 CREDIT FLOW:
│   ├── Credit Sources:
│   │   ├── Monthly Subscriptions: [monthly_credits]/month
│   │   ├── Bolt-on Packages: [bolton_credits] available
│   │   ├── Manual Adjustments: [manual_credits] total
│   │   └── Credit Pool Status: [credit_pool_status]
│   ├── Credit Consumption:
│   │   ├── Article Generation: [article_generation_cost] credits
│   │   ├── Image Generation: [image_generation_cost] credits
│   │   ├── Template Usage: [template_usage_cost] credits
│   │   └── API Calls: [api_call_cost] credits
│   └── Credit Management:
│       ├── Balance Tracking: [balance_tracking_status]
│       ├── Usage Analytics: [usage_analytics_status]
│       ├── Threshold Alerts: [threshold_alerts_status]
│       └── Auto-renewal: [auto_renewal_status]
├── 🔄 BILLING INTEGRATION:
│   ├── Stripe Integration: [stripe_integration_status]
│   ├── Subscription Management: [subscription_management_status]
│   ├── Payment Processing: [payment_processing_status]
│   └── Invoice Generation: [invoice_generation_status]
└── 📊 ANALYTICS:
    ├── Credit Usage Tracking: [credit_usage_tracking]
    ├── Cost Per Feature: [cost_per_feature_analysis]
    ├── Revenue Analytics: [revenue_analytics_status]
    └── Forecasting: [forecasting_status]

🔗 EXTERNAL INTEGRATIONS:

├── 🌐 PUBLISHING INTEGRATIONS:
│   ├── **Webflow CMS API v2**: Article publishing
│   │   ├── Integration Status: [webflow_integration_status]
│   │   ├── Field Mapping: [webflow_field_mapping_score]/100
│   │   ├── API Version: [webflow_api_version]
│   │   ├── Rate Limiting: [webflow_rate_limiting_status]
│   │   └── Error Handling: [webflow_error_handling_score]/100
│   ├── **WordPress REST API**: Alternative publishing
│   │   ├── Integration Status: [wordpress_integration_status]
│   │   ├── Authentication: [wordpress_auth_status]
│   │   ├── API Version: [wordpress_api_version]
│   │   ├── Rate Limiting: [wordpress_rate_limiting_status]
│   │   └── Error Handling: [wordpress_error_handling_score]/100
│   └── Publishing Architecture:
│       ├── Queue System: [publishing_queue_status]
│       ├── Retry Logic: [retry_logic_score]/100
│       ├── Failure Recovery: [failure_recovery_score]/100
│       └── Status Tracking: [status_tracking_score]/100
├── 🤖 AI GENERATION:
│   ├── **Content Generation**: Configurable webhooks
│   │   ├── Webhook Count: [content_webhook_count]
│   │   ├── Retry Logic: [content_retry_score]/100
│   │   ├── Response Time: [content_response_time]ms
│   │   └── Success Rate: [content_success_rate]%
│   ├── **Image Generation**: Multiple generators
│   │   ├── DALL-E 3 Integration: [dalle_integration_status]
│   │   ├── Zine Integration: [zine_integration_status]
│   │   ├── Generator Count: [image_generator_count]
│   │   └── Fallback System: [image_fallback_status]
│   └── AI Architecture:
│       ├── Model Management: [model_management_score]/100
│       ├── Prompt Engineering: [prompt_engineering_score]/100
│       ├── Response Processing: [response_processing_score]/100
│       └── Quality Control: [quality_control_score]/100
├── 💰 PAYMENT PROCESSING:
│   ├── **Stripe Integration**: Subscriptions and payments
│   │   ├── Integration Status: [stripe_integration_status]
│   │   ├── Webhook Processing: [stripe_webhook_score]/100
│   │   ├── Subscription Management: [stripe_subscription_score]/100
│   │   └── Payment Security: [stripe_security_score]/100
│   └── Payment Architecture:
│       ├── Checkout Flow: [checkout_flow_score]/100
│       ├── Subscription Handling: [subscription_handling_score]/100
│       ├── Billing Management: [billing_management_score]/100
│       └── Tax Calculation: [tax_calculation_score]/100
└── 🔄 INTEGRATION HEALTH:
    ├── Overall Integration Score: [overall_integration_score]/100
    ├── API Reliability: [api_reliability_score]/100
    ├── Error Rate: [integration_error_rate]%
    └── Response Time: [integration_response_time]ms

🎯 ARCHITECTURE PATTERNS:

├── 🏗️ DESIGN PATTERNS:
│   ├── **Feature-Based Organization**: Components by feature
│   │   ├── Implementation Score: [feature_based_implementation]/100
│   │   ├── Directory Structure: [directory_structure_score]/100
│   │   ├── Module Cohesion: [module_cohesion_score]/100
│   │   └── Coupling Level: [coupling_level_score]/100
│   ├── **Custom Hooks Pattern**: Business logic abstraction
│   │   ├── Hook Count: [custom_hook_count]
│   │   ├── Reusability Score: [hook_reusability_score]/100
│   │   ├── Testing Coverage: [hook_testing_coverage]%
│   │   └── Documentation: [hook_documentation_score]/100
│   ├── **Service Layer**: Complex operations handling
│   │   ├── Service Count: [service_count]
│   │   ├── Separation of Concerns: [service_separation_score]/100
│   │   ├── Error Handling: [service_error_handling_score]/100
│   │   └── Performance: [service_performance_score]/100
│   └── **React Query**: Server state management
│       ├── Query Count: [react_query_count]
│       ├── Cache Efficiency: [cache_efficiency_score]/100
│       ├── Mutation Handling: [mutation_handling_score]/100
│       └── Optimistic Updates: [optimistic_updates_score]/100
├── 🔒 SECURITY PATTERNS:
│   ├── **Row Level Security**: Database-level security
│   │   ├── Policy Count: [rls_policy_count]
│   │   ├── Coverage: [rls_coverage]%
│   │   ├── Effectiveness: [rls_effectiveness_score]/100
│   │   └── Performance Impact: [rls_performance_impact]/10
│   ├── **Authentication Guards**: Route protection
│   │   ├── Guard Count: [auth_guard_count]
│   │   ├── Coverage: [auth_coverage]%
│   │   ├── Effectiveness: [auth_effectiveness_score]/100
│   │   └── User Experience: [auth_ux_score]/100
│   └── **Data Isolation**: User data separation
│       ├── Isolation Score: [data_isolation_score]/100
│       ├── Breach Prevention: [breach_prevention_score]/100
│       ├── Access Control: [access_control_score]/100
│       └── Audit Trail: [audit_trail_score]/100
└── 📊 PERFORMANCE PATTERNS:
    ├── **Caching Strategy**: Multi-layer caching
    │   ├── Cache Layers: [cache_layer_count]
    │   ├── Hit Rate: [cache_hit_rate]%
    │   ├── Cache Invalidation: [cache_invalidation_score]/100
    │   └── Performance Gain: [cache_performance_gain]%
    ├── **Lazy Loading**: Resource optimization
    │   ├── Implementation Coverage: [lazy_loading_coverage]%
    │   ├── Loading Performance: [lazy_loading_performance]/100
    │   ├── User Experience: [lazy_loading_ux_score]/100
    │   └── Bundle Size Impact: [bundle_size_impact]/10
    └── **Database Optimization**: Query performance
        ├── Query Optimization: [query_optimization_score]/100
        ├── Index Usage: [index_usage_score]/100
        ├── Connection Pooling: [connection_pooling_score]/100
        └── Cache Utilization: [db_cache_utilization]%

🔄 FORM ARCHITECTURE:

├── 📝 FORM HANDLING SYSTEM:
│   ├── **Multi-Step Forms**: Complex workflow management
│   │   ├── Article Creation: 5 steps
│   │   │   ├── Step 1: Title and basic info
│   │   │   ├── Step 2: Input sources (RSS, URL, topics)
│   │   │   ├── Step 3: Template selection
│   │   │   ├── Step 4: Campaign assignment
│   │   │   └── Step 5: Related content
│   │   ├── Campaign Creation: 4 steps
│   │   │   ├── Step 1: Basic information
│   │   │   ├── Step 2: Template configuration
│   │   │   ├── Step 3: Engine selection
│   │   │   └── Step 4: Strategy definition
│   │   └── Form Performance: [form_performance_score]/100
│   ├── **Validation System**: React Hook Form + Zod
│   │   ├── Validation Coverage: [validation_coverage]%
│   │   ├── Error Handling: [form_error_handling_score]/100
│   │   ├── User Experience: [form_ux_score]/100
│   │   └── Performance: [form_validation_performance]/100
│   └── **State Management**: Form state persistence
│       ├── State Persistence: [form_state_persistence_score]/100
│       ├── Multi-step Navigation: [multistep_navigation_score]/100
│       ├── Data Recovery: [form_data_recovery_score]/100
│       └── Progress Tracking: [form_progress_tracking_score]/100
├── 🎨 FORM UI PATTERNS:
│   ├── Field Components: [field_component_count]
│   ├── Validation Display: [validation_display_score]/100
│   ├── Progress Indicators: [progress_indicator_score]/100
│   └── Mobile Optimization: [form_mobile_optimization_score]/100
└── 📊 FORM ANALYTICS:
    ├── Completion Rate: [form_completion_rate]%
    ├── Drop-off Analysis: [form_dropoff_analysis_score]/100
    ├── Field-level Analytics: [field_analytics_score]/100
    └── User Behavior: [form_user_behavior_score]/100

🔧 ARCHITECTURE HEALTH ASSESSMENT:

├── 🎯 SCALABILITY ANALYSIS:
│   ├── Horizontal Scaling: [horizontal_scaling_score]/100
│   ├── Vertical Scaling: [vertical_scaling_score]/100
│   ├── Database Scaling: [database_scaling_score]/100
│   └── Performance Bottlenecks: [performance_bottleneck_count]
├── 🔄 MAINTAINABILITY SCORE:
│   ├── Code Organization: [code_organization_score]/100
│   ├── Documentation: [documentation_score]/100
│   ├── Testing Coverage: [testing_coverage]%
│   └── Technical Debt: [technical_debt_score]/10
├── 🔒 SECURITY ASSESSMENT:
│   ├── Authentication Security: [auth_security_score]/100
│   ├── Data Protection: [data_protection_score]/100
│   ├── API Security: [api_security_score]/100
│   └── Vulnerability Assessment: [vulnerability_score]/100
└── 📈 PERFORMANCE METRICS:
    ├── Application Performance: [app_performance_score]/100
    ├── Database Performance: [db_performance_score]/100
    ├── Integration Performance: [integration_performance_score]/100
    └── User Experience: [ux_performance_score]/100

🚨 ARCHITECTURE RISKS:

├── 🔴 CRITICAL RISKS:
│   ├── [critical_risk_1]: [risk_description_1]
│   │   ├── Impact: [risk_impact_1]
│   │   ├── Likelihood: [risk_likelihood_1]
│   │   ├── Mitigation: [risk_mitigation_1]
│   │   └── Timeline: [risk_timeline_1]
│   └── [critical_risk_2]: [risk_description_2]
│       ├── Impact: [risk_impact_2]
│       ├── Likelihood: [risk_likelihood_2]
│       ├── Mitigation: [risk_mitigation_2]
│       └── Timeline: [risk_timeline_2]
├── 🟡 MEDIUM RISKS:
│   ├── [medium_risk_1]: [medium_description_1]
│   ├── [medium_risk_2]: [medium_description_2]
│   └── [medium_risk_3]: [medium_description_3]
└── 🟢 LOW RISKS:
    ├── [low_risk_1]: [low_description_1]
    ├── [low_risk_2]: [low_description_2]
    └── [low_risk_3]: [low_description_3]

🎯 ARCHITECTURE RECOMMENDATIONS:

├── 🚀 IMMEDIATE IMPROVEMENTS:
│   ├── [immediate_improvement_1]: [improvement_description_1]
│   ├── [immediate_improvement_2]: [improvement_description_2]
│   └── [immediate_improvement_3]: [improvement_description_3]
├── 📊 STRATEGIC ENHANCEMENTS:
│   ├── [strategic_enhancement_1]: [enhancement_description_1]
│   ├── [strategic_enhancement_2]: [enhancement_description_2]
│   └── [strategic_enhancement_3]: [enhancement_description_3]
├── 🔄 REFACTORING OPPORTUNITIES:
│   ├── [refactoring_opportunity_1]: [refactoring_description_1]
│   ├── [refactoring_opportunity_2]: [refactoring_description_2]
│   └── [refactoring_opportunity_3]: [refactoring_description_3]
└── 🎯 OPTIMIZATION PRIORITIES:
    ├── Performance: [performance_optimization_priority]
    ├── Security: [security_optimization_priority]
    ├── Scalability: [scalability_optimization_priority]
    └── Maintainability: [maintainability_optimization_priority]

💡 NEXT STEPS:

├── 🔧 Immediate Actions:
│   ├── [immediate_action_1]: [action_description_1]
│   └── [immediate_action_2]: [action_description_2]
├── 📊 Architecture Review:
│   ├── [review_action_1]: [review_description_1]
│   └── [review_action_2]: [review_description_2]
└── 🎯 Strategic Planning:
    ├── [strategic_action_1]: [strategic_description_1]
    └── [strategic_action_2]: [strategic_description_2]
```

## Context Store Output

**Save architecture analysis to:**
`.claude/analysis/architecture-[session-id]/architecture-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "architecture-agent",
  "target": "$ARGUMENTS",
  "analysis": {
    "system_architecture": {
      "frontend_architecture": {},
      "backend_architecture": {},
      "database_architecture": {},
      "integration_architecture": {}
    },
    "database_schema": {
      "core_entities": {},
      "security_architecture": {},
      "relationship_mapping": {},
      "performance_metrics": {}
    },
    "credit_system": {
      "credit_flow": {},
      "billing_integration": {},
      "analytics": {}
    },
    "external_integrations": {
      "publishing_integrations": {},
      "ai_generation": {},
      "payment_processing": {},
      "integration_health": {}
    },
    "architecture_patterns": {
      "design_patterns": {},
      "security_patterns": {},
      "performance_patterns": {}
    },
    "form_architecture": {
      "form_handling_system": {},
      "form_ui_patterns": {},
      "form_analytics": {}
    },
    "health_assessment": {
      "scalability_analysis": {},
      "maintainability_score": {},
      "security_assessment": {},
      "performance_metrics": {}
    },
    "architecture_risks": {
      "critical_risks": [],
      "medium_risks": [],
      "low_risks": []
    },
    "recommendations": {
      "immediate_improvements": [],
      "strategic_enhancements": [],
      "refactoring_opportunities": [],
      "optimization_priorities": {}
    }
  }
}
```

## MCP Integration Examples

### Live Architecture Analysis
```javascript
// Analyze current system architecture
const architectureAnalysis = await analyzeSystemArchitecture();

// Get real-time database schema
const dbSchema = await mcp__supabase_mcp_server__list_tables();
const schemaAnalysis = await analyzeSchemaHealth(dbSchema);
```

### Database Schema Assessment
```javascript
// Analyze database performance
const performanceMetrics = await mcp__supabase_mcp_server__execute_sql(`
  SELECT schemaname, tablename, attname, n_distinct, correlation
  FROM pg_stats 
  WHERE schemaname = 'public'
`);

// Check RLS policies
const rlsPolicies = await mcp__supabase_mcp_server__execute_sql(`
  SELECT schemaname, tablename, policyname, permissive, roles, cmd, qual
  FROM pg_policies
`);
```

### Integration Health Check
```javascript
// Check external integrations
const integrationHealth = await checkIntegrationHealth();

// Verify API endpoints
const apiHealth = await verifyApiEndpoints();
```

## Success Criteria

Architecture agent should provide:
- **Comprehensive system architecture analysis** with real-time insights
- **Live database schema documentation** with performance metrics
- **Integration pattern analysis** with health assessments
- **Architecture risk identification** with mitigation strategies
- **Actionable improvement recommendations** with implementation guidance

**Time Target:** 3-4 minutes for comprehensive architecture analysis
**Context Window:** Optimized for system architecture focus
**Handoff:** Complete architectural documentation with optimization roadmap