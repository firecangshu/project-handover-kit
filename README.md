# IRY (I Remember You)｜AI 记忆转移 & 任务交接 Skill

> **New AI. It still remembers you.**
> **中文：换新 AI，它依然记得你。**

---

## 🤯 背景与痛点

长期使用 AI 协作的核心痛点：每开启一次新会话，就意味着所有协作记忆清零，一切从头开始。

- 更换 AI / 重置会话后，历史协作信息全部清空
- 反复复述项目背景、工作规则、个人习惯，效率低下
- 交接内容零散、缺漏，导致新 AI 理解偏差、输出返工
- 历史踩坑、禁忌规则无法延续，重复出现同类问题

---

## ✨ 简介

IRY（I Remember You）是一款面向 AI 跨会话、跨实例的上下文记忆迁移与任务交接 Skill，旨在解决更换 AI 助手、重置会话、切换模型带来的信息断层问题。

本工具支持将移交AI 会话中的用户画像、项目状态、工作习惯、历史经验、风险雷区等全量上下文信息，标准化无损迁移至接收AI 会话，**实现零重复解释、无缝接续工作**。

---

## 💡 产品理念

日常使用 AI 最大的低效痛点：换 AI = 重新讲一遍所有事情。

更换会话或新模型后，需要反复复述项目背景、个人沟通风格、业务规则、禁忌操作、过往踩坑经验，极大浪费时间与沟通成本。

IRY 的核心理念：让每一次 AI 交接，都有完整的记忆延续。新 AI 加载交接数据包后，可完整继承全部历史上下文，真正实现「我记得你」的连续协作体验。

**支持平台**：WorkBuddy / 百度搭子 / Claude Projects / GPTs / 任意 AI 平台（读取 Skill 文件即可触发）

---

## ⚙️ 核心能力

IRY 采用标准化 **7 步交接流程 + 9 道题型化问答 + 半成品容忍 + 反馈迭代**的多重校验机制，保障迁移内容完整、准确、可用。

可迁移核心信息包含但不限于：

- **用户个人画像**：沟通习惯、偏好风格、工作要求、个人规范
- **项目全局状态**：项目背景、当前进度、待办任务、阶段目标
- **技术规格**：技术栈、核心架构、关键依赖
- **依赖与约束**：环境限制、隐私方案、合规要求
- **决策记录**：关键决策、选型理由、历史路线
- **历史经验沉淀**：过往协作经验、有效工作方法、执行标准
- **风险雷区记录**：禁止操作、规避规则、历史踩坑、禁忌边界

**交付物**：10 个标准化文件（`00-项目概况.md` ~ `09-交接检查清单.md`），覆盖全量上下文。

---

## 🎯 核心价值

彻底解决 AI 跨会话交接中的信息不对称、上下文断裂问题。通过人机协同双层质检闭环，杜绝交接缺项、漏项、错项，让接收AI 无需用户二次解释、无需重复追问，直接接续原有工作。

---

## 🚀 使用效果

**一次交接，全量继承。** 接收AI 完整承接移交AI 会话所有记忆与工作状态，实现无缝续工、稳定协作、零重复沟通。

**半成品也能交接**。扫描时自动检测缺失项，记忆包用 `[暂缺]` 标注，不编造、不瞎补。

---

## 📌 Slogan

- 中文：**新 AI 记得你和老 AI 所有的事情**
- English：**New AI remembers everything about you and your old AI**

---

## 触发词

### 中文（10 个）

| 触发词 | 类型 | 适用场景 |
|--------|------|---------|
| `IRY` | 强关联（IP 词） | 懂产品的人直接触发 |
| `我记得你` | 强关联（中文意译） | 中文用户 |
| `I Remember You` | 强关联（英文名） | 理解产品定位的人 |
| `AI任务交接神器` | 强关联（描述词） | 理解产品定位的人 |
| `AI任务交接` | 弱关联（通用） | 不懂 IP 但懂场景 |
| `项目无缝交接` | 弱关联（通用） | 覆盖通用场景 |
| `上下文转移` | 问题导向 | 遇到上下文丢失的人 |
| `接手任务` | 问题导向 | 自然语言触发 |
| `任务中断了怎么办` | 问题导向 | 自然语言触发 |
| `换AI怎么接手` | 问题导向 | 自然语言触发 |

