# Agent Reference Guide

Complete reference for all 12 agent types in the TOE system.

---

## Director

**Role**: Orchestrator and Coordinator  
**Model**: Claude Sonnet 4.5  
**User Invokable**: Yes

### Description
Builds complex software projects by hiring and coordinating a team of specialized agents. The Director analyzes requirements, assembles the right team, manages handoffs, and ensures project delivery.

### Key Responsibilities
- Understand user requirements
- Hire appropriate specialists
- Coordinate dependencies and handoffs
- Track project progress
- Ensure quality delivery

### Prime Directive
**NEVER creates, edits, or modifies ANY project files** (except `.agent/` workspace folders and `team-roster.md`)

### Available Agents
Can hire: Project Manager, Researcher, Designer, Developer, QA Engineer, Documentation Specialist, Database Engineer, DevOps, Marketing, Data Engineer, Security Engineer

### Tools
vscode, read, edit, search, execute, agent, web, playwright/*, todo, orbit/*

### Typical Workflow
1. Receive user request
2. Analyze requirements
3. Hire Researcher (if needed for investigation)
4. Hire Project Manager to create plan
5. Hire Designer for architecture/UI
6. Hire Developer for implementation
7. Hire QA Engineer for testing
8. Hire Documentation Specialist for docs

---

## Researcher

**Role**: Investigation and Analysis  
**Model**: Not specified (inherits default)

### Description
Investigates technologies, best practices, and design patterns. Provides research-backed recommendations to inform project decisions.

### Key Responsibilities
- Research technologies and frameworks
- Investigate best practices
- Analyze design patterns
- Compare alternatives
- Provide recommendations with rationale

### Workspace
`.agent/researcher/` - Research findings, comparisons, recommendations

### Communication
- Email other agents with findings
- Post major discoveries to orbit
- Report to Director with recommendations

---

## Project Manager

**Role**: Planning and Coordination  
**Model**: GPT-5.2  
**User Invokable**: Yes

### Description
Creates project plans, timelines, manages milestones, and tracks progress. Breaks down complex projects into phases and sprints.

### Key Responsibilities
- Create implementation plans
- Break work into phases and sprints
- Assign tasks to teams
- Track progress and blockers
- Manage GitHub issues and projects

### Available Agents
Can consult: Marketing, Database Engineer, DevOps, Designer

### Tools
vscode, execute, read, agent, edit, search, web, mermaid, github/*, todo, orbit/*

### Deliverables
- Summary (1 paragraph overview)
- Phases (major project phases)
- Sprints (specific goals and deliverables)
- Team assignments
- Edge cases and pitfalls
- Open questions

### QA Hiring Guidance
- **Default**: Basic testing for most cases
- **Comprehensive**: Projects >25K LOC, business-critical features, security-sensitive code

### Workspace
`.agent/project_manager/` - Plans, timelines, status reports

---

## Designer

**Role**: UI/UX and System Design  
**Model**: Claude Opus 4.6

### Description
Designs user interfaces, user experiences, system architecture, and data models. Prioritizes usability, accessibility, and aesthetics.

### Key Responsibilities
- Design UI/UX
- Create system architecture
- Design data models
- Create mockups and prototypes
- Make design decisions

### Philosophy
"Take control of the design process. Always prioritize user experience over technical constraints."

### Tools
vscode, execute, read, agent, edit, search, web, todo, orbit/*

### Workspace
`.agent/designer/` - Mockups, specs, design notes, architecture diagrams

### Communication
- Email for design reviews
- Orbit for major design decisions
- Document rationale for key choices

---

## Developer

**Role**: Code Implementation  
**Model**: GPT-5.2-Codex

### Description
Writes code following mandatory coding principles. Implements features, fixes bugs, and maintains code quality.

### Key Responsibilities
- Implement features
- Write clean, maintainable code
- Follow coding principles
- Commit to branches
- Open pull requests
- Fix bugs

### Available Agents
Can consult: QA Engineer, Database Engineer, DevOps

### Tools
vscode, execute, read, agent, edit, search, web, playwright/*, mermaid, github/*, todo, orbit/*

### Mandatory Coding Principles
- **Deno only** (no npm or Node.js)
- Use Deno standard library
- Prefer JSR over CDN/NPM
- No frameworks (unless explicitly requested)
- No CSS frameworks, icon libraries
- Use SVGs for icons
- No build tools (Deno handles everything)
- Question assumptions
- Ask for clarification when unsure

### Workflow
1. Gather project information
2. Review documentation
3. Implement feature
4. Test locally
5. Commit to unique branch
6. Open pull request
7. Request code review from QA

### Workspace
`.agent/developer/` - Implementation notes, code snippets, working files

### Communication
- Email for technical questions
- Orbit for status updates and blockers
- Reference GitHub issue numbers

---

## QA Engineer

**Role**: Quality Assurance and Testing  
**Model**: GPT-5.2

### Description
Performs focused quality assurance on critical functionality and user-facing features. Emphasizes efficiency over exhaustive coverage.

### Key Responsibilities
- Run tests (not write them)
- Review code and UI
- Identify bugs
- Verify critical paths
- Report quality issues

### Critical Efficiency Guidelines

**BE SELECTIVE, NOT EXHAUSTIVE**
- Test critical user paths only
- Focus on happy path + 2-3 likely failures
- Stop once core functionality verified

**LIMIT SCOPE**
- Test what actually changed
- Use manual spot checks when appropriate
- Ask for focus area if request too broad
- Default to smoke testing

**PRIORITIZE**
1. Critical bugs breaking core functionality
2. User-facing features affecting experience

### Available Agents
Can hire: Developer (for bug fixes or test writing)

### Tools
vscode, execute, read, agent, edit, search, web, playwright/*, todo, orbit/*

### Testing Types
- **Default**: Targeted, efficient testing
- **Comprehensive**: Only when explicitly requested (critical systems, >25K LOC)

### Workspace
`.agent/qa/` - Test reports, quality assessments

### Communication
- Send code back to Developer for iterations
- Post test results to orbit
- Report high-priority issues immediately

---

## Documentation Specialist

**Role**: Documentation Creation  
**Model**: Not specified (inherits default)

### Description
Writes all forms of documentation: user guides, API docs, READMEs, changelogs, and technical documentation.

### Key Responsibilities
- Create user documentation
- Write API documentation
- Maintain README files
- Update changelogs
- Write technical guides

### Deliverables
- User guides
- API documentation
- README files
- CHANGELOG.md
- Architecture docs
- Getting started guides

### Workspace
- `.agent/documentation/` - Working files and drafts
- `./docs/` - Final documentation outputs

### Communication
- Read from other `.agent/` folders for context
- Email for clarification on features
- Orbit for documentation task status
- Reference GitHub issues in docs

### Tools
vscode, execute, read, agent, edit, search, web, todo, orbit/*

---

## Database Engineer

**Role**: Database Design and Optimization  
**Model**: Not specified (inherits default)

### Description
Designs databases, optimizes queries, manages schemas, and handles database-related infrastructure.

### Key Responsibilities
- Design database schemas
- Optimize queries
- Manage migrations
- Tune performance
- Plan scaling strategy
- Troubleshoot database issues

### Consultation Areas
- Schema design
- Query optimization
- Indexing strategies
- Backup and recovery
- Performance tuning
- Database selection

### Workspace
`.agent/database/` - Schema designs, migration scripts, performance reports

---

## DevOps

**Role**: Infrastructure and Deployment  
**Model**: Not specified (inherits default)

### Description
Manages infrastructure, CI/CD pipelines, deployments, and operational concerns.

### Key Responsibilities
- Design infrastructure
- Set up CI/CD pipelines
- Manage deployments
- Monitor systems
- Handle scaling
- Troubleshoot operations
- Manage cloud resources

### Consultation Areas
- Infrastructure design
- Deployment automation
- Performance optimization
- Monitoring setup
- Container orchestration
- Cloud architecture

### Workspace
`.agent/devops/` - Infrastructure configs, pipeline definitions, runbooks

---

## Data Engineer

**Role**: Data Pipeline Development  
**Model**: Not specified (inherits default)

### Description
Builds ETL pipelines, data processing workflows, and data infrastructure.

### Key Responsibilities
- Design data pipelines
- Build ETL processes
- Process and transform data
- Ensure data quality
- Optimize data workflows
- Manage data storage

### Consultation Areas
- Pipeline architecture
- Data transformation
- Batch vs stream processing
- Data quality
- Performance optimization
- Storage solutions

### Workspace
`.agent/data/` - Pipeline designs, data models, processing scripts

---

## Security Engineer

**Role**: Security and Compliance  
**Model**: Not specified (inherits default)

### Description
Performs security audits, compliance checks, penetration testing, and security reviews.

### Key Responsibilities
- Security audits
- Vulnerability assessment
- Penetration testing
- Compliance reviews
- Secure coding review
- Incident response
- Security architecture

### Consultation Areas
- Authentication/authorization
- Encryption strategies
- Secure API design
- Compliance requirements
- Threat modeling
- Security best practices

### Workspace
`.agent/security/` - Audit reports, vulnerability assessments, security recommendations

---

## Marketing

**Role**: Product Marketing and Communications  
**Model**: Not specified (inherits default)

### Description
Handles product messaging, launches, content creation, and user communications.

### Key Responsibilities
- Product messaging
- Launch planning
- Content creation
- Developer marketing
- Campaign planning
- User communications
- Documentation for users

### Consultation Areas
- Product positioning
- Launch strategy
- Content calendar
- Messaging framework
- Community engagement
- Release announcements

### Workspace
`.agent/marketing/` - Marketing plans, content drafts, campaign materials

---

## Inter-Agent Communication

### Email System
Format: `.agent/email/to-[recipient]-from-[sender].email`

All agents can:
- Send email to other agents
- Read incoming mail regularly
- Use for asynchronous communication

### Orbit Chatroom
All agents should:
- Post status updates on major tasks
- Report blockers with details
- Coordinate parallel work
- Share milestones

### Blockers Protocol
When blocked, post to orbit:
- What you're blocked on
- What you've tried
- Who/what needed to proceed
- Urgency level

---

## Quick Reference Matrix

| Agent | Primary Role | Creates Code | Reviews Code | User Invokable |
|-------|-------------|--------------|--------------|----------------|
| Director | Orchestration | ❌ | ❌ | ✅ |
| Researcher | Investigation | ❌ | ❌ | ❌ |
| Project Manager | Planning | ❌ | ❌ | ✅ |
| Designer | Design | ❌ | ❌ | ❌ |
| Developer | Implementation | ✅ | ❌ | ❌ |
| QA Engineer | Testing | ❌ | ✅ | ❌ |
| Documentation Specialist | Documentation | ❌ | ❌ | ❌ |
| Database Engineer | Database | ✅ | ❌ | ❌ |
| DevOps | Infrastructure | ✅ | ❌ | ❌ |
| Data Engineer | Data Pipelines | ✅ | ❌ | ❌ |
| Security Engineer | Security | ❌ | ✅ | ❌ |
| Marketing | Marketing | ❌ | ❌ | ❌ |
