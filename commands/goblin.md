---
description: Perform web page analysis and generate a comprehensive report
category: specialized-domains
argument-hint: "[web-page-url]"
allowed-tools: WebSearch, WebFetch
---

Perform a comprehensive and useful summarize on the specified web page.

## Summarize Process:

1. **Parse Arguments**:
   - Extract the content from $ARGUMENTS

2. **Language Detection**:
   - Always output in Chinese

3. **Web page summarizer**:
   - **Overall summary**: Start with a overall summary in a single paragraph
   - **Key messages**: Then show a bullet pointed list of the key messages you find from the piece
   - **Most interesting illustrative quotes**: Then show a bullet pointed list of the most interesting illustrative quotes from the piece
   - **Longer summary**: Finally use @report-generator agent to provide a comprehensive summary

4. **Output**:
  - think about a file name
  - save the 'Overall summary', 'MOst interesting illustrative quotes' and 'Longer summary' into this file

## Example Usage:
- `/goblin url` - summarize the url

Target url: $ARGUMENTS
