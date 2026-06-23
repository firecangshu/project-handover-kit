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

本工具支持将旧 AI 会话中的用户画像、项目状态、工作习惯、历史经验、风险雷区等全量上下文信息，标准化无损迁移至新 AI 会话，**实现零重复解释、无缝接续工作**。

---

## 💡 产品理念

日常使用 AI 最大的低效痛点：换 AI = 重新讲一遍所有事情。

更换会话或新模型后，需要反复复述项目背景、个人沟通风格、业务规则、禁忌操作、过往踩坑经验，极大浪费时间与沟通成本。

IRY 的核心理念：让每一次 AI 交接，都有完整的记忆延续。新 AI 加载交接数据包后，可完整继承全部历史上下文，真正实现「我记得你」的连续协作体验。

**支持平台**：WorkBuddy / Claude Projects / GPTs / 任意 AI 平台（读取 Skill 文件即可触发）

---

## ⚙️ 核心能力

IRY 采用标准化 **5 步交接流程 + 7 道因果校验问答 + 自动化 QC 质检 + 人工抽检复核**的多重校验机制，保障迁移内容完整、准确、可用。

可迁移核心信息包含但不限于：

- **用户个人画像**：沟通习惯、偏好风格、工作要求、个人规范
- **项目全局状态**：项目背景、当前进度、待办任务、阶段目标
- **历史经验沉淀**：过往协作经验、有效工作方法、执行标准
- **风险雷区记录**：禁止操作、规避规则、历史踩坑、禁忌边界

**交付物**：8 个标准化文件（`00-启动指令.md` ~ `07-Setup.md` + `09-操作指引.md`），覆盖全量上下文。

---

## 🎯 核心价值

彻底解决 AI 跨会话交接中的信息不对称、上下文断裂问题。通过人机协同双层质检闭环，杜绝交接缺项、漏项、错项，让新 AI 无需用户二次解释、无需重复追问，直接接续原有工作。

---

## 🚀 使用效果

**一次交接，全量继承。** 新 AI 完整承接旧会话所有记忆与工作状态，实现无缝续工、稳定协作、零重复沟通。

---

## 📌 Slogan

- 中文：**新 AI 记得你和老 AI 所有的事情**
- English：**New AI remembers everything about you and your old AI**

---

## 📝 调整说明

- 页头新增英文 Slogan 作为引语，符合 GitHub 开源项目排版惯例，第一眼传递核心定位
- 痛点章节前置并更名为「背景与痛点」，开门见山抛出问题，匹配技术用户"先看解决什么，再看是什么"的阅读路径
- 所有原始内容完整保留，无信息删减，仅优化章节顺序与衔接逻辑，整体读感更顺滑
- 收尾放置完整中英文 Slogan，结构上首尾呼应，同时不影响正文信息的扫读效率

---

## 触发词

### 中文（9 个）

| 触发词 | 类型 | 适用场景 |
|--------|------|---------|
| `IRY` | 强关联（IP 词） | 懂产品的人直接触发 |
| `I Remember You` | 强关联（英文名） | 理解产品定位的人 |
| `我记得你` | 强关联（中文意译） | 中文用户 |
| `AI任务交接神器` | 强关联（描述词） | 理解产品定位的人 |
| `AI任务交接` | 弱关联（通用） | 不懂 IP 但懂场景 |
| `项目无缝交接` | 弱关联（通用） | 覆盖通用场景 |
| `上下文转移` | 问题导向 | 遇到上下文丢失的人 |
| `接手任务` | 问题导向 | 自然语言触发 |
| `任务中断了怎么办` | 问题导向 | 自然语言触发 |

### English（9 trigger words）

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

---

## 🌐 全局规则

以下规则适用于整个交接流程：

1. **进度条**：每步开始时，AI 输出文字进度条：`进度：Step X/5，当前：Step X - {状态描述}...`
2. **触发确认**：任何触发词命中后，AI 先弹窗确认「是否启动 IRY (我记得你)？A. 是 / B. 否」，防止误触发
3. **取消选项**：每步的 AskUserQuestion 都包含「取消交接」选项
4. **取消清理**：用户选择取消后，已生成的文件由用户决定是否保留
5. **错误处理**：任何步骤失败 → 输出错误信息 → 询问用户「重新生成？」OR「放弃交接程序」
6. **跨会话续接**：每次触发都从头开始（不保留上次进度）
7. **文件编码**：所有交付包文件强制 UTF-8
8. **大文件处理**：单文件 > 10MB → 只记录路径不复制内容，额外生成 `大文件清单.txt`

---

## 5 步流程

### Step 1：人工确认（7 道因果题）

每道题的答案都落地影响后续行为：

