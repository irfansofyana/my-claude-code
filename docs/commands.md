# Available Custom Commands

| Command | Purpose | When to Use | Usage Examples |
|---------|---------|-------------|----------------|
| **`/auto-doc`** | Automatically updates all project documentation | After feature changes, before releases, regular maintenance | `/auto-doc` |
| **`/codebase-explorer`** | Expert analysis tool for understanding unfamiliar codebases | New project onboarding, code reviews, planning changes | `/codebase-explorer`<br>`/codebase-explorer --focus=architecture` |
| **`/article`** | Comprehensive technical content analysis | Research, learning new tech, architecture decisions | `/article <URL>`<br>`/article <URL> performance` |

## Focus Options

### Codebase Explorer
| Focus | Description |
|-------|-------------|
| `architecture` | Project structure and design patterns |
| `stack` | Technology stack analysis |
| `setup` | Local development setup guide |
| `navigation` | Code organization and entry points |
| `contributing` | Development workflow and practices |
| `change` | Implementation guidance for specific changes |

### Article Analyzer
| Focus | Description |
|-------|-------------|
| `architecture` | Architectural insights and patterns |
| `performance` | Performance considerations |
| `security` | Security implications |
| `patterns` | Design patterns and best practices |

## Global Setup

Use `./add-global-command.sh <command>` to make commands globally available.

Example:

```bash
./add-global-command.sh auto-doc
```
