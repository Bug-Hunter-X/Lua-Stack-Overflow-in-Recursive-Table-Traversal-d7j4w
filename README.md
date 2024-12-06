# Lua Stack Overflow Bug

This repository demonstrates a common Lua bug involving stack overflow errors in recursive functions that traverse tables.  The `bug.lua` file contains a function that recursively iterates through a table.  If the table contains cycles (a table referencing itself), or is excessively deep, the function will cause a stack overflow.

The `bugSolution.lua` file provides a solution that prevents this by tracking visited tables and avoiding cycles.