| 问题 | 影响范围 |
|------|---------|
| Q1 任务确认 | 决定 Q3 扫描范围 + Step 2 搜索路径 |
| Q2 隐私授权 | 决定 Step 2 搜索策略 + 脱敏方案 | 选 B 时追问脱敏范围（密码/个人信息/商业机密） |
| Q3 文件范围 | 决定被扫描的文件集合 | 选 C 时弹窗（当前文件夹/其他文件夹/取消） |
| Q4 信息基准时间 | 决定 01/03/06 的时间标注 | 选 B 时弹窗（前一天/上一周/指定日期） |
| Q5 版本策略 | 决定文件版本标注 | 选 B 时弹窗（v1.0/v2.0/其他版本） |
| Q6 转移格式 | 决定文件模板结构（.md/.txt/.json） | 影响模板排版密度 |
| Q7 交付地址 | 决定落盘位置 + 源文件清理策略 | 回答后追问是否清理敏感副本 |

### Step 2：AI 生成（对话中展示，不落盘）

移交AI 在对话中生成 8 个核心文件：

**生成顺序**（有依赖关系，严格按序）：
1. `00-启动指令.md`（固定文本，无需依赖）
2. `01-User-DNA.md`（凭记忆，先写，接收AI 优先读）
3. `02-Project-Spec.md`（扫描 + 记忆，需先确认项目名）
4. `03-State-Plan.md`（扫描 + 记忆，依赖项目路径）
5. `04-Constraints.md`（依赖 Q2 答案和 01-03 内容）
6. `05-Known-Bugs.md`（凭记忆，独立）
7. `06-File-Index.md`（需先扫描完毕所有文件）
8. `07-Setup.md`（扫描 + 记忆，最后收尾）

**进度反馈**：每生成 2-3 个文件输出一次进度（如「文件 3/8：03-State-Plan.md 已完成」）

| # | 文件 | 内容 |
|---|------|------|
| 00 | 启动指令.md | 接收AI 阅读指引 + [VERIFICATION] 强制输出 |
| 01 | User-DNA.md | 用户风格、纠错习惯、3 条雷区 |
| 02 | Project-Spec.md | 项目名、路径、最终目的、技术栈 |
| 03 | State-Plan.md | 当前进度（文件:行号）、下一步任务 |
| 04 | Constraints.md | 隐私方案、限制条件 |
| 05 | Known-Bugs.md | 已知 Bug、踩坑清单 |
| 06 | File-Index.md | 核心文件索引 |
| 07 | Setup.md | 环境配置、依赖安装 |

> **信息源分级**：自动（有文件系统能力）→ 授权（需用户授权）→ 退级（用户手动提供）

### Step 3：清单校准（QC Loop）

用户确认清单是否完整，最多 3 次循环。

**QC Loop 计数器**：qc_count 初始为 0，每次循环 +1。达到 3 次时强制交付并标注风险。

### Step 4：最终交付（移交AI 收尾）

确认后一次性写入磁盘 + 生成 `09-下一步操作说明.md`，移交AI 工作结束。

**落盘兜底**：如果当前平台无文件系统写入权限（如 GPTs、Claude Projects），AI 改为在对话中输出所有文件内容，提示用户手动复制保存到本地。

### Step 5：人工抽检（人 → 接收AI）

用户自拟 1 个项目相关问题，红绿灯判分：

| 检查项 | 🟢 通过 | 🔴 打回 |
|--------|--------|--------|
| 定位 | 精确到文件:行号 | 泛泛而谈 |
| 雷区 | 准确复述禁忌 | 模糊承诺 |
| 任务 | 下一步具体可验收 | 宏大叙事 |

**打回原因三选一**：A. 信息遗漏 / B. 表述不清 / C. 接收AI 没认真读

**打回后逻辑**：
- A（信息遗漏）→ 补充 `08-补充项.md`，回 Step 3 → Step 4 → Step 5
- B（表述不清）→ 修改问题文件内容，回 Step 4 → Step 5
- C（接收AI 没认真读）→ 不修改文件，直接回到 Step 5，用户再问一题

**此循环不限制次数**（相信用户判断）

---

## 核心设计原则

1. **傻瓜式交互**：用户全程只做选择题，无需组织语言
2. **强依赖关系**：后一步严格依赖前一步输出，禁止跳跃
3. **QC Loop**：最多 3 次质检循环
4. **人工抽检**：不限制次数，相信用户判断
5. **权责分离**：
   - 移交AI：Step 1-3 完成交接包后告一段落
   - 人：确认、传包、测试打分
   - 接收AI：读包深度学习、接收测试
6. **因果链全覆盖**：每个问题的答案都决定后续的搜索范围、内容侧重和权限策略

---

## 安装与使用

