# TOE Architecture

## System Overview

TOE is built on a Director-led multi-agent architecture where a central orchestrator (Director) coordinates specialized agents to complete complex software projects.

## Core Architecture Principles

### 1. Separation of Concerns
Each agent has a specific domain of expertise:
- **Coordination** - Director only
- **Implementation** - Developers, DevOps, Database Engineers
- **Quality** - QA Engineers
- **Planning** - Project Managers
- **Research** - Researchers
- **Design** - Designers
- **Documentation** - Documentation Specialists

### 2. Hierarchical Orchestration
The Director sits at the top of the hierarchy:
```
                    Director
                       |
        +--------------+--------------+
        |              |              |
    Researcher    Project Manager  Designer
        |              |              |
        +------+-------+-------+------+
               |               |
           Developer      QA Engineer
               |
          Documentation Specialist
```

### 3. Agent Handoffs
Agents can hire and delegate to other agents through handoff mechanisms. Each agent defines which other agents they can invoke.

## Component Architecture

### Agent Definition Files
Each agent is defined in a `.agent.md` file with:
- **Metadata** - Name, description, model, tools, handoffs
- **Instructions** - Role-specific guidelines and rules
- **Communication** - Email, orbit, and handoff protocols

### Office Organization
```
project/
├── .agent/                    # Agent offices (not in version control)
│   ├── developer/            # Developer office
│   ├── designer/             # Designer office
│   ├── qa/                   # QA office
│   ├── documentation/        # Documentation office
│   ├── team-roster.md        # Active team members
│   └── email/                # Inter-agent communication
│       ├── to-developer-from-director.email
│       └── to-qa-from-developer.email
├── docs/                      # Final documentation
├── src/                       # Source code
└── README.md
```

### Communication Channels

#### 1. Handoffs (Synchronous)
- Direct delegation from one agent to another
- Used for sequential work dependencies
- Example: Director → Developer → QA Engineer

#### 2. Email (Asynchronous)
- Messages stored in `.agent/email/`
- Format: `to-[recipient]-from-[sender].email`
- Used for non-blocking communication

#### 3. Orbit Chatroom (Broadcast)
- Project-wide status updates
- Blocker notifications
- Milestone announcements
- Parallel work coordination

## Workflow Patterns

### Pattern 1: Sequential Pipeline
```
Director → Researcher → Designer → Developer → QA → Documentation
```
Used for: New features, complex implementations

### Pattern 2: Parallel Execution
```
Director → Project Manager
              ↓
         +----+----+
         ↓         ↓
    Developer   Designer
         ↓         ↓
         +----+----+
              ↓
         QA Engineer
```
Used for: Large projects with independent work streams

### Pattern 3: Iterative Refinement
```
Director → Developer → QA → Developer → QA → Done
                        ↑_________|
```
Used for: Bug fixes, quality improvements

### Pattern 4: Specialized Consultation
```
Developer → Database Engineer → Developer
                 (consultation)
```
Used for: Domain-specific expertise

## Agent Capabilities

### Tools Available to Agents
- **vscode** - VS Code integration
- **read** - File reading
- **edit** - File editing
- **search** - Code search
- **execute** - Terminal commands
- **agent** - Agent invocation
- **web** - Web access
- **playwright/** - Browser automation
- **todo** - Task management
- **orbit/** - Chatroom integration

### Model Assignments
Different agents use different AI models based on their needs:
- **Director** - Claude Sonnet 4.5 (orchestration)
- **Developer** - GPT-5.2-Codex (code generation)
- **Designer** - Claude Opus 4.6 (creative design)
- **QA Engineer** - GPT-5.2 (testing)
- **Project Manager** - GPT-5.2 (planning)

## Quality Assurance

### Testing Strategy
- QA Engineers perform **targeted, efficient testing** by default
- Focus on critical paths and high-impact issues
- Comprehensive testing only for business-critical features

### Code Quality
- Developers follow mandatory coding principles
- Deno-first approach for TypeScript
- No frameworks unless explicitly requested
- Standard library preferred

## Scalability

### Small Projects (< 5K LOC)
- Director + 2-3 specialists
- Single QA pass
- Basic documentation

### Medium Projects (5K-25K LOC)
- Full core team
- Multiple iteration cycles
- Comprehensive documentation

### Large Projects (> 25K LOC)
- Multiple specialists per role
- Parallel work streams
- Comprehensive testing with multiple QA engineers
- Full DevOps and Security involvement

## Security Model

### Agent Boundaries
- Each agent has well-defined permissions
- Director cannot modify project files (only coordinates)
- Developers commit to branches, not main

### Secret Management
- Avoid printing credentials
- Use environment variables
- Security Engineer reviews sensitive code

## Extension Points

### Adding New Agents
1. Create `[Agent Name].agent.md` file
2. Define metadata (model, tools, handoffs)
3. Write role-specific instructions
4. Update Director's agent list

### Custom Workflows
Agents can be combined in custom patterns based on project needs. The Director adapts the team composition dynamically.

## Best Practices

1. **Clear Boundaries** - Each agent stays in their lane
2. **Communication First** - Use email/orbit before escalating
3. **Document Decisions** - Record architectural choices
4. **Iterative Delivery** - Ship incrementally
5. **Quality Gates** - QA before documentation
6. **Clean Office** - Use `.agent/` for working files, clean up when done

## Troubleshooting

### Common Issues

**Blocked Agent**: Post to orbit with blocker details, Director will reassign or unblock

**Missing Context**: Agents should ask for clarification rather than assuming

**Conflicting Work**: Orbit coordination prevents duplicate effort

**Quality Issues**: QA sends back to Developer with specific feedback

## Future Architecture

Potential enhancements:
- Agent memory persistence
- Workflow templates
- Custom agent creation tools
- Inter-project agent sharing
- Performance metrics and optimization
