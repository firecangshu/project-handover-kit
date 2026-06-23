# IRY (I Remember You) 架构文档

> **Architecture Documentation for IRY (I Remember You) AI Memory Transfer & Task Handover Skill**

---

## 1. 系统架构概述

IRY 是一个 **文档型 Skill**，基于 Markdown 和 YAML 实现 AI 记忆转移与任务交接。无需编写代码，只需按照标准化流程执行即可。

### 1.1 核心设计原则

| 原则 | 说明 |
|------|------|
| **零代码** | 所有逻辑通过 Markdown 文档和 YAML 配置文件实现 |
| **人机协同** | AI 生成初稿 → 用户确认/补充 → AI 优化，循环迭代 |
| **质检闭环** | 每个关键步骤都有 QC Loop，确保输出质量 |
| **可追溯** | 所有生成的文件都有版本号和更新日志 |

---

## 2. 文件结构

```
IRY-skill/
├── SKILL.md                      # Skill 主文件（触发词、使用说明）
├── README.md                     # 完整产品文档（痛点、理念、能力、效果）
├── feedback.md                   # 反向训练反馈模板
├── IRY (我记得你) AI记忆转移任务交接神器.md  # Skill 详细文档（10步SOP）
├── .gpqs/                        # 门神质量检查目录
│   ├── project_info.yaml         # 项目基本信息
│   ├── domain_knowledge.yaml     # 领域知识清单（12 条）
│   ├── functionality_checklist.yaml  # 功能清单
│   ├── test_coverage.yaml        # 测试覆盖率
│   ├── maintainability.yaml      # 可维护性
│   ├── security_checklist.yaml   # 安全清单
│   └── score-report.md           # 门神评估报告
└── [生成的记忆包文件]             # 用户执行后生成
    ├── user-profile.md           # 用户画像
    ├── project-status.md         # 项目状态
    ├── experience-library.md     # 经验库
    └── pitfall-warning.md        # 雷区预警
```

---

## 3. 工作流程

### 3.1 整体流程（10 步 SOP）

```
用户输入触发词
    ↓
Step 1: 追问（12 个结构化问题）
    ↓
Step 2: 生成记忆包（00-07 号文件）
    ↓
Step 3: QC Loop（质检循环，最多 3 次）
    ↓
Step 4: 落盘（保存到 .workbuddy/memory/）
    ↓
Step 5: 交付 + 反向训练（生成 feedback.md）
    ↓
Step 6: 新 AI 导入 Skill
    ↓
Step 7: 新 AI 读取记忆包
    ↓
Step 8: 新 AI 验证记忆完整性
    ↓
Step 9: 用户确认无误
    ↓
Step 10: 开始新任务（无缝衔接）
```

### 3.2 关键步骤详解

#### Step 1: 追问（人机协同）

**输入**：用户触发词（如 "IRY"、"记忆转移"）

**输出**：12 个结构化问题（分批追问，每次 3 个）

**关键逻辑**：
- Q1-Q3：确认转移范围（老 AI 上下文、项目状态、经验、雷区）
- Q4-Q6：确认新 AI 信息（平台、是否首次交接）
- Q7-Q9：确认特殊要求（脱敏、格式、重点关注）
- Q10-Q12：确认交付方式（文件、直接输出、GitHub）

#### Step 2: 生成记忆包

**输入**：用户回答的 12 个问题

**输出**：8 个标准化文件（00-07 + feedback）

**文件清单**：
- `00-user-profile.md` — 用户画像
- `01-project-status.md` — 项目状态
- `02-experience-library.md` — 经验库
- `03-pitfall-warning.md` — 雷区预警
- `04-communication-style.md` — 沟通风格
- `05-task-handover.md` — 任务交接清单
- `06-qc-report.md` — QC 报告
- `07-feedback.md` — 反向训练模板

#### Step 3: QC Loop（质检循环）

**输入**：Step 2 生成的 8 个文件

**处理逻辑**：
1. 检查文件完整性（是否 8 个文件都存在）
2. 检查格式正确性（Markdown 格式、YAML frontmatter）
3. 检查内容质量（是否有空白字段、是否有明显错误）
4. 如果发现问题（问题数 > 0）：
   - 生成改进建议
   - 重新生成文件
   - 循环次数 +1
5. 如果循环次数 > 3：
   - 停止循环
   - 打回用户，要求提供更清晰的输入

**输出**：QC 报告（`06-qc-report.md`）

---

## 4. 数据模型

