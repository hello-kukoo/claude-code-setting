#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - Qwen3 供应商"
echo "📍 API地址: https://dashscope.aliyuncs.com/apps/anthropic"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-qwen.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://dashscope.aliyuncs.com/apps/anthropic"
export ANTHROPIC_AUTH_TOKEN=$ALIYUNCS_API_KEY
export ANTHROPIC_MODEL="qwen3.5-plus"
export ANTHROPIC_SMALL_FAST_MODEL="qwen-flash"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="qwen3.5-plus"
export ANTHROPIC_DEFAULT_SONNET_MODEL="qwen3.5-plus"
export ANTHROPIC_DEFAULT_OPUS_MODEL="qwen3-max-2026-01-23"

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude --dangerously-skip-permissions
