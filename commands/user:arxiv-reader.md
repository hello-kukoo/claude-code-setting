---
description: Perform arxiv paper summarize and provide a comprehensive report
category: personal-utility
argument-hint: "[#]"
allowed-tools: WebSearch, WebFetch, Bash(curl), Edit
---

# Summarize arxiv paper

**Command**: `/user:arxiv-reader`

Perform a comprehensive and useful summarize on the given arxiv paper.

## Workflow:

1. **Language Detection**:
   - Always output in Chinese

2. **Parse Arguments**:
   - Search and extract the paper for $ARGUMENTS

3. **Comprehensive summarizer**:
   - use @paper-reader agent to provide a comprehensive summary for the content for $ARGUMENTS

4. **Output**:

- think about a file name
- save the url and the summary into this file

## Example Usage:

- `/arxiv-reader 2509.06216` - summarize the arxiv paper 2509.06216

Target url: $ARGUMENTS
