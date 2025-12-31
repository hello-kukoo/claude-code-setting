---
description: Perform web page analysis and generate a comprehensive report
category: personal-utility
argument-hint: "[url]"
allowed-tools: WebSearch, WebFetch, Bash(curl), Edit
---

Perform a comprehensive and useful summarize on the specified web page.

## Summarize Process:

1. **Language Detection**:
   - Always output in Chinese

2. **Comprehensive summarizer**:
   - use @web-report-generator agent to provide a comprehensive summary for the content from $ARGUMENTS

3. **Output**:
  - think about a file name
  - save the url and the summary into this file

## Example Usage:
- `/goblin url` - summarize the url

Target url: $ARGUMENTS