1. 将 `IRY (我记得你) AI记忆转移任务交接神器.md` 放入 AI 平台的 Skill 目录
2. 在对话中说出触发词（如 `IRY`、`I Remember You`、`AI任务交接`）
3. AI 自动识别后按 5 步流程执行
4. 用户全程只需做选择题

### 平台支持

| 平台 | 能力 |
|------|------|
| WorkBuddy | ✅ 全功能：文件扫描、写入磁盘、弹窗交互 |
| Claude Projects | ✅ 基础功能：对话生成、文本输出 |
| GPTs | ✅ 基础功能：对话生成、文本输出 |
| 任意 AI 平台 | ✅ 读取本文件后即可识别触发词并使用 |

---

## 交付包结构

```
{项目名}-IRY交接包-{执行时间}/
├── 00-启动指令.md        （接收AI 启动指令）
├── 01-User-DNA.md        （用户 DNA）
├── 02-Project-Spec.md    （项目规格）
├── 03-State-Plan.md      （状态与计划）
├── 04-Constraints.md     （约束条件）
├── 05-Known-Bugs.md      （已知 Bug）
├── 06-File-Index.md      （文件索引）
├── 07-Setup.md           （环境配置）
├── 08-补充项.md          （如有，QC Loop 中补充）
└── 09-下一步操作说明.md   （移交AI 收尾后操作指引）
```

---

## 技术栈

- Markdown（核心文件格式）
- JSON Schema（Q6 选 JSON 时可选）
- 跨平台：WorkBuddy / Claude / GPTs / 通用 AI

---

## 版本历史

| 版本 | 日期 | 更新内容 |
|------|------|---------|
| V2.3 | 2026-06-23 | README 结构重构：痛点前置、新增产品理念/核心能力/使用效果章节 |
| V2.2 | 2026-06-23 | 重命名：移魂大法 → IRY (I Remember You)，增加创意说明 |
| V2.1 | 2026-06-23 | 修复残留命名，Q3 填空改弹窗，触发确认机制，Q4-Q7 因果链加深，落盘兜底，JSON 模板 |
| V2.0 | 2026-06-23 | 角色标准化，因果链重建，权责重划，Step 3 选择题化，09 操作说明，打回三选一 |
| V1.0 | 2026-06-23 | 初始版本 |

---

📌 Slogan

- 中文：**换新 AI，它依然记得你**
- English: **New AI. It still remembers you.**

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

IRY (I Remember You) is a cross-session, cross-instance AI context memory migration and task handover Skill, designed to solve the information断层 caused by switching AI assistants, resetting sessions, or changing models.

This tool supports standardized, lossless migration of full-context information from old AI sessions — including user profile, project state, work habits, historical experience, and risk taboos — to new AI sessions, **achieving zero repeated explanation and seamless work continuation**.

---

## 💡 Product Philosophy

The biggest inefficiency in daily AI usage: switching AI = re-explaining everything.

After switching sessions or models, you need to repeatedly explain project background, personal communication style, business rules, taboo operations, and past lessons learned — wasting enormous time and communication cost.

IRY's core philosophy: make every AI handoff a complete memory continuation. After the new AI loads the handoff package, it fully inherits all historical context, truly realizing the continuous collaboration experience of "I Remember You".

**Platform support**: WorkBuddy / Claude Projects / GPTs / Any AI platform (trigger after reading Skill file)

---

## ⚙️ Core Capabilities

IRY adopts a standardized **5-step handoff workflow + 7 causally-linked verification questions + automated QC loop + human spot check** multi-check mechanism, ensuring migrated content is complete, accurate, and usable.

Migratable core information includes but is not limited to:

- **User personal profile**: Communication habits, preference style, work requirements, personal norms
- **Project global state**: Project background, current progress, pending tasks, phase goals
- **Historical experience**: Past collaboration experience, effective work methods, execution standards
- **Risk taboo records**: Forbidden operations, avoidance rules, historical pitfalls, taboo boundaries

**Deliverables**: 8 standardized files (`00-bootstrap.md` ~ `07-Setup.md` + `09-Post-Handoff-Guide.md`), covering full-context.

---

## 🎯 Core Value

Completely solve information asymmetry and context fragmentation in AI cross-session handoffs. Through human-AI dual-layer quality control loops, eliminate missing, incomplete, or incorrect handoff items, allowing new AI to directly continue original work without secondary user explanation or repeated follow-up questions.

---

## 🚀 Usage Effect

**One handoff, full inheritance.** The new AI fully undertakes all memories and work states from the old session, achieving seamless work continuation, stable collaboration, and zero repeated communication.

---

## 📌 Slogan

- English: **New AI remembers everything about you and your old AI**
- Chinese: **新 AI 记得你和老 AI 所有的事情**

---

## 📝 Structure Notes

