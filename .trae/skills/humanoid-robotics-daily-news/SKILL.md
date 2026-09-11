---
name: "humanoid-robotics-daily-news"
description: "Generates a standardized Markdown daily news report on global humanoid robotics (hardware, VLA/control, sim tools, deployments, academic papers), verifies sources, and pushes it to the Git repo. Invoke when asked to produce the humanoid robotics daily news/report."
---

# Humanoid Robotics Daily News

Produce a standardized Chinese-language Markdown daily report on global humanoid-robotics developments and push it to the repository's `main` branch. This skill encodes the full SOP plus hard-won pitfalls (date drift, overwriting existing reports, stale-news traps).

## When to Use

- User asks to generate / update the humanoid robotics daily news (人形机器人行业每日资讯).
- A scheduled task triggers this report.
- User asks to "run the daily news SOP" or "推送人形机器人日报".

## Step 0 — Date & File Safety (DO THIS FIRST)

**Always confirm the real current date before naming anything:**

```bash
TZ=Asia/Shanghai date "+%Y-%m-%d %H:%M"
```

Hard rules:
1. **File name uses TODAY's Beijing date**, not the date of the latest news, not the date of any pre-existing file.
2. **Never overwrite an existing date file.** Check first: `ls daily-news/`. If `<today>-humanoid-robotics-news.md` already exists, either update it intentionally (user asked) or choose the correct date. If a *previous day's* file exists, leave it untouched.
3. Report header `收集时间` must reflect the actual run time.

> Pitfall seen in practice: an earlier run inherited the date of a pre-existing file and silently overwrote the previous day's report. Always verify with `date` + `ls`, and never assume the filename in the repo is today's.

## Step 1 — Retrieval (8 rounds: 4 Chinese + 4 English)

Use `firecrawl_search` (fall back to `tavily_search` if rate-limited/429):

1. 中文产业综合：人形机器人 + 最新发布/量产/融资
2. 中文企业动态：宇树/优必选/智元/傅利叶/乐聚/逐际动力 + 新品/公告
3. 英文产业综合：humanoid robot + new launch / production / funding
4. 英文企业动态：Tesla Optimus / Figure / Boston Dynamics / 1X / Agility / Apptronik + news
5. 中文学术动态：人形机器人 + 论文/研究/突破
6. 英文学术动态：humanoid robotics + paper / arXiv / ICRA / IROS / CoRL
7. 中文核心技术：人形执行器 / 灵巧手 / VLA模型 + 发布/开源
8. 英文技术方案：humanoid actuator / VLA / sim-to-real + new technology / open source

After the initial 8, run 1–3 **follow-up searches scoped to the exact target date window** (e.g. "… 9月10日 9月11日") to surface same-day items the generic queries miss.

Useful indexing sources: `papers.cool/arxiv/cs.RO`, `arxiv.org/list/cs.RO/recent`, `therobotreport.com/tag/Humanoid`, vendor official newsrooms, PRNewswire.

## Step 2 — Filter & Deduplicate

- **Time window**: prefer ≤24h; extend to ≤48h only for high-value content. State the window in the summary.
- **Relevance**: only humanoid-robotics topics (see scope below); exclude general LLM/AI news, industrial arms, vacuums, drones, service robots.
- **Dedup**: one entry per event; prefer 官方公告 > 权威行业媒体 > 综合科技媒体.
- **Quality**: drop press-release fluff with no technical detail.

Scope (include): humanoid body hardware (cooling, power electronics, e-skin, actuators, dexterous hands, sensors, joints); algorithms/control (locomotion, VLA, Diffusion Policy, WBC/MPC, tactile, world models); tools/sim (Isaac Lab, MuJoCo, ROS 2, sim-to-real, open-source); industry (production, deployment, contracts, funding); academic (ICRA/IROS/CoRL/RSS/Humanoids/NeurIPS/RA-L/T-RO/Science Robotics).

## Step 3 — Verify (scrape originals)

- Scrape the original for every technical/product item; **never write a summary from a headline alone**.
- Extract quantitative params: DoF, control frequency, model params, success rate, payload, production volume, deployment scale.
- Label stage explicitly: 已量产部署 / 试点测试 / 规划中 / 实验室阶段. If params are undisclosed, write 「具体参数暂未公开」 — never invent.
- **Stale-news trap**: search results frequently mix in items from the *same calendar day of a previous year*. Confirm the year in the article body/source metadata before including. If the URL or text implies an older year, discard.

## Step 4 — Rank & Select

Order by: 技术突破性 > 企业影响力 > 商业落地价值 > 时效性. Target 8–10 items. Quality over quantity — if fewer than 8 qualify, report the real count and explain in the summary.

## Step 5 — Write the Report

Path: `daily-news/<YYYYMMDD>-humanoid-robotics-news.md`

```markdown
# 人形机器人行业每日资讯 - YYYY年MM月DD日

> 收集时间：YYYY-MM-DD HH:MM（北京时间）
> 资讯数量：X条 | 国内X条 | 国外X条 | 学术X条

---

## 1. [标题（保留原文语言，可补中文译名）]
**分类**：产品发布 / 技术发布 / 技术突破
**摘要**：1句话中文概括（主体 + 核心动作 + 关键结果）
**来源**：[来源机构名称](原文URL)
**发布时间**：YYYY-MM-DD
**相关企业/机构**：主体全称
**技术亮点**：（技术类必填）
- 2-3个要点，含具体量化参数
- 明确技术/产品所处阶段
- 相比行业主流方案的核心提升

---

## 简要总结
- 3-5条结构化要点，提炼当日趋势、最具价值方向、产业特征
```

## Step 6 — Push to Git (no PR)

```bash
cd <repo-root>
git status --short                 # inspect first
# If there are uncommitted changes, commit them (or stash) before rebasing.
git pull origin main --rebase      # SOP requires pulling latest first
git add daily-news/<YYYYMMDD>-humanoid-robotics-news.md
git commit -m "docs: 新增YYYY-MM-DD人形机器人行业每日资讯"
git push origin main
```

Operational notes:
- The repo may require a Git identity. If commit fails with "Author identity unknown", set a repo-local identity (`git config user.email/user.name`) — **never** `--global`.
- HTTPS push may fail with "could not read Username". Use the sandbox-provided credential from the environment (e.g. `GH_TOKEN`) inline in the push URL. **Never write credentials into any file or commit.**
- On a rebase conflict over the same file, keep the current run's content (per SOP) but re-check the date rule.
- If push is impossible, output the full Markdown in chat and mark 「GitHub推送失败，内容已生成」.

## Step 7 — Self-Check

- [ ] All items within the ≤48h window; publish dates accurate and year-verified.
- [ ] No general-AI / non-humanoid content.
- [ ] Every technical item carries concrete quantitative params (or an explicit "not disclosed" note).
- [ ] Stage (mass-production / pilot / planned / lab) is stated where relevant.
- [ ] Markdown well-formed.
- [ ] File name = today's Beijing date; path = `daily-news/`; previous days' files untouched.
- [ ] Pushed to `main`; report the file path + commit ID.

## Common Pitfalls

| Pitfall | Guard |
|---|---|
| Wrong date in filename (inherits an existing file's date) | Run `date` first; never derive the date from repo files |
| Overwriting the previous day's report | `ls daily-news/` before writing; only touch today's file |
| Including a same-day-but-previous-year news item | Verify the year in the article body before quoting |
| Fabricated parameters | Only cite numbers found in the scraped original; else mark 未公开 |
| Push auth failure | Use env-provided credential inline; never persist it |
| Rebase blocked by dirty tree | Commit or stash before `git pull --rebase` |
