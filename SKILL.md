---
name: iry
description: AI 记忆转移 & 任务交接神器。将老AI的上下文（用户画像、项目状态、经验、雷区）无损迁移至新AI，通过人机协同与质检循环，确保新AI无需追问即可无缝衔接开工。
description_en: AI Memory Transfer & Task Handover Kit. Migrates old AI context (user profile, project status, experience, pitfalls) to new AI losslessly. Human-AI collaboration with QC loop ensures seamless handover without follow-up questions.
trigger_phrases:
  - "IRY"
  - "IRY (我记得你)"
  - "AI任务交接"
  - "记忆转移"
  - "换AI怎么接手"
agent_created: true
---

# IRY (I Remember You)｜AI 记忆转移 & 任务交接 Skill

> **Slogan**：换新 AI，它依然记得你 / New AI. It still remembers you.

---

# ⚡ 执行指令（AI 绝对遵守）

> **⚠️ 核心铁律（违反此条 IRY 就会失效）：**
> **AI 每输出一条信息/问题后，必须立即 STOP，等待用户回复。**
> 用户回复后才能开始下一步。
> **严禁**：一次性输出多个问题 / 跳过追问直接生成 / 在用户回复前做任何事。

**正确的行为**：
```
IRY → 输出「确认启动？」→ ⏸️ STOP → 用户说「是」
→ 输出 Q1 → ⏸️ STOP → 用户回复
→ 输出 Q2 → ⏸️ STOP → 用户回复
→ ...
```

---

## Step A：确认意图（立即执行，只做这一步）

```
🔔 IRY (我记得你) — 检测到触发词！
是否启动记忆转移流程？

A. ✅ 是，立即启动
B. ❌ 否，取消
```

**⏸️ 输出后立刻停止。用户回复后，才能进入下一步。**

---

## Step B：逐一追问（用户选 A 后才开始）

**规则：每次只问 1 个问题。问完 → ⏸️ STOP → 等回复 → 再问下一个。**

| # | 问题 | 行为 |
|---|------|------|
| Q1 | 要将哪个 AI 的记忆转移给哪个 AI？ | 输出 → ⏸️ 等回复 |
| Q2 | 当前任务是什么？进度如何？ | 输出 → ⏸️ 等回复 |
| Q3 | 有哪些经验教训或踩坑需要传递？ | 输出 → ⏸️ 等回复 |
| Q4 | 有没有不能触碰的雷区或禁忌？ | 输出 → ⏸️ 等回复 |
| Q5 | 沟通风格偏简洁还是详细？ | 输出 → ⏸️ 等回复 |
| Q6 | 是否有敏感信息需要脱敏？ | 输出 → ⏸️ 等回复 |
| Q7 | 希望新 AI 先处理哪个任务？ | 输出 → ⏸️ 等回复 |
| Q8 | 还有其他补充吗？ | 输出 → ⏸️ 等回复 |

---

## Step C：收集完后，生成记忆包

8 个问题全部完成后，生成：
1. 用户画像总结
2. 项目状态快照
3. 经验教训清单
4. 雷区预警清单

---

## Step D：交付

输出记忆包 → **⏸️ STOP** → 等用户确认后再结束。

---

## 产品理念

IRY = **I Remember You**（我记得你）

这不是工具名，是一句承诺：**当你换了新的 AI 助手，它依然记得你和老 AI 之间的一切。**

就像换了手机，联系人、照片、聊天记录全部同步过来——IRY 做的就是这件事，只不过同步的对象是 **AI 的记忆**。

---

## 核心能力

| 能力 | 说明 |
|------|------|
| 用户画像转移 | 沟通风格、表达习惯、偏好设置 |
| 项目状态快照 | 当前任务进度、待办事项、阻塞点 |
| 经验库迁移 | 踩过的坑、解决方案、最佳实践 |
| 雷区预警 | 绝对不能做的事、历史错误记录 |
| 无缝衔接 | 新 AI 无需追问即可直接开工 |

---

## 使用方式

1. 将此 Skill 文件放入 WorkBuddy 的 skills 目录
2. 或在对话中说「IRY」「任务交接」「记忆转移」等触发词
3. 按照 Skill 内置的 10 步 SOP 流程执行

---

## 详细文档

完整的使用说明、SOP 流程、问答模板请查看同目录下的：
- **README.md** — 完整产品文档
- **feedback.md** — 反向训练反馈模板
- **IRY (我记得你) AI记忆转移任务交接神器.md** — 完整 10 步 SOP

---

## 版本信息

- **当前版本**: V2.4
- **品牌**: IRY (I Remember You)
- **原名称**: 移魂大法（已废弃）
- **GitHub**: https://github.com/firecangshu/project-handover-kit