### English（10 trigger words）

| Trigger | Meaning |
|---------|---------|
| `IRY` | Short for "I Remember You" |
| `I Remember You` | Full name, emotional connection |
| `pass the baton` | Idiom-based direct trigger |
| `seamless AI handoff` | Describes the product |
| `transfer project context` | Context loss scenario |
| `pick up where I left off` | Idiom-based natural trigger |
| `task handover` | General scenario |
| `AI context migration` | Technical scenario |
| `project transition` | Project management scenario |
| `hand over to new AI` | Direct action trigger |

---

## 🌐 全局规则

以下规则适用于整个交接流程：

1. **进度条**：每步开始时，AI 输出 `进度：Step X/7，当前：Step X - {状态描述}...`
2. **扫描进度**：大型项目分步输出 `[1/3] [2/3] [3/3]`
3. **触发确认**：任何触发词命中后，AI 先确认「是否启动 IRY？」，防止误触发
4. **取消选项**：每步必须包含取消/回退选项
5. **错误处理**：任何步骤失败 → 输出错误信息 → 询问用户决策
6. **跨会话续接**：每次触发都从头开始（不保留上次进度）
7. **文件编码**：所有交付包文件强制 UTF-8
8. **大文件处理**：单文件 > 10MB → 只记录路径不复制内容
9. **时间戳**：所有生成文件必须在文件头标注生成时间（YYYY-MM-DD HH:MM:SS）
10. **暂缺标注**：缺失内容写 `[暂缺]`，不编造
11. **反馈机制**：交付后引导用户记录到 `feedback.md`

---

## 7 步流程

### Step A：确认意图

AI 输出「是否启动 IRY？」→ 用户回复 A/B。

### Step B：确认项目

- Q1：项目名称
- Q2：项目地址
- 确认后进入下一步

**混合设计**：有文件扫描能力 → 智能推荐 2-4 个项目；无扫描能力 → 手动输入。

### Step B5：隐私确认（扫描前必问）

- A：不涉及敏感信息，正常扫描
- B：涉及，请指定需要脱敏的文件夹路径
- C：取消扫描，结束流程

### Step C：扫描 & 分析项目

AI 扫描三件事：
- **类型**：skill / web / miniapp / system
- **规模**：small / medium / large
- **阶段**：planning / dev / maintenance

**自动检测缺失项**：README / .git / 配置文件 / 环境说明 / 测试用例。

**扫描失败兜底**：提示用户修正路径，重新扫描。

### Step D：确定深度

- **Lite** — 只写 1-2 段总结
- **Standard**（默认推荐）— 完整结构化内容
- **Deep** — Standard + 架构图/数据流/安全检查附录
- **Custom** — 用户勾选要生成的文件

### Step E：自适应提问（9 道题 × 固定题型）

| # | 题型 | 主题 | 答案映射 |
|---|------|------|---------|
| Q1 | 单选 | 项目阶段 | 03 进度计划 |
| Q2 | 单选 | 紧急程度 | 01 用户画像 + 09 交接检查清单 |
| Q3 | 单选 | 技术栈 | 02 技术规格 |
| Q4 | 多选 | 风险/阻塞 | 05 已知问题 + 04 依赖与约束 |
| Q5 | 多选 | 外部依赖 | 04 依赖与约束 |
| Q6 | 多选 | 前置知识 | 00 项目概况 + 09 交接检查清单 |
| Q7 | 对错 | 是否可运行 | 07 环境配置 |
| Q8 | 对错 | 文档完整性 | 06 核心文件索引 |
| Q9 | 简答 | 补充说明 | 按内容分流 |

**每题末尾选填备注（不超过 50 字）**，用于补充未涵盖的细节。

### Step F：生成记忆包

10 个标准文件 + 文件头时间戳 + 缺失标注。

### Step G：交付 + 反馈

- 交付到桌面
- 引导用户记录 feedback

---

## 核心设计原则

