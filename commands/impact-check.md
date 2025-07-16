# Impact Check Analysis

Quickly analyze the potential impact of a specific change: **$ARGUMENTS**

## Quick Assessment Process

1. **Immediate Dependencies**: What directly uses this code?
2. **Ripple Effects**: What could be indirectly affected?
3. **Breaking Change Risk**: Rate the risk level (Low/Medium/High)
4. **Mitigation Strategies**: How to minimize risk

## Analysis Steps

### Phase 1: Direct Impact Analysis
- **File Dependencies**: Search for imports and references
- **Database Dependencies**: Check table relationships and constraints
- **API Dependencies**: Identify endpoint usage and consumers
- **Component Dependencies**: Map parent-child relationships

### Phase 2: Ripple Effect Analysis
- **Transitive Dependencies**: What depends on the dependencies?
- **State Impact**: How does this affect application state?
- **Performance Impact**: Resource usage and timing implications
- **Security Impact**: Authentication, authorization, and data access changes

### Phase 3: Risk Assessment
- **Breaking Change Probability**: Likelihood of breaking existing functionality
- **User Impact**: How many users and workflows are affected?
- **Rollback Complexity**: How difficult is it to undo this change?
- **Testing Requirements**: What needs to be tested to validate safety?

## Output Format

```
🎯 IMPACT ANALYSIS: $ARGUMENTS

📊 BLAST RADIUS:
├── 🔴 Direct Impact: [X files, Y components, Z APIs]
├── 🟡 Indirect Impact: [X services, Y workflows, Z integrations]
└── 👥 User-Facing Impact: [X screens, Y user flows, Z permissions]

⚠️ RISK LEVEL: [Low/Medium/High]
├── Breaking Change Probability: [X%]
├── Rollback Complexity: [Simple/Moderate/Complex]
└── Testing Scope: [Unit/Integration/Full System]

🛡️ MITIGATION STRATEGIES:
├── 🔒 Safety Measures: [Feature flags, gradual rollout, backup plans]
├── 📋 Testing Plan: [Specific tests to run before deployment]
├── 🔄 Rollback Plan: [Steps to revert if issues arise]
└── 📊 Monitoring: [Metrics to watch post-deployment]

🧪 VALIDATION CHECKLIST:
├── ✅ Unit tests for changed components
├── ✅ Integration tests for affected workflows
├── ✅ Performance benchmarks
├── ✅ Security validation
└── ✅ User acceptance testing

📈 DEPLOYMENT STRATEGY:
├── 🚀 Deployment Order: [Recommended sequence]
├── 🎯 Success Metrics: [How to measure success]
├── 🚨 Failure Indicators: [Red flags to watch for]
└── 📞 Escalation Plan: [Who to contact if issues arise]
```

## MCP Integration

**Use available MCP tools for enhanced analysis:**

### Database Impact Analysis
- **Supabase MCP**: Check table dependencies and constraints
- **Database MCP**: Analyze query performance impact
- **Schema MCP**: Validate migration safety

### Code Impact Analysis
- **Search Tools**: Find all references to changed code
- **Dependency Analysis**: Map component relationships
- **Build Tools**: Check compilation and bundling impact

### External Dependencies
- **Context.7**: Research impact of similar changes
- **Brave Search**: Find known issues and solutions
- **Documentation**: Check for deprecation warnings

## Risk Levels Defined

### 🟢 Low Risk (0-30%)
- Changes are isolated and well-contained
- Comprehensive test coverage exists
- Easy rollback mechanism available
- No user-facing breaking changes

### 🟡 Medium Risk (30-70%)
- Changes affect multiple components
- Some integration points involved
- Moderate testing requirements
- Potential for minor user impact

### 🔴 High Risk (70-100%)
- Core system changes
- Multiple integration points affected
- Extensive testing required
- Potential for significant user impact

## Success Criteria

The impact analysis should clearly answer:
- What exactly will be affected by this change?
- What's the likelihood of breaking existing functionality?
- What's the minimum testing required for safe deployment?
- What's the fastest way to rollback if problems occur?
- Who needs to be notified before making this change?

Focus on actionable insights that help make informed decisions about whether and how to proceed with the change.