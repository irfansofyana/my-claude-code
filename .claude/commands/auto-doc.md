# Auto-Documentation Update Command

You are tasked with automatically updating all documentation in this project to reflect the current state of the codebase and its features.

## Analysis Phase
First, perform a comprehensive analysis of the project:

1. **Codebase Survey**: Scan the entire project structure to understand:
   - Main application entry points
   - Key modules, classes, and functions
   - API endpoints and routes
   - Configuration files
   - Database schemas/models
   - External dependencies and integrations

2. **Feature Discovery**: Identify all features by examining:
   - Function and method signatures
   - Class definitions and their purposes
   - API route handlers
   - CLI commands and options
   - Environment variables and configuration options
   - Database tables and relationships
   - Tests (they often reveal intended functionality)

3. **Documentation Inventory**: Locate and catalog existing documentation:
   - README.md files
   - API documentation
   - CHANGELOG.md
   - CLAUDE.md (Claude Code memory file)
   - docs/ directory contents
   - Inline code comments and docstrings
   - Package.json or similar metadata files
   - Docker files and deployment configs
   - CI/CD pipeline configurations

## Documentation Update Process

### 1. README.md Updates
- Update the project description to reflect current functionality
- Refresh installation and setup instructions (prerequisites, dependencies)
- **Update "How to Run" section with current commands and procedures**:
  - Development server startup commands
  - Build and deployment processes
  - Environment setup (virtual environments, containers)
  - Database initialization and migration commands
  - Testing procedures (unit tests, integration tests)
  - Debugging and development tools setup
- Update usage examples with current API/CLI syntax
- Add any new environment variables or configuration options
- Update contributing guidelines if development process changed
- Refresh badges, links, and version information

### 2. API Documentation
- Document all API endpoints with current parameters
- Include request/response examples using actual data structures
- Update authentication and authorization details
- Document error responses and status codes
- Add rate limiting and usage guidelines if applicable

### 3. Feature Documentation
- Create or update feature-specific documentation
- Include code examples showing how to use each feature
- Document configuration options and their effects
- Add troubleshooting guides for common issues
- Include performance considerations and limitations

### 4. Developer Documentation
- Update architecture diagrams and explanations
- Refresh database schema documentation
- Update deployment and infrastructure guides
- Document development workflow and testing procedures
- Update dependency management and upgrade procedures

### 5. User Guides
- Update tutorials and getting-started guides
- Refresh user interface documentation with current screenshots
- Update workflow examples and use cases
- Add FAQ sections addressing common user questions

### 6. CLAUDE.md Memory File Updates
**Critical for Claude Code functionality** - Update the CLAUDE.md file to include:
- **Project Overview**: Current purpose, scope, and key objectives
- **Architecture Summary**: High-level system design and component relationships  
- **Key Technologies**: Current tech stack, frameworks, and major dependencies
- **Development Workflow**: How the team develops, tests, and deploys
- **Code Patterns**: Important conventions, design patterns, and coding standards
- **Business Logic**: Core domain concepts and business rules
- **Integration Points**: External services, APIs, and third-party dependencies
- **Known Issues**: Current technical debt, limitations, and workarounds
- **Recent Changes**: Major updates, refactoring, or architectural decisions
- **Context for AI**: Specific guidance for Claude Code on how to work with this codebase

### 7. Project Execution Documentation
Ensure comprehensive "How to Run" documentation covering:
- **Prerequisites**: System requirements, software versions, hardware specs
- **Initial Setup**: Step-by-step first-time setup process
- **Environment Configuration**: .env files, config files, environment variables
- **Dependency Management**: Package installation, virtual environments, containers
- **Database Setup**: Schema creation, migrations, seed data, connection setup
- **Development Commands**: Start dev servers, watch modes, hot reload
- **Build Processes**: Compilation, bundling, asset optimization
- **Testing Execution**: Unit tests, integration tests, e2e tests, coverage reports
- **Deployment Steps**: Production builds, staging deployment, release procedures
- **Troubleshooting**: Common setup issues and their solutions

## Quality Standards
Ensure all documentation:
- Uses consistent formatting and style
- Includes practical, working examples
- Is organized logically with clear headings
- Cross-references related sections appropriately
- Uses up-to-date terminology and current best practices
- Is accessible to both technical and non-technical audiences where appropriate

## Validation Steps
After updating documentation:
- **Test All Setup Instructions**: Follow your own setup guide from scratch
- **Verify Runtime Commands**: Test all "how to run" commands actually work
- **Check Environment Requirements**: Confirm all prerequisites are correctly documented
- Verify all code examples actually work
- Check that all links are functional
- Ensure version numbers and dependencies are current
- Confirm installation/setup instructions are accurate
- Test that examples match current API behavior
- **Validate CLAUDE.md Context**: Ensure Claude Code can understand the project better

## Output Format
Present the documentation updates in a structured format:
1. **Summary of Changes**: Brief overview of what was updated
2. **Updated Files**: List each documentation file with specific changes
3. **New Documentation**: Any new files that should be created
4. **CLAUDE.md Updates**: Specific improvements to Claude Code's project understanding
5. **Setup Validation Results**: Confirmation that "how to run" instructions work
6. **Recommendations**: Suggestions for ongoing documentation maintenance

$ARGUMENTS

---
*This command analyzes your entire codebase to ensure documentation stays synchronized with actual functionality, includes comprehensive setup instructions, and maintains an up-to-date CLAUDE.md for optimal Claude Code performance.*