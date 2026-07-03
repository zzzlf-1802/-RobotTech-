#!/bin/bash
set -e

REPO_DIR="/workspace"
cd "$REPO_DIR"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 开始自动推送流程..."

git checkout main

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 拉取最新代码..."
git pull origin main --rebase

if git status --porcelain | grep -q .; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 发现新变更，开始提交..."
    git add .
    COMMIT_MSG="feat: 每日资讯自动更新 $(date '+%Y-%m-%d')"
    git commit -m "$COMMIT_MSG"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 推送到 origin/main..."
    git push origin main
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 推送成功！"
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 没有新变更，无需推送"
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 流程完成"
