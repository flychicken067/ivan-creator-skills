# Ivan Creator Skills

Two small, verifiable Agent Skills for creators. This repository has a clean public history and contains no employer or customer material.

## Ivan Human UI

Diagnoses why a generated interface feels generic, applies explicit visual constraints, and reports observable verification instead of claiming that it was “polished.”

Use it for landing pages, dashboards, high-fidelity prototypes, and presentation-style product sections.

## Ivan Skill Value Cover

![Ivan Skill Value Cover](plugins/ivan-skill-value-cover/skills/ivan-skill-value-cover/assets/skill-cover-16x9-v2.png)

Turns an abstract `SKILL.md` into a scene-based cover that shows one real user, the input before using the Skill, and the result they can take away. Unsupported claims remain visible as placeholders.

Use it for marketplace cards, detail pages, launch posts, and creator documentation.

## Claude Code

```text
/plugin marketplace add flychicken067/ivan-creator-skills
/plugin install ivan-human-ui@ivan-creator-skills
/plugin install ivan-skill-value-cover@ivan-creator-skills
```

Each plugin is isolated under `plugins/<plugin-name>` and follows Claude Code's marketplace layout.

## OpenAI Codex

Use `$skill-installer` with one public Skill directory:

```text
https://github.com/flychicken067/ivan-creator-skills/tree/main/plugins/ivan-human-ui/skills/ivan-human-ui
https://github.com/flychicken067/ivan-creator-skills/tree/main/plugins/ivan-skill-value-cover/skills/ivan-skill-value-cover
```

Restart the session after installation, then explicitly invoke `$ivan-human-ui` or `$ivan-skill-value-cover` for the first test.

## WorkBuddy

Download the corresponding ZIP from the latest GitHub Release. In WorkBuddy Desktop, open **Experts · Skills · Connectors → Skills → Add Skill → Upload Skill**. Inspect the package before enabling automatic installation and use a redacted sample first.

## First external test

Use the [10-minute creator test](docs/10-MINUTE-CREATOR-TEST.zh-CN.md). A real tester means someone who installed a package, ran a redacted example, and left a locatable result—not someone who only viewed or downloaded it.

## Evidence boundary

- Marketplace validation proves package structure, not output quality.
- Installation proves a harness accepted the package, not that every request succeeds.
- Covers and mockups explain value; they are not runtime evidence.
- Do not submit employer, customer, credential, or non-public product material. See [SECURITY.md](SECURITY.md).

## License

MIT
