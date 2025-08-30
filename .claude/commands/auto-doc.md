# Auto-Documentation Update Command

You are tasked with automatically updating all documentation in this project to reflect the current state of the codebase and its features.

## Analysis Phase
First, perform a comprehensive analysis of the project:

### Documentation Standards Detection
**CRITICAL: Before making ANY changes, analyze existing documentation patterns:**

1. **Existing Documentation Style Analysis**:
   - Read all existing documentation files completely
   - Identify heading styles (##, ###, or custom patterns)
   - Note formatting conventions (bullet points, numbering, code blocks)
   - Detect existing table of contents patterns
   - Identify cross-linking styles and conventions
   - Note any custom badges, shields, or visual elements
   - Observe section organization and ordering patterns

2. **Project Documentation Standards**:
   - Look for `.editorconfig`, style guides, or documentation guidelines
   - Check for existing documentation templates or patterns
   - Identify any automated documentation tools in use
   - Note language/tone consistency across existing docs

3. **Adaptation Strategy**:
   - **If existing documentation found**: ALWAYS match existing formatting exactly
   - **If NO documentation exists**: Propose appropriate standards based on project type
   - **PRESERVE existing section organization** when present
   - **FOLLOW established linking patterns** when they exist
   - **If unsure about formatting, ASK USER for clarification**
   - **Never impose new standards when existing ones are present**

### Codebase Survey
Scan the entire project structure to understand:
- Main application entry points
- Key modules, classes, and functions
- API endpoints and routes
- Configuration files
- Database schemas/models
- External dependencies and integrations

### Feature Discovery
Identify all features by examining:
- Function and method signatures
- Class definitions and their purposes
- API route handlers
- CLI commands and options
- Environment variables and configuration options
- Database tables and relationships
- Tests (they often reveal intended functionality)

### Documentation Inventory
Locate and catalog existing documentation:
- README.md files
- API documentation
- CHANGELOG.md
- CLAUDE.md (Claude Code memory file)
- docs/ directory contents
- Inline code comments and docstrings
- Package.json or similar metadata files
- Docker files and deployment configs
- CI/CD pipeline configurations

## Documentation Strategy

### Adaptive Documentation Structure
**Respect existing patterns first, then optimize if needed:**

**If existing docs follow a specific structure:**
- **MAINTAIN the same organization pattern**
- **PRESERVE existing file naming conventions**
- **FOLLOW established directory structure**
- **KEEP same section ordering and hierarchy**

**If documentation becomes lengthy (>200 lines) AND no existing pattern exists:**
1. **ASK USER for preferred organization before splitting**
2. **Suggest structure based on project type**:
   - `docs/setup.md` - Installation and setup instructions
   - `docs/api.md` - API documentation and endpoints
   - `docs/development.md` - Development workflow and testing
   - `docs/architecture.md` - System design and patterns
   - `docs/deployment.md` - Build and deployment processes
   - `docs/troubleshooting.md` - Common issues and solutions

3. **Maintain existing README.md approach**:
   - Match current level of detail
   - Preserve existing section structure
   - Follow established linking patterns
   - Keep consistent with existing tone and style

**Documentation Splitting Decision Process:**
- Check if project already has docs/ directory or similar
- If splitting is needed but no pattern exists, **ASK USER**:
  - "Should I split the documentation into separate files?"
  - "What directory structure do you prefer for detailed docs?"
  - "Should I maintain all content in README.md instead?"

**For New Projects with NO Existing Documentation:**
1. **Propose Standard Documentation Structure** based on project type:
   - **Web Applications**: README.md + docs/ directory with setup, api, deployment
   - **Libraries/Packages**: README.md focused approach with inline examples
   - **CLI Tools**: README.md with usage, commands, and configuration sections
   - **APIs**: README.md + separate API documentation (OpenAPI/Swagger if applicable)
   - **Data Science**: README.md + notebooks/ with methodology and results

2. **Suggest Standard Formatting Conventions**:
   - **Headings**: Use ## for main sections, ### for subsections
   - **Code blocks**: Use fenced code blocks with language specification
   - **Lists**: Use bullet points (-) for unordered, numbers (1.) for ordered
   - **Links**: Use relative links for internal docs, absolute for external
   - **Badges**: Suggest relevant badges (build status, version, license)

## Documentation Update Process

### 1. README.md Updates

**For Projects WITH Existing README.md:**
**ADAPT to existing README.md style and structure:**

**Before making changes:**
- Read existing README.md completely
- Note current section organization and naming
- Identify existing formatting patterns (headings, lists, code blocks)
- Preserve existing badges, shields, and visual elements
- Maintain existing tone and writing style

**Update content while preserving format:**
- Update project description using same language style
- Refresh "How to Run" section maintaining existing format
- Update installation steps using same structure (numbered vs bullets)
- Keep same level of detail as existing content
- Preserve existing section ordering unless clearly outdated
- Match existing link styles and cross-references
- Update version info using same format as existing badges

**For Projects WITHOUT Existing README.md:**
**Create README.md using appropriate standards for project type:**

1. **Detect Project Type** and propose structure:
   - **Web App**: Title, Description, Features, Installation, Usage, API, Deployment, Contributing
   - **Library/Package**: Title, Installation, Quick Start, API Reference, Examples, Contributing
   - **CLI Tool**: Title, Installation, Usage, Commands, Configuration, Examples
   - **API Project**: Title, Overview, Endpoints, Authentication, Examples, Deployment
   
2. **Standard Template Sections** (adapt based on project):
   - **Title & Description**: Clear project name and purpose
   - **Badges**: Build status, version, license (if applicable)
   - **Installation**: Prerequisites and setup steps
   - **Quick Start**: Minimal example to get running
   - **Usage**: Core functionality examples
   - **Configuration**: Environment variables and settings
   - **Contributing**: How to contribute (if open source)
   - **License**: License information

### 2. Specialized Documentation Files
**Create separate files ONLY if existing pattern supports it:**
- **Check existing docs/ directory structure first**
- **Follow existing file naming conventions**
- **Match existing documentation depth and style**
- **API Documentation**: Follow existing API doc format if present
- **Development Guide**: Match existing development workflow style
- **Setup Guide**: Preserve existing installation instruction format
- **Architecture**: Follow existing system design documentation style

### 3. CLAUDE.md Updates - CRITICAL EFFICIENCY RULES

**For Projects WITH Existing CLAUDE.md:**
**ADAPTIVE APPROACH - Respect existing CLAUDE.md format**

**Before updating CLAUDE.md:**
1. **Read existing CLAUDE.md completely**
2. **Note existing formatting, sections, and organization style**
3. **Identify what's actually missing or outdated**
4. **PRESERVE existing structure and formatting patterns**
5. **Only add genuinely new context that helps Claude Code**

**For Projects WITHOUT Existing CLAUDE.md:**
**Create efficient CLAUDE.md with essential context only:**

1. **Minimal Essential Structure**:
   - **Project Type**: Brief description (library, web app, CLI, etc.)
   - **Tech Stack**: Primary languages, frameworks, tools
   - **Key Structure**: Main directories and their purposes
   - **Development Commands**: Essential run/build/test commands
   - **Special Patterns**: Any unique conventions or patterns
   - **Context for AI**: Specific guidance for working with this codebase

2. **Keep It Concise** (aim for 50-100 lines maximum):
   - Focus on what AI needs to know to be helpful
   - Avoid redundant information already in README.md
   - Use bullet points for efficiency
   - Reference other docs instead of duplicating content

**Formatting Adaptation:**
- **Match existing heading styles** (##, ###, or custom patterns)
- **Follow existing bullet point or numbering style**
- **Preserve existing section organization**
- **Maintain same language tone and technical level**
- **Use same cross-referencing style as existing content**

**Content Addition Rules:**
**What to add (if not already present):**
- **New tech stack changes** (only if different from existing)
- **New development patterns** (only if not documented)
- **Critical context changes** (architecture shifts, major refactoring)
- **New integration points** (external services not mentioned)
- **Updated file structure** (only if significantly different)

**What NOT to add:**
- Information already in existing CLAUDE.md
- Details already covered in README.md or other docs
- Verbose explanations of obvious functionality
- Repetitive descriptions of the same concepts

**CLAUDE.md Efficiency Guidelines:**
- **Maximum addition: 20-30 lines per update**
- **Focus on Delta changes** - what's different since last update
- **Use same formatting style as existing content**
- **Reference other docs instead of duplicating content**
- **Remove outdated information while adding new**
- **If major restructuring needed, ASK USER first**

### 4. Cross-Linking Strategy
**Adapt to existing linking patterns:**

**Before adding links:**
- **Identify existing link formats** in the project
- **Note current cross-referencing style**
- **Preserve existing navigation patterns**

**Linking Adaptation:**
- **Match existing link format** (absolute vs relative, with/without .md)
- **Follow established cross-referencing style**
- **Maintain existing table of contents format if present**
- **Use same anchor link style as existing docs**
- **If no pattern exists, use simple format: `[Topic](docs/topic.md)`**

**User Confirmation for Major Changes:**
- **If documentation structure change is significant, ASK USER**
- **If unsure about linking style, ASK USER for preference**
- **If existing docs have unusual patterns, confirm before changing**

## Quality Standards
**Maintain existing quality while respecting project patterns:**

**Consistency Rules:**
- **MATCH existing formatting and style exactly**
- **PRESERVE existing heading hierarchy and numbering**
- **FOLLOW established code block and example formats**
- **MAINTAIN existing terminology and language style**
- **KEEP same level of technical detail as existing docs**

Ensure all documentation:
- Uses consistent formatting (matching existing patterns)
- Includes practical, working examples (in existing format)
- Is organized logically (following existing structure)
- Cross-references appropriately (using existing link styles)
- Uses terminology consistent with existing docs
- Maintains appropriate length for its purpose

**When Unsure:**
- **ASK USER about formatting preferences**
- **ASK USER about documentation organization**
- **ASK USER about style guide or conventions**
- **NEVER assume - always confirm major changes**

## Validation Steps
After updating documentation:
- **Test All Setup Instructions**: Follow setup guide from scratch
- **Verify Runtime Commands**: Test all commands actually work
- **Check Cross-Links**: Ensure all internal links function correctly
- **Validate Format Consistency**: Confirm formatting matches existing patterns
- **Validate CLAUDE.md Efficiency**: Confirm only new/changed info was added
- **Check Style Consistency**: Ensure new content matches existing tone/style
- Verify all code examples actually work
- Check that all external links are functional
- Ensure version numbers and dependencies are current

## Output Format
Present the documentation updates in a structured format:

**For Projects WITH Existing Documentation:**
1. **Documentation Standards Detected**: Existing patterns and conventions found
2. **Adaptation Decisions**: How existing formats were preserved/adapted
3. **User Confirmations Needed**: Any unclear patterns requiring user input
4. **Summary of Changes**: Brief overview of what was updated
5. **Updated Files**: List each file with specific changes and format preservation
6. **CLAUDE.md Delta**: Only the new information added (not full content)
7. **Format Validation**: Confirmation that existing styles were maintained
8. **Setup Validation Results**: Confirmation that instructions work

**For Projects WITHOUT Existing Documentation:**
1. **Project Type Detected**: Identified project category and appropriate standards
2. **Proposed Documentation Structure**: Suggested organization and file structure
3. **Standard Templates Applied**: Which templates and conventions were used
4. **New Documentation Created**: All files created with purpose and rationale
5. **CLAUDE.md Structure**: Essential context included (aim for 50-100 lines)
6. **Cross-Linking Strategy**: How documents will reference each other
7. **Setup Validation Results**: Confirmation that instructions work
8. **Style Guide Summary**: Documentation conventions established for future updates

**For Both Cases:**
9. **Recommendations**: Suggestions for ongoing maintenance
10. **Next Steps**: Suggested improvements or additional documentation needs

$ARGUMENTS

---
*This command analyzes your codebase and creates efficient, well-organized documentation that respects existing project standards and avoids redundancy while maintaining optimal Claude Code performance through strategic CLAUDE.md updates.*