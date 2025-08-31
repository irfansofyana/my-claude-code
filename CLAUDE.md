# CLAUDE.md

Personal Claude Code CLI configuration repository with custom automation commands and specialized sub-agents.

## Repository Type

Configuration repository (NOT a software project) - no builds, tests, or deployments required.

## Structure

```text
my-claude-code/
├── .claude/                    # Claude Code configuration directory
│   ├── agents/                # Custom Claude Code sub-agents
│   └── commands/              # Custom slash commands available
├── docs/                      # Additional detailed documentation
├── add-global-agent.sh        # Utility to make agents globally available
├── add-global-command.sh      # Utility to make commands globally available
├── CLAUDE.md                  # Project context and guidance for Claude Code
└── README.md                  # This file
```

## Sub-Agents

This repository includes specialized Claude Code sub-agents that provide focused expertise:

- **`codebase-explorer`**: Expert code archaeologist for understanding unfamiliar codebases, implementing features, and onboarding to existing projects
- **`documentation-specialist`**: Comprehensive documentation specialist for updating project documentation and maintaining consistency

### Using Sub-Agents

- Access via `@agent-name` syntax in Claude Code sessions
- Sub-agents maintain specialized context and expertise for their domain
- Available automatically when working within this repository
- Use `add-global-agent.sh` to make agents available globally across all projects

## Commands

This repository includes a collection of custom Claude Code commands for automation and workflow optimization. See [`docs/commands.md`](docs/commands.md) for detailed information about available commands, usage examples, and when to use each tool.

### `add-global-agent.sh`

```bash
./add-global-agent.sh <agent-name>    # Copy to ~/.claude/agents/
./add-global-agent.sh                 # List available agents
```

Examples:

```bash
./add-global-agent.sh codebase-explorer
./add-global-agent.sh documentation-specialist
```

### `add-global-command.sh`

```bash
./add-global-command.sh <command-name>  # Copy to ~/.claude/commands/
./add-global-command.sh                 # List available commands
```

## Working Context for AI

**This Repository**:

- Focus on documentation clarity and accuracy
- Maintain existing markdown structure
- Commands and agents are self-contained and documented
- Use practical examples over theoretical explanations

**Command Development**:

- Commands execute autonomously in Claude Code
- Include validation steps and success criteria
- Document expected inputs and outputs
- Test thoroughly before committing

**Agent Development**:

- Agents provide specialized expertise for specific task domains
- Maintain clear role boundaries and capabilities
- Include appropriate tool access for their specialization
- Focus on practical guidance and actionable insights

**Maintenance**:

- Keep documentation current with actual functionality
- Use clear commit messages for configuration changes
- Validate command effectiveness across project types
- Ensure agent capabilities align with their defined roles

## Documentation Structure

**Available Documentation Files**:

- `README.md` - Main repository overview and setup instructions
- `CLAUDE.md` - AI context and project guidance (this file)
- `docs/commands.md` - Detailed command reference and usage
- `docs/agents.md` - Available Claude Code sub-agents and usage guide
- `docs/contributing.md` - Guidelines for creating new commands

**Navigation**:

- Start with README.md for initial setup and overview
- Use CLAUDE.md for AI-specific context and patterns
- Reference docs/ directory for detailed guides

**Updating Documentation**:

- Use `@documentation-specialist` agent for comprehensive updates
- Maintain existing formatting patterns and organization
- Keep content practical and example-focused
- Cross-reference related sections appropriately