- Added English Slogan at the top as a lead quote, aligning with GitHub open-source project layout conventions, conveying core positioning at first glance
- Pain points section moved to front and renamed "Background & Pain Points", front-loading the problem to match technical users' reading path of "see what problem is solved first, then see what it is"
- All original content fully preserved, no information deleted, only optimized section order and transition logic for smoother reading
- Complete Chinese-English Slogan placed at the end, structurally echoing the beginning while not affecting the scanning efficiency of the main text

---

## Trigger Words

Chinese trigger words are listed above. English triggers include: `IRY`, `I Remember You`, `pass the baton`, `seamless AI handoff`, `transfer project context`, `pick up where I left off`, `task handover`, `AI context migration`, `project transition`.

---

## 5-Step Workflow

### Step 1: Human Confirmation (7 Causal Questions)

Each answer directly influences subsequent behavior:

| Question | Scope of Impact |
|----------|----------------|
| Q1 Task identity | Q3 scan scope + Step 2 search path |
| Q2 Privacy policy | Step 2 search strategy + sanitization |
| Q3 File scope | Files to be scanned |
| Q4 Info baseline time | Time annotations in files 01/03/06 |
| Q5 Version policy | Version annotations in files |
| Q6 Output format | Template structure (.md/.txt/.json) |
| Q7 Delivery path | Output location + cleanup strategy |

### Step 2: AI Generation (Conversation-only, no disk write)

The transferring AI generates 8 core files in the conversation:

| # | File | Content |
|---|------|---------|
| 00 | bootstrap.md | Reading guide + mandatory [VERIFICATION] output |
| 01 | User-DNA.md | Communication style, correction habits, 3 taboos |
| 02 | Project-Spec.md | Name, path, DoD, tech stack |
| 03 | State-Plan.md | Current progress, next steps |
| 04 | Constraints.md | Privacy handling, limitations |
| 05 | Known-Bugs.md | Bug list + lessons learned |
| 06 | File-Index.md | Core file registry |
| 07 | Setup.md | Environment config, dependencies |

> **Info source tiers**: Auto (filesystem access) → Authorized (user grants access) → Fallback (user provides manually)

### Step 3: QC Loop

User confirms completeness. Maximum 3 cycles.

### Step 4: Final Delivery (Transferring AI Wraps Up)

Write all confirmed files to disk in one batch + generate `09-post-handoff-guide.md`. The transferring AI's work ends here.

### Step 5: Human Spot Check (Human → Receiving AI)

User asks 1 project-related question and scores:

| Check | 🟢 Pass | 🔴 Fail |
|-------|---------|---------|
| Location | Exact file:line | Vague guess |
| Taboos | Accurate recall | Vague promise |
| Task | Concrete, verifiable next step | Grand vision |

**Fail reason triage**: A. Missing info / B. Unclear writing / C. AI didn't read carefully

---

## Core Design Principles

1. **Click-only UX**: Users only make choices, never write free-text
2. **Strong dependency chain**: Each step strictly depends on previous output
3. **QC Loop**: Max 3 cycles before forced delivery
4. **Spot Check**: Unlimited retries, trust the user
5. **Role separation**:
   - Transferring AI: Steps 1-3, done after package confirmation
   - Human: Confirm, transfer, test, score
   - Receiving AI: Read, deep learn, get tested
6. **Full causal chain**: Every answer determines subsequent scope, content, and permissions

---

## Installation & Usage

1. Place `IRY (我记得你) AI记忆转移任务交接神器.md` in your AI platform's skill directory
2. Say a trigger word (e.g., "IRY", "I Remember You", "task handover")
3. The AI auto-detects and executes the 5-step workflow
4. Users only make multiple-choice selections

### Platform Compatibility

| Platform | Capability |
|----------|-----------|
| WorkBuddy | ✅ Full: file scan, disk write, interactive modals |
| Claude Projects | ✅ Basic: conversation generation, text output |
| GPTs | ✅ Basic: conversation generation, text output |
| Any AI platform | ✅ Reads this file and recognizes trigger words |

---

## Package Structure

```
{project-name}-IRY-handoff-package-{execution-time}/
├── 00-bootstrap.md          (Receiving AI boot guide)
├── 01-User-DNA.md           (User profile)
├── 02-Project-Spec.md       (Project spec)
├── 03-State-Plan.md         (State & plan)
├── 04-Constraints.md        (Constraints)
├── 05-Known-Bugs.md         (Known bugs)
├── 06-File-Index.md         (File index)
├── 07-Setup.md              (Setup guide)
├── 08-Supplement.md         (If any, from QC Loop)
└── 09-Post-Handoff-Guide.md (Post-handoff instructions)
```

---

## Tech Stack

- Markdown (primary format)
- JSON Schema (when Q6=JSON)
- Cross-platform: WorkBuddy / Claude / GPTs / General AI

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
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
