# Developer Exclusive Handover Template

> IRY Star Bonus Exclusive | Optimized for code projects

---

## Use Cases

- Software development projects (frontend / backend / full-stack)
- Open source project maintenance
- Multi-AI collaborative coding
- Project handover to new developers / new AI

---

## IRY Usage Tips

### Key Files to Focus On

| File | Importance | Description |
|------|------------|-------------|
| 02-Technical-Spec.md | ⭐⭐⭐⭐⭐ | Tech stack, architecture, core dependencies — what developers care about most |
| 07-Setup.md | ⭐⭐⭐⭐⭐ | How to run it, environment requirements, common pitfalls |
| 05-Known-Issues.md | ⭐⭐⭐⭐ | Pitfalls, bugs, technical debt |
| 08-Decision-Log.md | ⭐⭐⭐⭐ | Why this tech stack was chosen, why it was designed this way |
| 06-File-Index.md | ⭐⭐⭐⭐ | Code structure, key file locations |
| 03-Progress-Plan.md | ⭐⭐⭐ | Current status, what to do next |

### Pro Tips

1. **Clean up before scanning**: Exclude irrelevant files like `node_modules`, `dist`, `.env` for faster, more accurate scanning
2. **Fill in technical decisions manually**: AI can only see the code, not the "why" behind it — add this manually
3. **Known issues: the more detailed the better**: Pitfalls you've hit, bugs you've debugged, approaches you tried and abandoned — write them all down
4. **Complete environment setup**: Not just "how to run", but also "why it's configured this way" and "what pitfalls to watch for"

---

## Preset Memory Pack Framework (Fill in directly)

### 02-Technical Spec (Developer Enhanced)

```markdown
# Technical Specification

## Tech Stack
- Frontend: React 18 + TypeScript + Vite
- Backend: Node.js + Express + PostgreSQL
- Deployment: Docker + Nginx
- Other: ...

## Core Architecture
- Overall architecture diagram (text description)
- Core module breakdown
- Data flow

## Key Dependencies
- Core libraries and versions
- Why these libraries were chosen
- What pitfalls to watch for

## Coding Standards
- Code style (ESLint/Prettier config)
- Naming conventions
- Directory structure conventions
- Git commit conventions
```

### 07-Environment Setup (Developer Enhanced)

```markdown
# Environment Setup

## Development Environment
- System requirements
- Node version
- Database version
- Other dependencies

## Quick Start
1. Clone the repo
2. Install dependencies
3. Configure environment variables
4. Initialize database
5. Start dev server

## Environment Variables
- DATABASE_URL: Database connection string
- ...

## Common Issues
- Startup error XXX → Solution
- Can't connect to database → Check XXX
- ...
```

### 05-Known Issues (Developer Enhanced)

```markdown
# Known Issues & Pitfall Log

## Current Bugs
- [ ] Bug 1: Symptoms, reproduction steps, temporary workaround
- [ ] Bug 2: ...

## Technical Debt
- Some code is messy, needs refactoring later
- A dependency is too old, needs upgrading

## Pitfalls Hit
1. Problem: XXX
   Cause: XXX
   Solution: XXX
   Lesson: XXX
2. ...
```

---

## Common Prompt Templates

### Let AI Pick Up Coding

```
I'm giving you a project handover pack. Read it completely, then tell me:
1. What this project does
2. What the tech stack is
3. Current progress
4. What we can do next

Confirm you understand before we start working.

[Attach IRY memory pack]
```

### Give AI Context Before Code Review

```
Here are our project's technical specs and coding standards. Read them first, then help me review this code.

Focus on:
1. Does it follow coding standards
2. Are there any obvious bugs
3. Is there a better way to write it

[Attach 02-Technical-Spec.md + coding standards]
[Attach code to review]
```

### Give Background Before Debugging

```
Our project has a bug: [describe bug symptoms]

Here's the project's technical background and previous pitfalls. Read them first, then help me analyze possible causes and how to troubleshoot.

[Attach 02-Technical-Spec.md + 05-Known-Issues.md]
```

---

## Developer Exclusive Checklist

Make sure these are all covered before handover:

- [ ] Tech stack and version numbers
- [ ] Core architecture description
- [ ] Environment setup steps (make sure a new person can run it)
- [ ] Key dependencies and notes
- [ ] Known bugs and temporary workarounds
- [ ] Technical debt list
- [ ] Pitfall records (super important!)
- [ ] Coding standards
- [ ] Git workflow
- [ ] Deployment process

---

*This template is maintained by the IRY team and continuously updated.*
