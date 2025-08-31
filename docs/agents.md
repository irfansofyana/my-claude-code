# Available Claude Code Agents

This repository includes custom Claude Code sub-agents that provide specialized assistance for different development workflows. Sub-agents are AI assistants with focused expertise areas that operate with their own context window and tool access.

## Available Agents

| Agent | Purpose | When to Use | Usage Examples |
|-------|---------|-------------|----------------|
| **`codebase-explorer`** | Expert code archaeologist for rapid codebase understanding and contribution guidance | New project onboarding, unfamiliar codebases, feature implementation planning, code structure analysis | `@agent-codebase-explorer analyze this authentication system`<br>`@agent-codebase-explorer help me understand the project structure` |
| **`documentation-specialist`** | Automatically crafts and updates project documentation to reflect current codebase state | After major features, API changes, onboarding developers, comprehensive doc reviews | `@agent-documentation-specialist update all documentation`<br>`@agent-documentation-specialist create API documentation` |

## Agent Details

### Codebase Explorer
**Core Analysis Process**: Project overview → Tech stack → Structure → Development workflow → Actionable next steps

**Key Capabilities**:
- Project understanding and architecture identification
- Development workflow discovery (setup, scripts, testing, standards)
- Navigation guidance (entry points, structure, key files, dependencies)
- Feature-specific implementation analysis and planning

**Available Tools**: Glob, Grep, Read, WebFetch, TodoWrite, WebSearch, BashOutput, KillBash, mcp__ide__getDiagnostics, mcp__ide__executeCode, Bash

### Documentation Specialist
**Core Process**: Codebase analysis → Documentation standards detection → Adaptive content creation → Validation

**Key Capabilities**:
- Comprehensive codebase survey and feature discovery
- Adaptive documentation structure (respects existing patterns)
- Multi-format documentation generation (README, API docs, guides)
- Cross-linking optimization and setup instruction validation

**Available Tools**: LS, Read, Grep, Glob, Bash, Write

## Usage

### Automatic Delegation
Claude Code automatically delegates tasks to appropriate agents based on context. For example, asking "How is user authentication implemented?" will likely trigger the codebase-explorer agent.

### Explicit Invocation
Use the `@agent-name` syntax to explicitly invoke an agent:

```
@agent-codebase-explorer analyze the authentication system
@agent-documentation-specialist update documentation after API changes
```

### Agent Chaining
Agents can work together on complex workflows. Use codebase-explorer to understand a system, then documentation-specialist to document findings.

## Making Agents Globally Available

To use these agents across all Claude Code sessions, use the provided utility script:

```bash
# Add specific agents globally
./add-global-agent.sh codebase-explorer
./add-global-agent.sh documentation-specialist

# List available agents
./add-global-agent.sh

# Manual copying (alternative method)
cp .claude/agents/* ~/.claude/agents/
```

Once installed globally, agents are available in any Claude Code session using `@agent-name` syntax.

Alternatively, work within this repository to have automatic access to these specialized agents.