# Team of Experts (TOE)

A multi-agent system for building complex software projects by assembling specialized AI agents.

## Overview

This repository contains agent definitions for a Director-led team of specialized AI experts. The Director orchestrates complex software projects by hiring and coordinating agents with specific expertise.

## Available Agents

### Core Team
- **Director** - Orchestrates projects, hires and coordinates specialized agents
- **Researcher** - Investigates technologies, best practices, and design patterns
- **Project Manager** - Creates project plans, timelines, and manages milestones
- **Designer** - Designs system architecture, UI/UX, and data models
- **Developer** - Implements features and writes code
- **QA Engineer** - Tests software for quality, bugs, and compliance
- **Documentation Specialist** - Creates user guides, API docs, and technical documentation

### Specialized Team
- **Database Engineer** - Designs databases, optimizes queries, manages schemas
- **DevOps** - Manages infrastructure, CI/CD pipelines, and deployments
- **Data Engineer** - Builds ETL pipelines, data processing workflows
- **Security Engineer** - Performs security audits, compliance checks, penetration testing
- **Marketing** - Handles product messaging, launches, and content creation

## How It Works

1. **User Request** - Describe what you need built
2. **Director Analysis** - Director understands requirements and determines approach
3. **Team Assembly** - Director hires the right specialists for the job
4. **Coordination** - Director manages handoffs, dependencies, and parallel work
5. **Delivery** - Completed project with all artifacts, tests, and documentation

## Key Principles

- **Delegation Over Implementation** - Director never writes code, only coordinates
- **Specialized Expertise** - Each agent is an expert in their domain
- **Clear Handoffs** - Work products flow seamlessly between agents
- **Quality Focus** - Testing and documentation are first-class concerns
- **Deno-Only Architecture** - NEVER Node.js, npm, or frameworks; pure Deno/TypeScript only

## Technology Stack

### ✅ ALLOWED
- **Deno runtime** - The ONLY allowed JavaScript/TypeScript runtime
- **TypeScript** - Vanilla, pure TypeScript (no transpilers)
- **Deno standard library** - Built-in modules only
- **Web APIs** - Standard browser and Deno APIs
- **JSR packages** - Only when absolutely necessary

### ❌ FORBIDDEN
- **Node.js ecosystem** - No Node.js, npm, pnpm, bun, or Yarn
- **package.json/node_modules** - Never created or used
- **JavaScript frameworks** - No React, Vue, Angular, Svelte, etc.
- **CSS frameworks** - No Tailwind, Bootstrap, etc.
- **Build tools** - No webpack, vite, rollup, esbuild, or transpilers
- **Meta-frameworks** - No Next.js, Nuxt, Remix, SvelteKit, etc.

### Why Deno-Only?

This system enforces a **pure, minimal, vanilla approach**:
- No dependency hell or npm bloat
- No build pipelines or compilation steps
- Direct execution with `deno run`
- Security-first with explicit permissions
- Modern ESM imports from URLs or JSR
- Web-standard APIs throughout

## Usage

These agent definitions are designed for use with AI agent orchestration systems that support multi-agent workflows and specialized agent roles.

## Project Types Supported

- Web applications and APIs
- Data processing pipelines
- Infrastructure and DevOps projects
- Security-critical systems
- Product launches and documentation
- Database design and optimization

## License

MIT License - See LICENSE file for details
