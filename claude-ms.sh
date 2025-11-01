#!/bin/bash

# 打印一些提示信息，让你知道切换成功了
echo "🚀 正在启动 Claude Code - ModelScope GLM-4.6"
echo "📍 API地址: https://api-inference.modelscope.cn"
echo "⏰ 启动时间: $(date)"
echo "----------------------------------------"

# cp ~/.claude/settings-ds.json ~/.claude/settings.json

export ANTHROPIC_BASE_URL="https://api-inference.modelscope.cn"
export ANTHROPIC_AUTH_TOKEN=$MODELSCOPE_API_KEY
export ANTHROPIC_MODEL="ZhipuAI/GLM-4.6"
export ANTHROPIC_SMALL_FAST_MODEL="ZhipuAI/GLM-4.6"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="ZhipuAI/GLM-4.6"
export ANTHROPIC_DEFAULT_SONNET_MODEL="ZhipuAI/GLM-4.6"
export ANTHROPIC_DEFAULT_OPUS_MODEL="ZhipuAI/GLM-4.6"

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
# 我踩过坑，有些供应商不加这个会报错
claude --dangerously-skip-permissions