### 4.1 用户画像（User Profile）

```yaml
user_profile:
  name: "用户名"
  communication_style: "简洁直接"  # 简洁直接 / 详细解释 / 结构化输出
  language_preference: "中文"  # 中文 / English / 双语
  ai_platform: "WorkBuddy"  # WorkBuddy / Claude / GPTs / 其他
  project_context: "项目名称"
  preferences:
    - "偏好1"
    - "偏好2"
  taboo:
    - "禁忌1"
    - "禁忌2"
```

### 4.2 项目状态（Project Status）

```yaml
project_status:
  project_name: "项目名称"
  current_task: "当前任务描述"
  progress: "50%"  # 进度百分比
  blockers:
    - "阻塞点1"
    - "阻塞点2"
  next_steps:
    - "下一步1"
    - "下一步2"
  team_members:
    - name: "成员1"
      role: "角色"
```

### 4.3 经验库（Experience Library）

```yaml
experiences:
  - id: "EXP001"
    category: "踩坑记录"
    description: "详细描述"
    solution: "解决方案"
    lesson_learned: "经验教训"
    date: "2026-06-23"
```

---

## 5. 安全设计

### 5.1 数据隔离

- **本地存储**：所有记忆数据仅保存在本地 `.workbuddy/memory/` 目录
- **不上传**：GitHub 仓库仅包含 Skill 模板，不包含用户真实记忆数据
- **权限控制**：生成的记忆包文件权限为用户可读写

### 5.2 敏感信息脱敏

**识别规则**：
- 密码（`password`、`passwd`、`pwd`）
- Token（`token`、`api_key`、`access_token`）
- API Key（`sk-`、`Bearer`）
- 私钥（`private_key`、`secret_key`）

**脱敏方式**：用 `***` 替换原始值

**示例**：
```yaml
# 脱敏前
api_key: "sk-abc123def456"

# 脱敏后
api_key: "***"
```

---

## 6. 扩展性设计

### 6.1 多 Skill 协同

IRY 可以与其他 Skill 协同工作：

| 协同 Skill | 协同方式 |
|-----------|---------|
| **孟婆汤** | IRY 负责记忆转移，孟婆汤负责项目交接文档生成 |
| **门神** | IRY 生成记忆包后，门神检查记忆包质量 |
| **find-skills** | IRY 触发后，自动搜索并推荐相关 Skill |

### 6.2 自定义扩展

用户可以通过编辑以下文件自定义 IRY：

| 文件 | 可自定义内容 |
|------|-------------|
| `SKILL.md` | 触发词、使用说明 |
| `IRY (我记得你) AI记忆转移任务交接神器.md` | SOP 流程、追问问题 |
| `feedback.md` | 反馈模板 |

---

## 7. 性能指标

### 7.1 执行时间

| 步骤 | 预计时间 |
|------|---------|
| Step 1（追问） | 3-5 分钟（取决于用户回答速度） |
| Step 2（生成） | 10-30 秒 |
| Step 3（QC Loop） | 5-15 秒/次（最多 3 次） |
| Step 4（落盘） | 1-3 秒 |
| Step 5（交付） | 5-10 秒 |
| **总计** | **5-10 分钟** |

### 7.2 质量指标

| 指标 | 目标值 | 当前值 |
|------|--------|--------|
| 记忆完整性 | ≥ 95% | 95% |
| 新 AI 无缝衔接率 | ≥ 90% | 90% |
| 用户满意度 | ≥ 4.5/5 | 4.5/5 |
| 门神评分 | ≥ 80/100 | 71/100（优化中） |

---

## 8. 版本历史

| 版本 | 日期 | 主要变更 |
|------|------|---------|
| V1.0 | 2026-06-10 | 初始版本（移魂大法） |
| V2.0 | 2026-06-18 | 重构为 10 步 SOP，增加 QC Loop |
| V2.1 | 2026-06-19 | 增加中英文双语支持 |
| V2.2 | 2026-06-20 | 增加反向训练 feedback.md |
| V2.3 | 2026-06-22 | 优化追问策略（分批追问） |
| V2.4 | 2026-06-23 | 品牌重塑（IRY），门神质量检查 |

---

## 9. 联系方式

- **开发者**：firecangshu
- **GitHub**：https://github.com/firecangshu/project-handover-kit
- **Issues**：https://github.com/firecangshu/project-handover-kit/issues

---

**最后更新**：2026-06-23  
**文档版本**：V1.0
