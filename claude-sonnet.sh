#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - kkapi.cc Claude 供应商"
echo "📍 API地址: https://kkapi.cc"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-sonnet.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://kkapi.cc"
export ANTHROPIC_AUTH_TOKEN=$ANTHROPIC_CLAUDE_KEY
export ANTHROPIC_MODEL="claude-sonnet-4-5-20250929"
export ANTHROPIC_SMALL_FAST_MODEL="claude-sonnet-4-5-20250929"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="claude-sonnet-4-5-20250929"
export ANTHROPIC_DEFAULT_SONNET_MODEL="claude-sonnet-4-5-20250929"
export ANTHROPIC_DEFAULT_OPUS_MODEL="claude-opus-4-1-20250805"


# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude --dangerously-skip-permissions