1. **混合扫描**：有扫描能力就智能推荐，没有就手动输入
2. **隐私前置**：扫描前必问，不裸跑
3. **单步交互**：每次只问 1 题，输出后立即 STOP
4. **进度可见**：每步有进度条，扫描有分步反馈
5. **半成品容忍**：缺失项自动标记，记忆包用 `[暂缺]` 标注
6. **深度可调**：Lite/Standard/Deep/Custom，详略由用户定
7. **反馈闭环**：每次触发自动检查 `feedback.md`，优先处理 P0
8. **角色清晰**：移交AI 主导交接，接收AI 读取包，用户验收
9. **时间戳可追溯**：所有文件带生成时间，便于多版本对比

---

## 安装与使用

1. 将 `SKILL.md` 放入 AI 平台的 Skill 目录
2. 在对话中说出触发词（如 `IRY`、`我记得你`、`AI任务交接`）
3. AI 自动识别后按 7 步流程执行
4. 用户全程只需做选择题 + 选填备注
5. 交付包默认输出到桌面

### 平台支持

| 平台 | 能力 |
|------|------|
| WorkBuddy | ✅ 全功能：文件扫描、写入磁盘、进度反馈 |
| 百度搭子 | ✅ 基础功能：对话生成、文本输出 |
| Claude Projects | ✅ 基础功能：对话生成、文本输出 |
| GPTs | ✅ 基础功能：对话生成、文本输出 |
| 任意 AI 平台 | ✅ 读取本文件后即可识别触发词并使用 |

---

## 交付包结构

```
{项目名}-IRY交接包-{时间戳}/
├── 00-项目概况.md          (Project Overview)
├── 01-用户画像.md          (User DNA)
├── 02-技术规格.md          (Technical Specification)
├── 03-进度计划.md          (State & Plan)
├── 04-依赖与约束.md        (Dependencies & Constraints)
├── 05-已知问题.md          (Known Issues)
├── 06-核心文件索引.md      (File Index)
├── 07-环境配置.md          (Setup Guide)
├── 08-决策记录.md          (Decision Log)
└── 09-交接检查清单.md      (Handover Checklist)
```

---

## 技术栈

- Markdown（核心文件格式）
- UTF-8 编码
- 跨平台：WorkBuddy / 百度搭子 / Claude / GPTs / 通用 AI

---

## 版本历史

| 版本 | 日期 | 更新内容 |
|------|------|---------|
| V3.0 | 2026-06-23 | **重大重构**：7 步流程 / 隐私前置 / 扫描进度条 / 缺失项容忍 / 9 道题型化问答 / 10 文件结构 / 时间戳 |
| V2.4 | 2026-06-23 | 流程重构（确认项目→选模式→执行） |
| V2.3 | 2026-06-23 | README 结构重构：痛点前置、新增产品理念/核心能力/使用效果章节 |
| V2.2 | 2026-06-23 | 重命名：移魂大法 → IRY (I Remember You)，增加创意说明 |
| V2.1 | 2026-06-23 | 修复残留命名，Q3 填空改弹窗，触发确认机制，Q4-Q7 因果链加深，落盘兜底，JSON 模板 |
| V2.0 | 2026-06-23 | 角色标准化，因果链重建，权责重划，Step 3 选择题化，09 操作说明，打回三选一 |
| V1.0 | 2026-06-23 | 初始版本 |

---

## 📌 Slogan

- **English**: New AI. It still remembers you.
- **中文**: 换新 AI，它依然记得你。

---

## 反向训练

使用者反馈记录在 `feedback.md`，下次触发时自动检查，持续改进。

**feedback.md 格式**：

```markdown
# IRY (我记得你) - 用户反馈

> 记录 Skill 使用中遇到的问题、改进建议、踩过的坑。

---

## 反馈记录

### {日期} - {场景描述}
- **问题**：...
- **建议**：...
- **优先级**：P0 / P1 / P2

---
```

**清空规则**：超过 100 条 → AI 提示用户「是否归档并清空？」

---

# IRY (I Remember You) - AI Memory Transfer & Task Handover Skill

> **New AI. It still remembers you.**
> **中文：换新 AI，它依然记得你。**

---

## 🤯 Background & Pain Points

What's the most painful part of using AI assistants long-term? —— **Every new session means total memory wipe, starting from zero.**

- After switching AI / resetting session, all collaboration history is cleared
- Repeating project background, work rules, personal habits — extremely inefficient
- Scattered, incomplete handoff content causes new AI misunderstanding and rework
- Historical pitfalls and taboo rules cannot persist, leading to repeated mistakes

