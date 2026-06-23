# AI记忆转移 AI→AI 任务无缝交接神器

> **无脑交接，无缝衔接，免去后顾之忧**

---

## 简介

AI记忆转移是一个 AI→AI 任务交接工具，通过**5 步流程 + 7 道因果问答 + QC 质检 + 人工抽检**，将移交 AI 的上下文（用户画像、项目状态、经验、雷区）无损迁移至接收 AI，确保接收 AI 无需追问即可开工。

**核心价值**：解决 AI 任务交接时的信息不对称问题——通过人机协同 + 质检循环，让新 AI 无缝接手。

**解决痛点**：信息转移时因缺项、漏项导致的交接不顺畅、不全面。

---

## 触发词

### 中文（8 个）

| 触发词 | 适用场景 |
|--------|---------|
| `AI记忆转移` | 懂产品的人直接触发 |
| `AI任务交接神器` | 理解产品定位的人 |
| `AI任务交接` | 不懂 IP 但懂场景 |
| `项目无缝交接` | 覆盖通用场景 |
| `上下文转移` | 遇到上下文丢失的人 |
| `接手任务` | 自然语言触发 |
| `任务中断了怎么办` | 自然语言触发 |
| `换AI怎么接手` | 自然语言触发 |

### English（8 trigger words）

| Trigger | When to use |
|---------|------------|
| `pass the baton` | Idiom-based direct trigger |
| `seamless AI handoff` | Describes the product |
| `transfer project context` | Context loss scenario |
| `pick up where I left off` | Idiom-based natural trigger |
| `task handover` | General scenario |
| `AI context migration` | Technical scenario |
| `project transition` | Project management scenario |
| `hand over to new AI` | Natural language trigger |

---

## 5 步流程

### Step 1：人工确认（7 道因果题）

每道题的答案都落地影响后续行为：

| 问题 | 影响范围 |
|------|---------|
| Q1 任务确认 | 决定 Q3 扫描范围 + Step 2 搜索路径 |
| Q2 隐私授权 | 决定 Step 2 搜索策略 + 脱敏方案 |
| Q3 文件范围 | 决定被扫描的文件集合 |
| Q4 信息基准时间 | 决定 01/03/06 的时间标注 |
| Q5 版本策略 | 决定文件版本标注 |
| Q6 转移格式 | 决定文件模板结构（.md/.txt/.json） |
| Q7 交付地址 | 决定落盘位置 + 源文件清理策略 |

### Step 2：AI 生成（对话中展示，不落盘）

移交 AI 在对话中生成 8 个核心文件：

| # | 文件 | 内容 |
|---|------|------|
| 00 | 启动指令.md | 接收 AI 阅读指引 + [VERIFICATION] 强制输出 |
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

### Step 4：最终交付（移交 AI 收尾）

确认后一次性写入磁盘 + 生成 `09-后一步操作说明.md`，移交 AI 工作结束。

### Step 5：人工抽检（人 → 接收 AI）

用户自拟 1 个项目相关问题，红绿灯判分：

| 检查项 | 🟢 通过 | 🔴 打回 |
|--------|--------|--------|
| 定位 | 精确到文件:行号 | 泛泛而谈 |
| 雷区 | 准确复述禁忌 | 模糊承诺 |
| 任务 | 下一步具体可验收 | 宏大叙事 |

**打回原因三选一**：A. 信息遗漏 / B. 表述不清 / C. 接收 AI 没认真读

---

## 核心设计原则

1. **傻瓜式交互**：用户全程只做选择题，无需组织语言
2. **强依赖关系**：后一步严格依赖前一步输出，禁止跳跃
3. **QC Loop**：最多 3 次质检循环
4. **人工抽检**：不限制次数，相信用户判断
5. **权责分离**：
   - 移交 AI：Step 1-3 完成交接包后告一段落
   - 人：确认、传包、测试打分
   - 接收 AI：读包深度学习、接收测试
6. **因果链全覆盖**：每个问题的答案都决定后续的搜索范围、内容侧重和权限策略

---

## 安装与使用

1. 将 `AI记忆转移 AI→AI任务无缝交接神器.md` 放入 AI 平台的 Skill 目录
2. 在对话中说出触发词（如「AI记忆转移」「AI任务交接」）
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
{项目名}-AI记忆转移交接包-{执行时间}/
├── 00-启动指令.md        （接收 AI 启动指令）
├── 01-User-DNA.md        （用户 DNA）
├── 02-Project-Spec.md    （项目规格）
├── 03-State-Plan.md      （状态与计划）
├── 04-Constraints.md     （约束条件）
├── 05-Known-Bugs.md      （已知 Bug）
├── 06-File-Index.md      （文件索引）
├── 07-Setup.md           （环境配置）
├── 08-补充项.md          （如有，QC Loop 中补充）
└── 09-后一步操作说明.md   （移交 AI 收尾后操作指引）
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
| V2.1 | 2026-06-23 | 修复残留命名，Q3 填空改弹窗，触发确认机制，Q4-Q7 因果链加深，落盘兜底，JSON 模板 |
| V2.0 | 2026-06-23 | 角色标准化，因果链重建，权责重划，Step 3 选择题化，09 操作说明，打回三选一 |
| V1.0 | 2026-06-23 | 初始版本 |

---

## 反向训练

使用者反馈记录在 `feedback.md`，下次触发时自动检查，持续改进。

---

---

# MemoryTransfer — Seamless AI-to-AI Task Handoff Tool

> **Hand off without worry. Pick up without questions.**

---

## Overview

MemoryTransfer (literally "Memory Transfer") is a standardized AI-to-AI task handoff tool. It uses a **5-step workflow + 7 causally-linked questions + QC loop + human spot check** to migrate context (user profile, project state, experience, landmines) from the transferring AI to the receiving AI — ensuring the receiving AI can start working immediately without asking follow-up questions.

**Core value**: Solve information asymmetry in AI task handoffs through human-AI collaboration and quality control loops.

**Pain points**: Incomplete or inaccurate context transfer, missing dependencies, unclear project state.

---

## Trigger Words

Chinese trigger words are listed above. English triggers include: `pass the baton`, `seamless AI handoff`, `transfer project context`, `pick up where I left off`, `task handover`, `AI context migration`, `project transition`, `hand over to new AI`.

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

1. Place `AI记忆转移 AI→AI任务无缝交接神器.md` in your AI platform's skill directory
2. Say a trigger word (e.g., "pass the baton", "task handover")
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
{project-name}-MemoryTransfer-handoff-package-{execution-time}/
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
| V2.1 | 2026-06-23 | Fixed naming leftovers, Q3 modal select, trigger confirmation, deepened Q4-Q7 causality, platform fallback, JSON template |
| V2.0 | 2026-06-23 | Role renaming, causality rebuild, responsibility reshuffle, Step 3 choices, 09 guide, 3-way rollback |
| V1.0 | 2026-06-23 | Initial release |

---

## Feedback Loop

Usage feedback is recorded in `feedback.md`. The tool auto-checks it on next trigger for continuous improvement.
