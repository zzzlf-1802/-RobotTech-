#!/bin/bash
set -euo pipefail

REPO_DIR="/workspace"
cd "$REPO_DIR"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"; }

log "开始自动推送流程..."

# 确保在 main 分支
git checkout main 2>/dev/null || { log "ERROR: 无法切换到 main 分支"; exit 1; }

# 拉取远程最新代码（rebase 模式，冲突时以远程为准）
log "拉取最新代码..."
git fetch origin main
git rebase origin/main || {
    log "rebase 冲突，以远程为准覆盖..."
    git rebase --abort 2>/dev/null
    git reset --hard origin/main
}

# 检查是否有待提交变更
if ! git status --porcelain | grep -q .; then
    log "没有新变更，无需推送"
    log "流程完成"
    exit 0
fi

log "发现新变更，开始提交..."

# 只添加 daily-news 和 daily-study 目录，排除 .trae 等工作文件
git add daily-news/ daily-study/ 2>/dev/null || git add .
COMMIT_MSG="docs: 每日资讯自动更新 $(date '+%Y-%m-%d')"
git commit -m "$COMMIT_MSG"

# 推送前再次拉取，防止竞态条件
log "推送到 origin/main..."
git pull origin main --rebase 2>/dev/null || true

# 推送，带重试机制
MAX_RETRIES=3
for i in $(seq 1 $MAX_RETRIES); do
    if git push origin main 2>&1; then
        log "推送成功！"
        log "Commit: $(git rev-parse HEAD)"
        log "流程完成"
        exit 0
    fi
    log "推送失败(第${i}次)，拉取远程更新后重试..."
    git pull origin main --rebase 2>/dev/null || git reset --hard origin/main
done

log "ERROR: 推送失败，已重试 ${MAX_RETRIES} 次"
exit 1
