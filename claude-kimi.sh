#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - Kimi 供应商"
echo "📍 API地址: https://kimi.moonshot.cn/api"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-kimi.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://api.moonshot.cn/anthropic"
export ANTHROPIC_AUTH_TOKEN=$MOONSHOT_API_KEY
export ANTHROPIC_MODEL="kimi-k2-thinking"
export ANTHROPIC_SMALL_FAST_MODEL="kimi-k2-turbo-preview"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="kimi-k2-turbo-preview"
export ANTHROPIC_DEFAULT_SONNET_MODEL="kimi-k2-thinking"
export ANTHROPIC_DEFAULT_OPUS_MODEL="kimi-k2-thinking"


# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude --dangerously-skip-permissions
