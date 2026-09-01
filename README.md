<div align="center">

# Ivan Creator Skills

**把“AI 做过了”变成别人一眼能看懂、愿意安装的成品。**

两款可验证的 Agent Skills：一款修掉界面的 AI 模板感，一款把抽象 Skill 变成有使用场景、有前后差异的价值封面。

[![License: MIT](https://img.shields.io/badge/License-MIT-111111.svg)](LICENSE)
[![Skills](https://img.shields.io/badge/Skills-2-f24b18.svg)](#两款-skill)
[![Claude Code](https://img.shields.io/badge/Claude_Code-ready-111111.svg)](#安装)
[![OpenAI Codex](https://img.shields.io/badge/OpenAI_Codex-ready-111111.svg)](#安装)
[![YouMind](https://img.shields.io/badge/YouMind-600K%2B_creators-111111.svg)](#为什么现在发布)

[立即安装](#安装) · [看前后对比](#01--ivan-human-ui) · [10 分钟实测](docs/10-MINUTE-CREATOR-TEST.zh-CN.md) · [下载 ZIP](https://github.com/flychicken067/ivan-creator-skills/releases/latest)

</div>

---

## 不是更多提示词，而是两种可复用的交付能力

| 你遇到的问题 | 安装后的结果 |
| --- | --- |
| 页面能用，但像套模板：全部居中、颜色漂移、卡片堆叠、缺少真实证据 | `ivan-human-ui` 诊断具体问题，按明确约束修改，并留下可核验结果 |
| Skill 很有用，但封面只有图标或抽象插画，别人看不出为什么要装 | `ivan-skill-value-cover` 把人物、输入、处理和可带走的结果放进同一张价值封面 |

## 两款 Skill

### 01 · Ivan Human UI

> 让生成式界面从“能跑”走到“像人认真做过”。

它不会只说“更高级一点”。它会指出可以直接修改的结构、字体、颜色、间距、边框、截图和交互问题，完成修改后再用评分与资产检查决定是否交付。

| 使用前：模板感明显 | 使用后：层级清楚、证据可见 |
| --- | --- |
| <img src="docs/assets/human-ui-before.png" alt="Ivan Human UI 使用前：居中模板、混乱间距和失效截图" width="560"> | <img src="docs/assets/human-ui-after.png" alt="Ivan Human UI 使用后：非对称层级、统一节奏和真实截图" width="560"> |

**适合：** 落地页、仪表盘、高保真原型、产品展示页、演示型网页。

**交付：** 精确代码修改、逐区 Before → After 理由、图片完整性检查、0–10 分质量评估。

[查看 Skill 原文](plugins/ivan-human-ui/skills/ivan-human-ui/SKILL.md) · [查看验证案例](plugins/ivan-human-ui/skills/ivan-human-ui/references/eval-results.md)

### 02 · Ivan Skill Value Cover

> 不解释方法论，先让人看见“装之前”和“装之后”。

它从 `SKILL.md` 或使用说明中提取真实用户、具体输入、关键处理和可用结果，同时生成 1:1 市场缩略图与 16:9 详情封面。没有证据的数字、品牌和结果不会被偷偷补上。

<p align="center">
  <img src="docs/assets/skill-value-cover.png" alt="Ivan Skill Value Cover 场景化价值封面" width="900">
</p>

**适合：** YouMind Skill 市场、GitHub README、发布帖、详情页与团队内部技能目录。

**交付：** 人物明确、输入可见、结果具体的双尺寸封面，以及可追溯的文案边界。

[查看 Skill 原文](plugins/ivan-skill-value-cover/skills/ivan-skill-value-cover/SKILL.md) · [查看案例规则](plugins/ivan-skill-value-cover/skills/ivan-skill-value-cover/references/examples.md)

## 安装

### OpenAI Codex

```bash
npx skills add flychicken067/ivan-creator-skills --skill ivan-human-ui
npx skills add flychicken067/ivan-creator-skills --skill ivan-skill-value-cover
```

重启会话后，第一次测试时明确调用 `$ivan-human-ui` 或 `$ivan-skill-value-cover`。

### Claude Code

```text
/plugin marketplace add https://github.com/flychicken067/ivan-creator-skills.git
/plugin install ivan-human-ui@ivan-creator-skills
/plugin install ivan-skill-value-cover@ivan-creator-skills
```

### WorkBuddy / Doubao Workmates

从 [最新 Release](https://github.com/flychicken067/ivan-creator-skills/releases/latest) 下载对应 ZIP，再在 Skills 页面选择上传。启用前先检查包内容，并只用脱敏样例测试。

## 30 秒判断它值不值得装

1. 找一张你认为“能用但很像 AI”的页面截图，运行 `ivan-human-ui`。
2. 找一份别人看不懂价值的 `SKILL.md`，运行 `ivan-skill-value-cover`。
3. 只检查三件事：问题是否具体、前后差异是否明显、交付结果是否可继续使用。

完整脚本见 [10 分钟创作者测试](docs/10-MINUTE-CREATOR-TEST.zh-CN.md)。

## 为什么现在发布

YouMind 官网目前展示 **600K+ 创作者、3M+ 创作、70+ 国家和地区、20K+ 社区 Skills**。这说明 Skill 已经不是个人提示词收藏，而是在进入可搜索、可安装、可复用的创作者市场。

> 数据来源：[YouMind 官方首页「YouMind in numbers」](https://youmind.com/)，核验日期：2026-09-01。数字是平台公开口径，不代表本仓库的安装量或用户量。

本项目当前公开入口是 GitHub。YouMind 与 Doubao Workmates 中的个人版本是否能被其他用户搜索，取决于对应平台的公开审核与上架状态；本仓库不会把“个人已安装”写成“公开已发布”。

## 可验证，不夸大

- Marketplace 校验只证明包结构可被识别，不代表每种请求都成功。
- 安装只证明平台接受了 Skill，不代表输出质量已经得到外部用户验证。
- 封面与原型负责解释价值，不冒充真实运行证据。
- 仓库不包含雇主、客户、凭证或非公开产品资料；详见 [SECURITY.md](SECURITY.md)。

## License

MIT。素材来源与第三方使用说明见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。

<div align="center">

**先让一个陌生人看懂，再让一百个人安装。**

[开始 10 分钟实测](docs/10-MINUTE-CREATOR-TEST.zh-CN.md)

</div>
