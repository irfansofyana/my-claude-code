# CLAUDE.md

Personal Claude Code CLI configuration repository with custom automation commands.

## Repository Type

Configuration repository (NOT a software project) - no builds, tests, or deployments required.

## Structure

```text
my-claude-code/
├── .claude/                    # Claude Code configuration directory
│   └── commands/              # Custom slash commands available
├── docs/                      # Additional detailed documentation
├── add-global-command.sh      # Utility to make commands globally available
├── CLAUDE.md                  # Project context and guidance for Claude Code
└── README.md                  # This file
```

## Commands

This repository includes a collection of custom Claude Code commands for automation and workflow optimization. See [`docs/commands.md`](docs/commands.md) for detailed information about available commands, usage examples, and when to use each tool.

### `add-global-command.sh`

```bash
./add-global-command.sh <command-name>  # Copy to ~/.claude/commands/
./add-global-command.sh                 # List available commands
```

## Working Context for AI

**This Repository**:

- Focus on documentation clarity and accuracy
- Maintain existing markdown structure
- Commands are self-contained and documented
- Use practical examples over theoretical explanations

**Command Development**:

- Commands execute autonomously in Claude Code
- Include validation steps and success criteria
- Document expected inputs and outputs
- Test thoroughly before committing

**Maintenance**:

- Keep documentation current with actual functionality
- Use clear commit messages for configuration changes
- Validate command effectiveness across project types
