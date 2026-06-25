# AI Collaboration Best Practices Handbook

> IRY Star Bonus Exclusive | Make AI your true productivity multiplier

---

## Foreword

AI is not a search engine, nor an automatic execution machine. It's a **collaborative partner** — use it well, and your productivity 10x; use it poorly, and it's just a fancy chatbot.

This handbook summarizes the core methodologies for efficient AI collaboration. Works even better with IRY.

---

## 1. Core Mindset: Treat AI as an "Intern", Not a "Superhero"

### 1.1 Expectation Management

❌ **Wrong mindset**: AI should know everything. I say one sentence and it should output perfect results.
✅ **Right mindset**: AI is a smart but inexperienced intern. You need to give it clear context, rules, and feedback.

### 1.2 Three Collaboration Principles

1. **Context first**: Before starting any task, clearly state the background, goals, and constraints
2. **Iterate step by step**: Don't expect perfect results in one go. Guide step by step and optimize gradually
3. **Correct promptly**: Point out mistakes immediately. The more you use it, the better it understands you

---

## 2. Prompt Writing Mastery

### 2.1 Golden Structure: Role + Background + Task + Requirements

```
You are a [role definition].
[Background info: what the project is, current status, what you know]
I need you to [specific task: what to do, what format to output]
Requirements:
1. [Requirement 1]
2. [Requirement 2]
3. [Requirement 3]
```

### 2.2 Common Mistakes

| Bad Prompt | Problem | Improved Version |
|------------|---------|------------------|
| "Help me write a proposal" | Too vague — what kind of proposal, for whom, what style? | "You're a senior cultural tourism planner. We have a rural cultural tourism project with a 5M budget. Help me write an event planning proposal targeting families, down-to-earth but with quality." |
| "Make it better" | What's the standard for "better"? | "Language should be concise and powerful, each paragraph no more than 3 lines, key points bolded" |
| "Just write something casual" | AI will actually write casually | "First draft 3 directions, each under 200 words. I'll pick one to refine" |

### 2.3 Advanced Tips

- **Give samples**: "Write in this style: [attach a sample]"
- **Set limits**: "Under 500 words", "Summarize in 3 points", "No idioms"
- **Ask for reasoning**: "Analyze the problem first, then give the answer. Show your thinking process."

---

## 3. Context Management: Make AI Understand You Better Over Time

### 3.1 Why Context Matters

AI's memory is **session-level** — a new session = a brand new stranger. You chat with it for dozens of rounds, it finally gets your style... then the session expires, and everything resets.

That's exactly the problem IRY solves.

### 3.2 Three Levels of Context Management

**Level 1: Within a single task**
- Give full background at the start
- Give feedback and corrections in the middle
- Summarize and confirm at the end

**Level 2: Cross-session for the same project**
- Use IRY to generate a memory pack
- Import the memory pack first in each new session
- Update the memory pack after each session

**Level 3: Personal preference accumulation**
- Build your "personal AI profile"
- Includes: communication style, output preferences, taboo topics, common templates
- Import this profile at the start of every new session

### 3.3 Personal AI Profile Template

```markdown
# My AI Collaboration Preferences

## Communication Style
- Get straight to the point, no pleasantries
- Point out problems directly, no beating around the bush
- Output in structured format (numbered lists, bullet points)

## Output Preferences
- English output
- Concise, no verbosity
- Key content bolded
- Code in code blocks

## Taboo Topics
- Don't use internet slang like "fr fr no cap"
- Don't use overly marketing language
- Don't make up data and facts

## Common Templates
- Proposals: Background - Problem - Solution - Expected Outcome - Budget
- Copywriting: Hook - Pain Point - Solution - Call to Action
```

---

## 4. IRY Efficient Usage Guide

### 4.1 When to Use IRY?

✅ **Must-use scenarios:**
- Session is about to expire, want to keep current project state
- Switching AI models / platforms to continue the same project
- Handing off a project to a colleague / another AI
- Project is paused for a while, need to pick it up later

