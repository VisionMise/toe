# TOE Usage Examples

Real-world examples of how TOE agents work together to complete projects.

---

## Example 1: Building a REST API

**User Request**: "Build a REST API for managing a todo list with user authentication"

### Workflow

```
1. Project Manager receives request
   └─> Analyzes: Need auth, CRUD operations, database, testing

2. Project Manager → Researcher
   └─> Task: "Research authentication best practices for REST APIs"
   └─> Output: Report on JWT vs sessions, security considerations

3. Project Manager → Designer
   └─> Task: "Design the API structure and data models"
   └─> Output: API endpoints, database schema, authentication flow

4. Project Manager → Developer
   └─> Task: "Implement the todo API with authentication"
   └─> Developer → Database Engineer (consultation on schema)
   └─> Output: Working API code, migrations

5. Project Manager → QA Engineer
   └─> Task: "Test the API endpoints and authentication"
   └─> Output: Test report, bugs identified

6. Developer fixes bugs based on QA feedback

7. Project Manager → Documentation Specialist
   └─> Task: "Create API documentation"
   └─> Output: README.md, API reference, getting started guide
```

### Deliverables
- ✅ REST API with CRUD operations
- ✅ JWT authentication
- ✅ Database schema and migrations
- ✅ Test coverage
- ✅ API documentation

### Time Saved
Instead of one person doing research, design, implementation, testing, and docs sequentially, specialists work in their areas of expertise.

---

## Example 2: Data Processing Pipeline

**User Request**: "Create a pipeline to process CSV files and load them into PostgreSQL"

### Workflow

```
1. Project Manager receives request
   └─> Analyzes: ETL pipeline, data validation, error handling

2. Project Manager → Data Engineer
   └─> Task: "Design ETL pipeline for CSV to PostgreSQL"
   └─> Output: Pipeline architecture, data transformation logic

3. Data Engineer → Database Engineer (consultation)
   └─> Topic: Optimal schema for bulk inserts
   └─> Output: Schema design, indexing strategy

4. Project Manager → Developer
   └─> Task: "Implement the data pipeline"
   └─> Output: ETL code in Deno

5. Project Manager → QA Engineer
   └─> Task: "Test pipeline with sample CSV files"
   └─> Output: Validation of data integrity, performance metrics

6. Project Manager → DevOps
   └─> Task: "Set up scheduled pipeline execution"
   └─> Output: Cron job configuration, monitoring setup

7. Project Manager → Documentation Specialist
   └─> Task: "Document the pipeline usage"
   └─> Output: Usage guide, troubleshooting tips
```

### Deliverables
- ✅ ETL pipeline code
- ✅ Database schema
- ✅ Automated scheduling
- ✅ Error handling and logging
- ✅ Usage documentation

---

## Example 3: Security Audit

**User Request**: "Perform a security audit on our authentication system"

### Workflow

```
1. Project Manager receives request
   └─> Analyzes: Security review, vulnerability testing

2. Project Manager → Security Engineer
   └─> Task: "Audit authentication system for vulnerabilities"
   └─> Output: Security assessment report

3. Security Engineer findings:
   - Password storage using weak hashing
   - Missing rate limiting on login endpoint
   - No CSRF protection
   - Insufficient session timeout

4. Project Manager → Developer
   └─> Task: "Fix security issues identified in audit"
   └─> Output: Updated authentication code

5. Project Manager → Security Engineer
   └─> Task: "Re-audit the fixes"
   └─> Output: Verification report

6. Project Manager → Documentation Specialist
   └─> Task: "Document security best practices for the team"
   └─> Output: Security guidelines document
```

### Deliverables
- ✅ Security audit report
- ✅ Fixed vulnerabilities
- ✅ Verification of fixes
- ✅ Security documentation

---

## Example 4: Infrastructure Setup

**User Request**: "Set up CI/CD pipeline and production deployment for our application"

### Workflow

```
1. Project Manager receives request
   └─> Analyzes: Need CI/CD, infrastructure, deployment strategy

2. Project Manager → Project Manager
   └─> Task: "Plan the DevOps setup"
   └─> Output: Implementation plan with phases

3. Project Manager → DevOps
   └─> Task: "Set up CI/CD pipeline"
   └─> Output: GitHub Actions workflows

4. DevOps → Developer (consultation)
   └─> Topic: Build requirements and dependencies
   └─> Output: Build script specifications

5. Project Manager → DevOps
   └─> Task: "Configure production infrastructure"
   └─> Output: Cloud infrastructure (containers, networking)

6. Project Manager → QA Engineer
   └─> Task: "Test the deployment pipeline"
   └─> Output: Verification of automated deployments

7. Project Manager → Documentation Specialist
   └─> Task: "Document deployment procedures"
   └─> Output: Deployment runbook, rollback procedures
```

### Deliverables
- ✅ CI/CD pipeline
- ✅ Production infrastructure
- ✅ Automated deployments
- ✅ Deployment documentation

---

## Example 5: New Feature with Full Lifecycle

**User Request**: "Add a notifications feature to our application"

### Parallel Workflow