---

## ✨ Overview

IRY (I Remember You) is a cross-session, cross-instance AI context memory migration and task handover Skill, designed to solve the information gap caused by switching AI assistants, resetting sessions, or changing models.

This tool supports standardized, lossless migration of full-context information from old AI sessions — including user profile, project state, work habits, historical experience, and risk taboos — to new AI sessions, **achieving zero repeated explanation and seamless work continuation**.

---

## 💡 Product Philosophy

The biggest inefficiency in daily AI usage: switching AI = re-explaining everything.

After switching sessions or models, you need to repeatedly explain project background, personal communication style, business rules, taboo operations, and past lessons learned — wasting enormous time and communication cost.

IRY's core philosophy: make every AI handoff a complete memory continuation. After the new AI loads the handoff package, it fully inherits all historical context, truly realizing the continuous collaboration experience of "I Remember You".

**Platform support**: WorkBuddy / 百度搭子 / Claude Projects / GPTs / Any AI platform (trigger after reading Skill file)

---

## ⚙️ Core Capabilities

IRY adopts a standardized **7-step handoff workflow + 9 type-formatted questions + half-finished tolerance + feedback loop** multi-check mechanism, ensuring migrated content is complete, accurate, and usable.

Migratable core information includes but is not limited to:

- **User personal profile**: Communication habits, preference style, work requirements, personal norms
- **Project global state**: Project background, current progress, pending tasks, phase goals
- **Technical spec**: Tech stack, core architecture, key dependencies
- **Dependencies & constraints**: Environment limits, privacy handling, compliance requirements
- **Decision log**: Key decisions, selection rationale, historical route
- **Historical experience**: Past collaboration experience, effective work methods, execution standards
- **Risk taboo records**: Forbidden operations, avoidance rules, historical pitfalls, taboo boundaries

**Deliverables**: 10 standardized files (`00-Project-Overview.md` ~ `09-Handover-Checklist.md`), covering full-context.

---

## 🎯 Core Value

Completely solve information asymmetry and context fragmentation in AI cross-session handoffs. Through human-AI dual-layer quality control loops, eliminate missing, incomplete, or incorrect handoff items, allowing new AI to directly continue original work without secondary user explanation or repeated follow-up questions.

---

## 🚀 Usage Effect

**One handoff, full inheritance.** The new AI fully undertakes all memories and work states from the old session, achieving seamless work continuation, stable collaboration, and zero repeated communication.

**Half-finished works too.** Scan auto-detects missing items; memory pack uses `[暂缺]` to mark, no fabrication, no fake padding.

---

## 📌 Slogan

- **English**: New AI remembers everything about you and your old AI
- **Chinese**: 新 AI 记得你和老 AI 所有的事情

---

## Trigger Words

Chinese trigger words are listed above. English triggers include: `IRY`, `I Remember You`, `pass the baton`, `seamless AI handoff`, `transfer project context`, `pick up where I left off`, `task handover`, `AI context migration`, `project transition`, `hand over to new AI`.

---

## 7-Step Workflow

### Step A: Confirm intent

AI outputs "Start IRY?" → User replies A/B.

### Step B: Confirm project

- Q1: Project name
- Q2: Project path
- Confirm then proceed

**Hybrid design**: with scan capability → smart recommend 2-4 projects; without → manual input.

### Step B5: Privacy confirm (mandatory before scan)

- A: No sensitive info, normal scan
- B: Yes, specify folders to mask
- C: Cancel scan, end flow

### Step C: Scan & analyze project

AI scans three things:
- **Type**: skill / web / miniapp / system
- **Size**: small / medium / large
- **Phase**: planning / dev / maintenance

**Auto-detect missing items**: README / .git / config / env docs / tests.

**Scan failure fallback**: prompt user to correct path, rescan.

### Step D: Determine depth

- **Lite** — 1-2 summary paragraphs
- **Standard** (recommended) — full structured content
- **Deep** — Standard + architecture diagrams / data flow / security audit appendices
- **Custom** — user checks which files to generate

### Step E: Adaptive questioning (9 questions × fixed types)

