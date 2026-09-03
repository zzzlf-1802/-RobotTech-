# 仓库推送与部署指引

## 环境说明

本仓库（`-RobotTech-`）部署在持久的远程沙箱中，工作目录 `/workspace`，分支 `main`，远程 `origin`。

## Git 推送配置（已修复）

**问题根因**：沙箱中 `git push` 报错 `could not read Username for 'https://github.com'`。原因是 git 本身不读取 gh CLI 的 `GH_TOKEN` 环境变量，且未配置任何 credential helper。

**解决方案**（已完成配置，全局持久生效）：

```bash
git config --global credential.helper '!gh auth git-credential'
git config --global user.name "zzzlf-1802"
git config --global user.email "535471138@qq.com"
```

原理：将 gh CLI（沙箱自带，已通过环境变量 `GH_TOKEN` 以 `zzzlf-1802` 账户登录）挂载为 git 的凭证助手。`GH_TOKEN` 由平台在每次会话自动注入，因此该配置长期有效，无需手动维护 token。

## 标准推送流程

```bash
cd /workspace
git pull origin main --rebase        # 拉取最新代码
# ... 生成/修改日报文件 ...
git add daily-news/<文件名>
git commit -m "docs: 新增YYYY-MM-DD人形机器人行业每日资讯"
git push origin main                 # 直接推送主分支
```

## 兜底方案

若 `git push` 再次因凭证问题失败（如 `GH_TOKEN` 失效或 credential helper 配置丢失），使用 GitHub MCP 工具直接写入远程仓库：

- 工具：`mcp_trae-remote-official_plugin_github_github` 服务的 `create_or_update_file`

- 参数：`owner=zzzlf-1802`，`repo=-RobotTech-`，`branch=main`，`path=daily-news/<文件名>`，`content=<完整Markdown内容>`，`message=<commit信息>`

- 更新已有文件时需提供该文件的 blob SHA（可用 `git rev-parse origin/main:<路径>` 获取）

## 环境自检（每次自动化执行前可选）

```bash
# 验证认证状态
gh auth status

# 验证 credential helper 配置存在
git config --global --get credential.helper
# 预期输出: !gh auth git-credential

# 若配置丢失，重新执行：
git config --global credential.helper '!gh auth git-credential'
```

## 冲突处理

- 若本地与远程历史分叉（如兜底方案在远程产生了本地没有的提交），先 `git pull origin main --rebase`；无法干净合并时以远程为准：`git fetch origin && git reset --hard origin/main` 后重新提交本次内容。

- 日报内容冲突时，以本次生成的最新内容为准覆盖。