❌ **Not necessary:**
- One-time simple Q&A
- Temporary research, data calculation
- Completely independent new tasks

### 4.2 Best Practices

1. **Generate the first memory pack mid-project** — don't wait until the session is about to expire. The earlier you generate, the more complete it is
2. **Update after every major decision** — key decisions, plan changes, pitfalls hit — record them promptly
3. **Receiver reads the pack first** — after the new AI reads the memory pack, have it restate its understanding. Confirm before starting work
4. **Memory packs are living documents** — not generate-once-and-done. Update continuously as the project progresses

### 4.3 Tips for Different Scenarios

**Developer scenario:**
- Focus on: technical specs, environment setup, known issues, decision log
- Tip: Regenerate after each major version update

**Content creation scenario:**
- Focus on: user profile, style preferences, topic directions, historical hits
- Tip: Include brand tone and copy templates in the memory pack

**Project management scenario:**
- Focus on: progress plan, dependencies & constraints, todo list, risks & red lines
- Tip: Update progress status weekly

---

## 5. Best Practices for Common Scenarios

### 5.1 Using AI to Write Code

1. First tell AI the tech stack, project structure, and coding standards
2. Write module by module — don't ask it to write the whole project at once
3. After writing, have it self-review to find bugs
4. Have it explain why key logic is written that way

### 5.2 Using AI to Write Copy

1. Be clear first: who's the audience, what effect do you want, what's the tone
2. Give reference samples — 10x more effective than describing style
3. Generate multiple versions, pick the best one, then optimize
4. Finally, have it write 3 alternative headlines

### 5.3 Using AI for Planning

1. Give enough background: industry, competitors, target users, budget constraints
2. Ask for the framework first, then the details
3. Have it analyze from both sides (advantages / risks)
4. Finally, have it list an execution checklist and timeline

### 5.4 Using AI to Learn New Things

1. State your current level first — don't start from kindergarten
2. Ask for analogies — more effective than definitions
3. After learning, have it quiz you to test understanding
4. Finally, have it summarize into a knowledge checklist

---

## 6. Pitfall Guide: Don't Make These Mistakes

### 6.1 Common Misconceptions

1. **Expecting AI to get it right first try** — even the best AI needs iteration. 3 rounds of optimization is normal
2. **Giving too little context** — you save 30 seconds of typing, then spend 30 minutes correcting
3. **Not correcting promptly** — if you see something wrong and say nothing, AI will go further down the wrong path
4. **Tasks too big** — "help me build an app" is a task AI can't even start on
5. **Not verifying results** — AI can confidently spout nonsense. Always cross-verify important information

### 6.2 Safety Reminders

⚠️ **Never feed sensitive information directly to AI**
- Company secrets, user data, account passwords, API keys, tokens
- If you're not sure if you can say it, don't say it
- For code-related content, be careful to desensitize

---

## 7. Advanced: Build Your AI Workflow

### 7.1 Recommended Workflow

```
1. Task Start
   ├─ Import personal preference profile
   └─ Import project memory pack (if continuing)

2. Task Execution
   ├─ Step-by-step guidance, gradual iteration
   └─ Timely feedback and correction

3. Task End
   ├─ Summarize outputs
   ├─ Update memory pack
   └─ Archive important information
```

### 7.2 Tool Combination Recommendations

- **Memory management**: IRY (this project 😄)
- **Prompt templates**: Build your own template library, reuse for common scenarios
- **Knowledge accumulation**: Organize and archive good AI outputs, turn them into your own assets
- **Multi-model collaboration**: Use different models for different tasks, leverage each one's strengths

---

## Final Words

AI collaboration is a skill — just like learning to drive or learning photography, it takes practice to master.

At first it might feel like a hassle — writing such long prompts, managing context, generating memory packs... but once it becomes a habit, the efficiency gains are exponential.

**IRY is just a tool. The real efficiency gain comes from your own work methodology.**

Enjoy using it.

---

*This handbook is maintained by the IRY team and continuously updated. Have suggestions? Open an Issue!*
