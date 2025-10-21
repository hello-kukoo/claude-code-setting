---
description: Summarize each day's reading and combine it into a weekly summary.
category: personal-utility
allowed-tools: Read, Grep, Glob, TodoWrite
---

Perform a comprehensive and useful summarize on each day's readings and put it together into a weekly summary.

## Process:

1. Get year and week from the current date.

2. move all the .md files (exclude the `README.md`) in current directory to `W{week}` directory. If the directory does not exist, create it first.

3. summarize each .md files in `W{week}` directory and get the original web URL (if it has) from the .md file

4. append each summary and the original URL into `{year}年_第{week}周_阅读周报.md` file

5. move `{year}年_第{week}周_阅读周报.md` file into `weekly_report` directory

6. move W{week} directory into {year} directory. If the {year} directory not exist, create it first

## Example Usage:

- `/gen-weekly-sum` - gen weekly summary
