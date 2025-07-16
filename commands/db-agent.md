# Database Agent - Schema Analysis & Extension Planning

Specialized agent for analyzing current Supabase database schema and planning extensions for: **$ARGUMENTS**

## Agent Purpose
This agent focuses exclusively on database analysis to understand current schema, relationships, and extension points without getting involved in code or external research.

## Analysis Scope
- Current database schema and table structures
- Existing relationships and foreign keys
- Data types, constraints, and indexes
- Row Level Security (RLS) policies
- Database functions and stored procedures
- Performance characteristics and optimization opportunities

## MCP Tools Used
- **Supabase MCP**: Direct database schema analysis
- **Database MCP**: Performance and constraint analysis
- **Schema MCP**: Structure and relationship mapping

## Analysis Process

### Phase 1: Schema Discovery
**Supabase MCP Queries:**
- List all tables and describe their structure
- Analyze existing relationships and foreign keys
- Check current data types and constraints
- Review existing indexes and performance characteristics

### Phase 2: Security Analysis
**RLS and Permissions:**
- Show current RLS policies and permissions
- Analyze user access patterns
- Identify security boundaries and data isolation
- Check authentication integration points

### Phase 3: Extension Planning
**Database Extension Points:**
- Identify tables that can be extended
- Plan new table requirements
- Analyze constraint conflicts
- Plan migration strategies

## Output Format

```
🗃️ DATABASE ANALYSIS for: $ARGUMENTS
Generated: [timestamp]
Agent: db-agent

📊 CURRENT SCHEMA OVERVIEW:
├── 📋 Total tables: [count]
├── 🔗 Total relationships: [count]
├── 🔒 RLS policies: [count]
├── 🚀 Indexes: [count]
└── 📈 Functions: [count]

🏗️ EXISTING TABLES ANALYSIS:
├── ✅ READY TO EXTEND:
│   ├── [table_name] ([columns]) - [extension potential]
│   ├── [table_name] ([columns]) - [extension potential]
│   └── [table_name] ([columns]) - [extension potential]
├── ⚠️ NEED MODIFICATION:
│   ├── [table_name] - [what needs to change]
│   ├── [table_name] - [what needs to change]
│   └── [table_name] - [what needs to change]
└── 🚨 CONSTRAINTS TO CONSIDER:
    ├── [constraint_type]: [description]
    ├── [constraint_type]: [description]
    └── [constraint_type]: [description]

🔗 RELATIONSHIP MAPPING:
├── 🔑 PRIMARY KEYS:
│   ├── [table].[column] - [description]
│   └── [table].[column] - [description]
├── 🔗 FOREIGN KEYS:
│   ├── [table].[column] → [ref_table].[ref_column]
│   └── [table].[column] → [ref_table].[ref_column]
└── 📊 JUNCTION TABLES:
    ├── [table] - connects [table1] ↔ [table2]
    └── [table] - connects [table1] ↔ [table2]

🔒 SECURITY CONFIGURATION:
├── 🛡️ RLS POLICIES:
│   ├── [table]: [policy_name] - [description]
│   ├── [table]: [policy_name] - [description]
│   └── [table]: [policy_name] - [description]
├── 🔐 USER ACCESS PATTERNS:
│   ├── Authentication: [auth_method]
│   ├── Authorization: [auth_model]
│   └── Data isolation: [isolation_method]
└── 🔑 PERMISSIONS STRUCTURE:
    ├── Public access: [what's public]
    ├── Authenticated access: [what requires auth]
    └── Role-based access: [role restrictions]

⚡ PERFORMANCE ANALYSIS:
├── 📈 EXISTING INDEXES:
│   ├── [table].[column] - [index_type] - [usage]
│   ├── [table].[column] - [index_type] - [usage]
│   └── [table].[column] - [index_type] - [usage]
├── 🚀 QUERY PATTERNS:
│   ├── Common queries: [query_patterns]
│   ├── Performance hotspots: [slow_areas]
│   └── Optimization opportunities: [improvements]
└── 📊 STORAGE CONSIDERATIONS:
    ├── Large tables: [table_sizes]
    ├── Growth patterns: [growth_analysis]
    └── Archiving needs: [archiving_strategy]

🆕 FEATURE EXTENSION PLAN:
├── 🏗️ NEW TABLES NEEDED:
│   ├── [table_name]:
│   │   ├── Purpose: [what it's for]
│   │   ├── Columns: [column_definitions]
│   │   ├── Relationships: [foreign_keys]
│   │   └── Indexes: [index_requirements]
│   └── [table_name]:
│       ├── Purpose: [what it's for]
│       ├── Columns: [column_definitions]
│       ├── Relationships: [foreign_keys]
│       └── Indexes: [index_requirements]
├── 🔧 TABLE MODIFICATIONS:
│   ├── [table_name]: ADD [column_definitions]
│   ├── [table_name]: MODIFY [column_changes]
│   └── [table_name]: INDEX [index_additions]
└── 🔒 SECURITY EXTENSIONS:
    ├── New RLS policies: [policy_definitions]
    ├── Permission updates: [permission_changes]
    └── Data isolation: [isolation_requirements]

📋 MIGRATION STRATEGY:
├── 🔄 MIGRATION ORDER:
│   ├── Step 1: [migration_step]
│   ├── Step 2: [migration_step]
│   └── Step 3: [migration_step]
├── 🛡️ ROLLBACK PLAN:
│   ├── Backup strategy: [backup_approach]
│   ├── Rollback steps: [rollback_procedure]
│   └── Recovery time: [recovery_estimate]
└── 🧪 TESTING STRATEGY:
    ├── Migration testing: [test_approach]
    ├── Performance validation: [performance_tests]
    └── Security validation: [security_tests]

⚠️ RISKS & CONSIDERATIONS:
├── 🚨 BREAKING CHANGES:
│   ├── [potential_issue] - [impact] - [mitigation]
│   └── [potential_issue] - [impact] - [mitigation]
├── 📊 PERFORMANCE IMPACT:
│   ├── Query performance: [impact_analysis]
│   ├── Storage impact: [storage_analysis]
│   └── Index overhead: [index_analysis]
└── 🔒 SECURITY IMPLICATIONS:
    ├── Data exposure risks: [exposure_analysis]
    ├── Permission changes: [permission_impact]
    └── Compliance considerations: [compliance_impact]

💡 RECOMMENDATIONS:
├── 🏆 PREFERRED APPROACH:
│   ├── Schema design: [design_recommendation]
│   ├── Migration strategy: [migration_recommendation]
│   └── Performance optimization: [optimization_recommendation]
├── 🔄 ALTERNATIVE APPROACHES:
│   ├── Option 1: [alternative_1]
│   ├── Option 2: [alternative_2]
│   └── Trade-offs: [comparison]
└── 📋 IMPLEMENTATION PRIORITIES:
    ├── Must-have: [critical_items]
    ├── Should-have: [important_items]
    └── Could-have: [optional_items]
```

