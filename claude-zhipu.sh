#!/bin/bash

# 彩色输出，看着舒服
echo "🚀 正在启动 Claude Code - Z.ai GLM 供应商"
echo "📍 API地址: https://open.bigmodel.cn/api/coding/paas/v4"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-zhipu.json ~/.claude/settings.json

export API_TIMEOUT_MS=3000000
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC="1"
export ANTHROPIC_LOG="error"

export ANTHROPIC_BASE_URL="https://open.bigmodel.cn/api/anthropic"
export ANTHROPIC_AUTH_TOKEN=$ZAI_API_KEY
export ANTHROPIC_MODEL="glm-4.6"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="glm-4.6"
export ANTHROPIC_DEFAULT_OPUS_MODEL="glm-4.6"
export ANTHROPIC_DEFAULT_SONNET_MODEL="glm-4.6"
export ANTHROPIC_SMALL_FAST_MODEL="glm-4.6"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
claude --dangerously-skip-permissions


# https://api.z.ai/api/coding/paas/v4
# https://open.bigmodel.cn/api/coding/paas/v4
