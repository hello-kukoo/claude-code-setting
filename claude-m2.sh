#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - MiniMax M2 供应商"
echo "📍 API地址: https://api.minimaxi.com/anthropic"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-ds.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://api.minimaxi.com/anthropic"
export ANTHROPIC_AUTH_TOKEN=$MINIMAX_API_KEY
export ANTHROPIC_MODEL="MiniMax-M2"
export ANTHROPIC_SMALL_FAST_MODEL="MiniMax-M2"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="MiniMax-M2"
export ANTHROPIC_DEFAULT_SONNET_MODEL="MiniMax-M2"
export ANTHROPIC_DEFAULT_OPUS_MODEL="MiniMax-M2"

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude --dangerously-skip-permissions