## Context Store Output

**Save database analysis to:**
`.claude/analysis/[feature-name]/database-analysis.json`

**Structure:**
```json
{
  "timestamp": "2025-01-14T12:00:00Z",
  "agent": "db-agent",
  "feature": "$ARGUMENTS",
  "analysis": {
    "current_schema": {
      "tables": [{"name": "", "columns": [], "relationships": []}],
      "indexes": [{"table": "", "column": "", "type": ""}],
      "rls_policies": [{"table": "", "policy": "", "description": ""}],
      "functions": [{"name": "", "purpose": ""}]
    },
    "extension_plan": {
      "new_tables": [{"name": "", "purpose": "", "columns": [], "relationships": []}],
      "modifications": [{"table": "", "changes": []}],
      "security": [{"type": "", "definition": ""}]
    },
    "migration": {
      "order": [],
      "rollback": [],
      "testing": []
    },
    "risks": {
      "breaking_changes": [],
      "performance_impact": [],
      "security_implications": []
    },
    "recommendations": {
      "preferred": "",
      "alternatives": [],
      "priorities": []
    }
  }
}
```

## Success Criteria

Database agent should provide:
- **Complete schema understanding** of current database state
- **Safe extension planning** with minimal breaking changes
- **Performance-conscious design** with proper indexing
- **Security-first approach** with appropriate RLS policies
- **Clear migration strategy** with rollback procedures

**Time Target:** 1-2 minutes for schema analysis
**Context Window:** Optimized for database-only focus
**Handoff:** Clean JSON output for architecture and risk agents