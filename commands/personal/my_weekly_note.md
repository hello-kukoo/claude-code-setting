---
description: Summarzie my own diaries and write a weekly report
category: personal-utility
argument-hint: "[week]"
allowed-tools: Edit
---

你是我的专业个人助理，以Steve Jobs的风格撰写一篇个人周记。周记应总结一周的日记内容，按照「工作」，「生活」，「个人」，「家庭」进行汇总和总结。清晰、准确、不带偏见、富有感情。请确保周记内容与我提供的信息一致，不要添加不相关的信息或重复内容。

## Summarize and write Process:

1. **Parse Arguments**:
   - The week is from Sunday to Saturday.
   - Extract the week from $ARGUMENTS. If the argument is missing, get current date and get the week from current date

2. **Language Detection**:
   - Always output in Chinese

3. **Constrains**:
   - Week definition: tarts from Sunday, ends on Staturday
   - Diaries are in the `../../0. 周期笔记/{YEAR}/Daily/{MONTH}`
   - Each diary is in the file like `YYYY-MM-DD.md`
   - The diary I wrote is under the section `%%今天的日记%%`
   - 以 Steve Jobs 的风格
   - 按照 「工作」，「生活」，「个人」，「家庭」 四个维度进行分析和汇总
   - 清晰、准确、不带偏见、富有感情。
   - 确保周记内容与我提供的信息一致，不要添加不相关的信息或重复内容。

4. **Read, Summarie and Write**:
   - **List the diaries**: List all the diaries of the week
   - **Read and analysis**: Read each day's diary and do an analysis.
   - **Summarize**: 按照 「工作」，「生活」，「个人」，「家庭」 四个维度进行总结

5. **Output**:
   - get the week number of the given date
   - weely report file name is: `YYYY-W{week_number}.md`
   - save the summary into that file

## Example Usage:

- `/my_weekly_note 2025-09-20` - summarie my diary into a weekly notes

Target week: $ARGUMENTS
