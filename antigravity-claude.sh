#!/bin/bash

# 彩色输出，看着舒服
echo "🚀 正在启动 Claude Code - Gemini Antigravity 供应商"
echo "📍 API地址: http://127.0.0.1:8045"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"


export API_TIMEOUT_MS=3000000
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC="1"
export ANTHROPIC_LOG="error"

export ANTHROPIC_AUTH_TOKEN=$ANTIGRAVITY_API_KEY
export ANTHROPIC_BASE_URL="http://127.0.0.1:8045"
export ANTHROPIC_MODEL="claude-sonnet-4-5"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="claude-sonnet-4-5"
export ANTHROPIC_DEFAULT_OPUS_MODEL="claude-opus-4-5-thinking"
export ANTHROPIC_DEFAULT_SONNET_MODEL="claude-sonnet-4-5-thinking"
export ANTHROPIC_SMALL_FAST_MODEL="gemini-3-flash"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
claude --dangerously-skip-permissions
