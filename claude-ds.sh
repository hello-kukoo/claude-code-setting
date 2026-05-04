#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - Deepseek 供应商"
echo "📍 API地址: https://api.deepseek.com/anthropic"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-ds.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://api.deepseek.com/anthropic"
export ANTHROPIC_AUTH_TOKEN=$DEEPSEEK_API_KEY
export ANTHROPIC_MODEL="deepseek-v4-pro"
export ANTHROPIC_SMALL_FAST_MODEL="deepseek-v4-flash"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="deepseek-reasoner"
export ANTHROPIC_DEFAULT_SONNET_MODEL="deepseek-v4-pro"
export ANTHROPIC_DEFAULT_OPUS_MODEL="deepseek-v4-pro"

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude --dangerously-skip-permissions
