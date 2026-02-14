# Changelog

All notable changes to the TOE (Team of Experts) project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-02-13

### Added
- Initial release of TOE multi-agent system
- Core agent definitions for 12 specialized roles:
  - Director: Project orchestration and coordination
  - Researcher: Technology investigation and best practices
  - Project Manager: Planning, timelines, and task management
  - Designer: UI/UX and system architecture design
  - Developer: Code implementation with Deno-first approach
  - QA Engineer: Targeted quality assurance and testing
  - Documentation Specialist: Technical and user documentation
  - Database Engineer: Database design and optimization
  - DevOps: Infrastructure and CI/CD pipeline management
  - Data Engineer: ETL pipelines and data processing
  - Security Engineer: Security audits and compliance
  - Marketing: Product messaging and launch coordination
- Multi-agent orchestration with handoff mechanisms
- Workspace organization system using `.agent/` directories
- Inter-agent communication via email system (`.agent/email/`)
- Orbit chatroom integration for status updates and coordination
- Comprehensive documentation:
  - Getting Started guide
  - Architecture documentation
  - Agent Reference guide
  - Examples and workflow patterns
- README with project overview and key principles
- Agent-specific coding principles and guidelines
- Quality assurance efficiency guidelines
- GitHub integration for issues and pull requests

### Principles Established
- Delegation over implementation (Director as coordinator only)
- Specialized expertise per agent
- Clear handoffs between agents
- Quality and documentation as first-class concerns
- Deno-first development approach
- Targeted testing over exhaustive coverage

### Agent Capabilities
- Director: Hires and coordinates all 11 specialized agents
- All agents: Access to VS Code tools, file operations, terminal execution
- Developer: GitHub integration, browser automation (Playwright)
- Project Manager: Mermaid diagram rendering, GitHub project management
- QA Engineer: Browser automation for UI testing
- All agents: Todo management and Orbit chatroom integration

[0.1.0]: https://github.com/username/toe/releases/tag/v0.1.0
