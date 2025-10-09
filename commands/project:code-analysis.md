---
description: Perform comprehensive code analysis with quality metrics and recommendations
category: specialized-domains
argument-hint: "[file-or-directory-path]"
allowed-tools: Read, Grep, Glob, TodoWrite
---

# Comprehensive Code Analysis

**Command**: `/project:code-analysis`

Perform a comprehensive code analysis on the specified files or directory. If no path is provided, analyze the current working directory.

## Analysis Process:

1. **Parse Arguments**:
   - Extract the path from $ARGUMENTS (defaults to current directory if not specified)
   - Determine scope: single file, multiple files, or entire directory

2. **Language Detection**:
   - Identify programming language(s) based on file extensions
   - Apply language-specific analysis rules

3. **Code Quality Analysis**:
   - **Complexity Metrics**: Cyclomatic complexity, nesting depth, function length
   - **Code Smells**: Long methods, large classes, duplicate code patterns
   - **Best Practices**: Naming conventions, code organization, documentation
   - **Security Issues**: Common vulnerabilities, unsafe patterns, input validation
   - **Performance**: Inefficient algorithms, memory leaks, blocking operations
   - **Maintainability**: Code coupling, cohesion, test coverage indicators

4. **Generate Report**:
   - Summary with overall health score
   - Detailed findings by category
   - Priority-ranked issues (High/Medium/Low)
   - Specific file and line references
   - Actionable recommendations for improvement

5. **Track with TodoWrite**:
   - Create todos for high-priority issues found
   - Organize by fix complexity and impact

## Example Usage:

- `/code-analysis` - Analyze entire current directory
- `/code-analysis src/` - Analyze all code in src directory
- `/code-analysis app.js` - Analyze specific file
- `/code-analysis "src/**/*.py"` - Analyze all Python files in src

Target path: $ARGUMENTS
