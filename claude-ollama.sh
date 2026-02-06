#!/bin/bash

# 彩色输出，看着舒服
echo "🚀 正在启动 Claude Code - Ollama 供应商"
echo "📍 API地址: http://localhost:11434
echo "⏰ 启动时间: $(date)"

echo "----------------------------------------"

# cp ~/.claude/settings-zhipu.json ~/.claude/settings.json

export API_TIMEOUT_MS=3000000
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC="1"
export ANTHROPIC_LOG="error"

export ANTHROPIC_BASE_URL="http://localhost:11434"
export ANTHROPIC_AUTH_TOKEN=""
export ANTHROPIC_MODEL="mychen76/gemma3_cline_roocode_qat:12b"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="mychen76/gemma3_cline_roocode_qat:12b"
export ANTHROPIC_DEFAULT_OPUS_MODEL="mychen76/gemma3_cline_roocode_qat:12b"
export ANTHROPIC_DEFAULT_SONNET_MODEL="mychen76/gemma3_cline_roocode_qat:12b"
export ANTHROPIC_SMALL_FAST_MODEL="mychen76/gemma3_cline_roocode_qat:12b"
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1

# 启动Claude Code
# --dangerously-skip-permissions 参数用于跳过权限检查
claude --dangerously-skip-permissions