```
1. Project Manager receives request
   └─> Analyzes: Need design, implementation, testing, docs, marketing

2. Project Manager kicks off parallel tracks:

   Track A: Research & Design
   ├─> Researcher: "Investigate notification systems"
   └─> Designer: "Design notification UI and data model"

   Track B: Planning
   └─> (Project Manager creates plan internally)

3. After Research & Design complete:

   Project Manager → Developer
   └─> Task: "Implement notifications feature"
   └─> Developer working...
   
   [Meanwhile, in parallel...]
   
   Project Manager → Marketing
   └─> Task: "Prepare announcement for notifications feature"
   └─> Marketing creating content...

4. Developer completes implementation:

   Project Manager → QA Engineer
   └─> Task: "Test notifications feature"
   └─> Output: Test report, minor bugs found

5. Developer fixes bugs, QA re-tests

6. Project Manager finalizes:
   ├─> Documentation Specialist: "Create user guide for notifications"
   ├─> Marketing: "Finalize and schedule announcement"
   └─> DevOps: "Deploy notifications feature to production"
```

### Deliverables
- ✅ Notifications feature
- ✅ UI design
- ✅ Tested and verified
- ✅ User documentation
- ✅ Marketing announcement
- ✅ Production deployment

### Efficiency Gains
Multiple agents work in parallel:
- Marketing prepares content while development happens
- Documentation written while QA testing occurs
- Reduces total project time by ~40%

---

## Example 6: Database Migration

**User Request**: "Migrate our SQLite database to PostgreSQL"

### Workflow

```
1. Project Manager receives request
   └─> Analyzes: Database migration, data integrity, downtime

2. Project Manager → Database Engineer
   └─> Task: "Plan PostgreSQL migration and schema mapping"
   └─> Output: Migration strategy, schema differences

3. Project Manager → Developer
   └─> Task: "Write migration scripts"
   └─> Database Engineer (consultation during development)
   └─> Output: Migration scripts, data transformation code

4. Project Manager → QA Engineer
   └─> Task: "Test migration with copy of production data"
   └─> Output: Verification of data integrity

5. Project Manager → DevOps
   └─> Task: "Plan production migration with minimal downtime"
   └─> Output: Migration runbook, rollback plan

6. Project Manager → Documentation Specialist
   └─> Task: "Document schema changes and migration"
   └─> Output: CHANGELOG.md update, architecture doc update
```

### Deliverables
- ✅ Migration scripts
- ✅ Tested migration process
- ✅ Rollback plan
- ✅ Updated documentation
- ✅ Production migration runbook

---

## Example 7: Bug Fix with Investigation

**User Request**: "Users are reporting slow page loads"

### Workflow

```
1. Project Manager receives request
   └─> Analyzes: Performance issue, needs investigation

2. Project Manager → QA Engineer
   └─> Task: "Reproduce and characterize the performance issue"
   └─> Output: Performance profile, specific slow endpoints

3. Project Manager → Developer
   └─> Task: "Investigate and fix slow queries"
   └─> Developer → Database Engineer (consultation)
   └─> Output: Optimized database queries, added indexes

4. Project Manager → QA Engineer
   └─> Task: "Verify performance improvements"
   └─> Output: Before/after metrics showing 80% improvement

5. Project Manager → Documentation Specialist
   └─> Task: "Update changelog"
   └─> Output: CHANGELOG.md entry for performance fix
```

### Deliverables
- ✅ Root cause analysis
- ✅ Performance optimization
- ✅ Verified improvements
- ✅ Updated changelog

---

## Common Patterns

### Pattern: Sequential Pipeline
Best for: Standard features, new implementations
```
Research → Design → Develop → Test → Document
```

### Pattern: Parallel Execution
Best for: Large projects, independent work streams
```
        ┌─> Developer (Backend)
Project Manager├─> Developer (Frontend)
        └─> Marketing (Content)
        
All complete → QA Tests → Deploy
```

### Pattern: Consultation
Best for: Specialized expertise needed
```
Developer ──[question]──> Database Engineer
          <─[answer]─────
Developer continues work
```

### Pattern: Iterative Refinement
Best for: Quality improvement, bug fixing
```
Developer → QA → [bugs found] → Developer → QA → [passed] → Done
```

---

## Tips for Effective Usage

### 1. Clear Initial Requirements
**Instead of**: "Make it better"
**Try**: "Add user authentication with email/password and JWT tokens"

### 2. Trust Agent Expertise
Let designers make design decisions, let developers choose implementation details within coding principles.

### 3. Use the Right Agent
- Performance issues? Start with QA or Database Engineer
- Deployment problems? DevOps
- Architecture questions? Designer or Researcher

### 4. Check Intermediate Outputs
Review files in `.agents/` offices to see agent work in progress.

### 5. Iterate When Needed
It's okay to send work back for refinement. QA can return code to Developer, Project Manager can ask for design revisions.

---

## Anti-Patterns to Avoid

### ❌ Project Manager Implementing
**Wrong**: Project Manager creates project files
**Right**: Project Manager hires Developer to create files

### ❌ Skipping QA
**Wrong**: Deploy directly after development
**Right**: Always have QA verify critical functionality

### ❌ No Research on New Tech
**Wrong**: Start coding with unfamiliar technology
**Right**: Hire Researcher first to investigate best practices

### ❌ Missing Documentation
**Wrong**: "The code is self-documenting"
**Right**: Documentation Specialist creates user guides

### ❌ Comprehensive Testing Always
**Wrong**: Full test suite for minor text change
**Right**: Use targeted testing, reserve comprehensive for critical features

---

## Measuring Success

Track these metrics across projects:
- Time from request to delivery
- Number of QA-detected bugs
- Documentation completeness
- Agent coordination efficiency
- Rework percentage

Improve by:
- Better initial requirements
- More effective agent handoffs
- Earlier QA involvement
- Parallel work streams where possible
