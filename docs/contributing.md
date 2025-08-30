# Contributing New Commands

This guide explains how to create and add new Claude Code commands to this repository.

## Creating a New Command

### 1. Command File Structure

Create your command file in `.claude/commands/` with the `.md` extension:

```
.claude/commands/your-command-name.md
```

### 2. Command Template

```markdown
---
description: Brief description of what your command does
---

# Your Command Name

Command implementation goes here...

Arguments: $ARGUMENTS

---
*Brief command footer/description*
```

### 3. Command Naming

- Use kebab-case for command files: `my-new-tool.md`
- Command will be available as: `/my-new-tool`
- Keep names descriptive but concise

## Documentation Structure

### 1. Main README.md
- Keep brief command summaries in the main README
- Focus on core functionality and quick usage examples
- Link to detailed documentation in `/docs` when needed

### 2. Detailed Documentation in `/docs`
- Create comprehensive guides for complex commands
- Include advanced usage examples
- Add troubleshooting sections
- Provide integration examples with other tools

## Adding Your Command

### 1. Create the Command
1. Write your command in `.claude/commands/your-command.md`
2. Test the command functionality thoroughly
3. Ensure it follows Claude Code command conventions

### 2. Update Documentation
1. Add brief description to main README.md
2. Create detailed documentation in `/docs` if needed
3. Update repository structure diagram if necessary

### 3. Make Available Globally
1. Test with the add-global-command script:
   ```bash
   ./add-global-command.sh your-command
   ```
2. Verify the command works globally across projects

## Command Development Best Practices

### Functionality
- Commands should be autonomous and self-contained
- Include clear success/failure indicators
- Validate inputs and provide helpful error messages
- Document expected arguments and behavior

### Documentation
- Write clear, actionable instructions
- Include practical examples
- Test all documented procedures
- Keep documentation current with command functionality

### Testing
- Test commands in various project types
- Verify global installation works correctly
- Ensure commands don't conflict with existing tools
- Test edge cases and error conditions

## Examples

See existing commands for reference:
- `auto-doc.md` - Comprehensive automation command
- `codebase-explorer.md` - Interactive analysis tool
- `article.md` - Content analysis command

Each demonstrates different approaches to command design and documentation.