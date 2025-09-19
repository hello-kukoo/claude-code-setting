---
description: Perform comprehensive web page analysis
category: web-summarizer-testing
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
   - **Overall summary**Start with a overall summary in a single paragraph
   - **Most interesting illustrative quotes**: Then show a bullet pointed list of the most interesting illustrative quotes from the piece
   - **Longer summary**: Finally provide a longer summary that covers points not included already

4. **Generate Report**:
   - **Report**: Generate a detailed report with all the information gathered during the summarization process
   - **Format**: markdown
   - **Length**: Ensure the report is no longer than 1000 characters
   - **Template**:

   ### 整体总结：
   {Overall summary}
   ### 精彩引文摘录：
   - quotes 1
   - quotes 2
   ### 详细内容概述：
   {Longer summary}

## Example Usage:
- `/web_summarizer url` - summarie the url

Target url: $ARGUMENTS
