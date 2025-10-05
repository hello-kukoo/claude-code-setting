#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - Qwen3 供应商"
echo "📍 API地址: https://dashscope-intl.aliyuncs.com/compatible-mode/v1"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-qwen.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://dashscope.aliyuncs.com/apps/anthropic"
export ANTHROPIC_AUTH_TOKEN=$ALIYUNCS_API_KEY
export ANTHROPIC_MODEL="qwen3-coder-plus-2025-09-23"
export ANTHROPIC_SMALL_FAST_MODEL="qwen3-coder-plus-2025-09-23"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="qwen3-coder-plus-2025-09-23"
export ANTHROPIC_DEFAULT_SONNET_MODEL="qwen3-coder-plus-2025-09-23"
export ANTHROPIC_DEFAULT_OPUS_MODEL="qwen3-coder-plus-2025-09-23"
export CLAUDE_CODE_MAX_OUTPUT_TOKENS="1048576"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC="1"
export ANTHROPIC_LOG="error"

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude
