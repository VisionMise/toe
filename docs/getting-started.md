# Getting Started with TOE

## Overview

TOE (Team of Experts) is a multi-agent system that builds complex software projects by assembling specialized AI agents. The Director agent orchestrates the team, hiring the right specialists for each task and coordinating their work.

## Installation

TOE agent definitions are designed for AI agent orchestration systems that support multi-agent workflows. To use TOE:

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd toe
   ```

2. Ensure your AI orchestration system supports `.agent.md` files and multi-agent workflows

3. Configure your orchestration system to recognize TOE agents

## Quick Start

### Basic Usage

1. **Invoke the Director** - Start by talking to the Director agent with your project description
   
2. **Describe Your Project** - Be clear about what you need:
   - "Build a REST API for user management"
   - "Create a data processing pipeline for CSV files"
   - "Set up CI/CD for a Deno application"

3. **Let the Director Orchestrate** - The Director will:
   - Analyze your requirements
   - Hire the appropriate specialists
   - Coordinate work between agents
   - Deliver the completed project

### Example Workflow

```
User: "I need a web application with user authentication"

Director: Analyzes requirements
  ↓
Hires Researcher: Investigates auth best practices
  ↓
Hires Designer: Designs UI/UX and data models
  ↓
Hires Developer: Implements the application
  ↓
Hires QA Engineer: Tests functionality
  ↓
Hires Documentation Specialist: Creates user guides
```

## Understanding Agent Roles

### Core Team
- **Director** - Your main point of contact, coordinates all other agents
- **Researcher** - Investigates technologies and best practices
- **Project Manager** - Creates plans, timelines, and manages tasks
- **Designer** - Designs architecture, UI/UX, and data models
- **Developer** - Writes code and implements features
- **QA Engineer** - Tests and ensures quality
- **Documentation Specialist** - Creates all documentation

### Specialized Team
- **Database Engineer** - Database design and optimization
- **DevOps** - Infrastructure and deployment pipelines
- **Data Engineer** - ETL pipelines and data processing
- **Security Engineer** - Security audits and compliance
- **Marketing** - Product messaging and launches

## Key Concepts

### Delegation Over Implementation
The Director never writes code or creates project files (except `.agent/` workspace folders). All implementation is delegated to specialists.

### Workspace Organization
Agents create their working files in `.agent/<agent-name>/` directories:
- `.agent/developer/` - Implementation notes
- `.agent/designer/` - Design mockups and specs
- `.agent/qa/` - Test reports
- `.agent/documentation/` - Documentation drafts

### Communication Methods
Agents coordinate through:
- **Handoffs** - Direct delegation between agents
- **Email** - `.agent/email/` for asynchronous messages
- **Orbit** - Chatroom for status updates and blockers

## Best Practices

1. **Be Specific** - Clear requirements lead to better results
2. **Trust the Process** - Let the Director handle coordination
3. **Start Simple** - Begin with core functionality, expand later
4. **Review Outputs** - Check `.agent/` folders for intermediate work

## Common Use Cases

- Web applications and APIs
- Data processing pipelines
- Infrastructure automation
- Database design and migration
- Security audits
- Product documentation
- DevOps setup

## Next Steps

- Read [Architecture](architecture.md) to understand how agents work together
- Check [Agent Reference](agent-reference.md) for detailed agent descriptions
- See [Examples](examples.md) for real-world workflows
