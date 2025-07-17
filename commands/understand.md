# Enhanced Visual Debugging & Progress Analysis

Comprehensive debugging analysis using specialized subagents for: **$ARGUMENTS**

## Debugging Architecture

This command orchestrates **6 specialized debugging agents** to provide comprehensive analysis:

1. **Browser Agent** - Console errors, network issues, client-side debugging
2. **Performance Agent** - Core Web Vitals, bottlenecks, optimization opportunities
3. **Code Trace Agent** - Execution paths, logic errors, dead code analysis
4. **UX Agent** - User journeys, friction points, accessibility issues
5. **Debug Synthesis Agent** - Visual representations, cross-domain correlations
6. **Solution Agent** - Actionable recommendations, implementation guides

## Analysis Process

### Phase 1: Parallel Debugging Analysis (4-6 minutes)
Four specialized agents run simultaneously for focused analysis:

```
🔄 PARALLEL EXECUTION:
├── 🌐 Browser Agent: Console & network analysis
├── ⚡ Performance Agent: Timing & metrics analysis  
├── 🔍 Code Trace Agent: Execution analysis
└── 👤 UX Agent: User journey analysis
```

### Phase 2: Synthesis & Solutions (3-4 minutes)
Sequential processing for unified insights:

```
🔄 SEQUENTIAL SYNTHESIS:
├── 📊 Debug Synthesis Agent: Visual representations
└── 🛠️ Solution Agent: Actionable recommendations
```

## Analysis Storage

**Save debug insights to:**
`.claude/analysis/debug-[session-id]/debug-analysis.json`

**Standard Structure:**
```json
{
  "timestamp": "2025-01-15T12:00:00Z",
  "agent": "understand-orchestrator",
  "target": "$ARGUMENTS",
  "session_id": "debug-[session-id]",
  "analysis_type": "debug",
  "version": "1.0",
  "analysis": {
    "browser_analysis": {},
    "performance_analysis": {},
    "code_trace_analysis": {},
    "ux_analysis": {},
    "debug_synthesis": {},
    "solution_implementation": {}
  }
}
```

**Access Pattern:**
```bash
# View analysis
cat .claude/analysis/debug-[session-id]/debug-analysis.json

# List all debug analyses
ls .claude/analysis/debug-*/

# Search analyses by date
ls .claude/analysis/debug-*/ | grep $(date +%Y%m%d)
```

### Agent Communication System
All agent outputs are stored in `.claude/analysis/debug-[session-id]/` for:
- **Cross-agent communication**
- **Progressive disclosure of results**
- **Persistent analysis history**
- **Programmatic access to insights**

## Execution Flow

```
📋 DEBUGGING WORKFLOW:
├── 🎯 Initialize debug session
├── 🔄 Launch Phase 1 agents (parallel)
│   ├── Browser analysis → browser-analysis.json
│   ├── Performance analysis → performance-analysis.json
│   ├── Code trace analysis → code-trace-analysis.json
│   └── UX analysis → ux-analysis.json
├── 📊 Synthesis phase (sequential)
│   ├── Debug synthesis → debug-synthesis.json
│   └── Solution generation → solution-implementation.json
├── 🎯 Present unified visual report
└── 💡 Provide actionable next steps
```

## Performance Optimization

**Context Window Optimization:**
- 60-80% reduction per agent through focused scope
- Specialized vocabulary and targeted analysis
- Efficient data exchange via context store

**Speed Improvement:**
- 60-80% faster than monolithic analysis
- Parallel processing for independent analyses
- Progressive results as agents complete

## Usage Examples

### General Debugging
```bash
/understand
```
Comprehensive analysis of current system state

### Focused Analysis
```bash
/understand authentication flow
```
Targeted debugging of specific component

### Performance Focus
```bash
/understand performance bottlenecks
```
Performance-centric debugging analysis

## Agent Reusability

These debugging agents can be used independently:
- `/browser-agent` - Console and network analysis
- `/performance-agent` - Performance and metrics
- `/code-trace-agent` - Code execution analysis
- `/ux-agent` - User experience analysis
- `/debug-synthesis-agent` - Visual synthesis
- `/solution-agent` - Implementation guidance

## Success Criteria

Enhanced debugging should provide:
- **Comprehensive system analysis** across all domains
- **Visual representations** of issues and solutions
- **Prioritized recommendations** with implementation guides
- **Cross-domain correlations** identifying systemic issues
- **Actionable next steps** with measurable success criteria

**Total Time:** 7-10 minutes for comprehensive analysis
**Context Efficiency:** 60-80% improvement over monolithic approach
**Actionability:** Complete implementation roadmap with monitoring setup

## Legacy Compatibility

The enhanced command maintains backward compatibility while adding:
- Specialized domain expertise
- Parallel processing capabilities
- Comprehensive solution generation
- Visual debugging representations
- Persistent analysis history

Target Analysis: $ARGUMENTS