| # | Type | Topic | Maps to |
|---|------|-------|---------|
| Q1 | Single | Project phase | 03 State & Plan |
| Q2 | Single | Urgency | 01 User DNA + 09 Handover Checklist |
| Q3 | Single | Tech stack | 02 Technical Spec |
| Q4 | Multi | Risks/blockers | 05 Known Issues + 04 Constraints |
| Q5 | Multi | External deps | 04 Dependencies & Constraints |
| Q6 | Multi | Pre-knowledge | 00 Project Overview + 09 Handover Checklist |
| Q7 | T/F | Runnable? | 07 Setup Guide |
| Q8 | T/F | Docs complete? | 06 File Index |
| Q9 | Open | Supplementary | Distributed by content |

**Each question ends with optional note (≤50 chars)** for uncovered details.

### Step F: Generate memory pack

10 standard files + file header timestamps + missing item markers.

### Step G: Deliver + feedback

- Deliver to desktop
- Guide user to record feedback

---

## Core Design Principles

1. **Hybrid scan**: smart recommend if capable, manual input if not
2. **Privacy first**: must ask before scan, no naked run
3. **Single-step interaction**: ask 1 question at a time, immediate STOP after output
4. **Visible progress**: progress bar per step, scan feedback in sub-steps
5. **Half-finished tolerance**: auto-mark missing items, memory pack uses `[暂缺]`
6. **Adjustable depth**: Lite/Standard/Deep/Custom, user decides
7. **Feedback loop**: auto-check `feedback.md` on each trigger, prioritize P0
8. **Clear roles**: transfer-AI leads handover, receive-AI reads pack, user verifies
9. **Timestamp traceability**: all files have generation time, supports version comparison

---

## Installation & Usage

1. Place `SKILL.md` in your AI platform's skill directory
2. Say a trigger word (e.g., "IRY", "I Remember You", "task handover")
3. The AI auto-detects and executes the 7-step workflow
4. Users only make multiple-choice selections + optional notes
5. Delivery package outputs to desktop by default

### Platform Compatibility

| Platform | Capability |
|----------|-----------|
| WorkBuddy | ✅ Full: file scan, disk write, progress feedback |
| 百度搭子 | ✅ Basic: conversation generation, text output |
| Claude Projects | ✅ Basic: conversation generation, text output |
| GPTs | ✅ Basic: conversation generation, text output |
| Any AI platform | ✅ Reads this file and recognizes trigger words |

---

## Package Structure

```
{project-name}-IRY-handoff-package-{timestamp}/
├── 00-Project-Overview.md       (Project Overview)
├── 01-User-DNA.md               (User DNA)
├── 02-Technical-Spec.md         (Technical Specification)
├── 03-State-Plan.md             (State & Plan)
├── 04-Dependencies-Constraints.md
├── 05-Known-Issues.md
├── 06-File-Index.md
├── 07-Setup.md
├── 08-Decision-Log.md
└── 09-Handover-Checklist.md
```

---

## Tech Stack

- Markdown (primary format)
- UTF-8 encoding
- Cross-platform: WorkBuddy / 百度搭子 / Claude / GPTs / General AI

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| V3.0 | 2026-06-23 | **Major refactor**: 7-step flow / privacy-first / scan progress bar / half-finished tolerance / 9 type-formatted questions / 10-file structure / timestamps |
| V2.4 | 2026-06-23 | Flow refactor (confirm project → choose mode → execute) |
| V2.3 | 2026-06-23 | README restructure: pain points first, added product philosophy/core capabilities/usage effect sections |
| V2.2 | 2026-06-23 | Renamed: 移魂大法 → IRY (I Remember You), added creative story |
| V2.1 | 2026-06-23 | Fixed naming leftovers, Q3 modal select, trigger confirmation, deepened Q4-Q7 causality, platform fallback, JSON template |
| V2.0 | 2026-06-23 | Role renaming, causality rebuild, responsibility reshuffle, Step 3 choices, 09 guide, 3-way rollback |
| V1.0 | 2026-06-23 | Initial release |

---

## Feedback Loop

Usage feedback is recorded in `feedback.md`. The tool auto-checks it on next trigger for continuous improvement.

---

## 📌 Slogan

- **English**: New AI. It still remembers you.
- **中文**: 换新 AI，它依然记得你。
