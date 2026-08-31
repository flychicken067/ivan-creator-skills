# 10 分钟创作者试跑

这不是体验问卷。目标是让一位没有参与开发的 Skill 创作者，在 10 分钟内完成：安装、一次脱敏运行、留下可定位反馈。

## 你需要准备什么

- 一个你自己写的、可以公开或已经脱敏的 `SKILL.md`；或
- 一个你正在制作、但看起来像 AI 模板的 HTML 页面。

不要上传公司账号、客户资料、密钥、未发布产品数据或内部文档。

## 选择一个 Skill

### A. Skill Value Cover

适合：已经写好 Skill，但别人看不懂“输入什么、最后拿走什么”。

第一次任务：

```text
Use Ivan Skill Value Cover on this SKILL.md.
Use one concrete creator, show the real input before using it and the result after using it.
Do not draw a process PPT. Mark every unsupported claim as a placeholder.
```

通过标准：

- 同一个人物贯穿使用前后；
- 输入和输出能一眼区分；
- 没有虚构用户数、销量、评分或节省时间；
- 能指出仍缺少哪些证据。

### B. Ivan Human UI

适合：已有网页或高保真原型，但层级混乱、卡片堆叠、像通用 AI 模板。

第一次任务：

```text
Review this page with Ivan Human UI.
First identify the three issues that most harm comprehension.
Improve them without replacing the product structure or inventing product behavior.
Finally report the changed files and the visible verification result.
```

通过标准：

- 先诊断，再改动；
- 没有把原产品改成另一套工作台；
- 能列出文件和可见变化；
- 关键图片、按钮和正文通过可见性检查。

## 安装

### Claude Code

```text
/plugin marketplace add flychicken067/ivan-creator-skills
/plugin install ivan-human-ui@ivan-creator-skills
/plugin install ivan-skill-value-cover@ivan-creator-skills
```

### Codex

在 Codex 中调用 `$skill-installer`，安装对应公开目录：

```text
https://github.com/flychicken067/ivan-creator-skills/tree/main/plugins/ivan-human-ui/skills/ivan-human-ui
https://github.com/flychicken067/ivan-creator-skills/tree/main/plugins/ivan-skill-value-cover/skills/ivan-skill-value-cover
```

### WorkBuddy

下载对应 Release ZIP，进入 **专家·技能·连接器 → 技能 → 添加技能 → 上传技能**。首次不要勾选自动安装，先检查 `SKILL.md`、脚本、权限和文件列表。

## 只记录五项

1. 平台和版本；
2. 安装是否成功；
3. 脱敏输入；
4. 实际输出或失败位置；
5. 你原本期望什么。

提交反馈：

https://github.com/flychicken067/ivan-creator-skills/issues/new?template=skill-feedback.yml

## 作者如何判断下一步

- 安装失败：先修分发结构，不优化宣传图。
- 能安装但不触发：改 `description` 和示例任务。
- 能触发但输出泛化：补输入约束、反例和验收标准。
- 输出达标但没人愿意再次使用：问题在任务频率或价值，不是封面。

完成一次试跑才算 1 位真实测试者；浏览 README、点赞和下载 ZIP 都不算。
