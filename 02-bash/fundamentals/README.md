<p align="center">
  <img width="850" alt="Linux Banner" src="https://github.com/user-attachments/assets/d957d75d-4ed3-4005-966b-cd62e315b794" />
</p> 

# Bash Fundamentals

![OS](https://img.shields.io/badge/OS-Linux-blue?logo=linux)
![Script](https://img.shields.io/badge/Script-Bash-blue?logo=gnubash)
![Focus](https://img.shields.io/badge/Focus-Scripting%20Fundamentals-purple?logo=gnubash)

This folder contains my core **Bash fundamentals** notes focused on practical Bash scripting workflows.

Each topic focuses on understanding **how Bash works**, not just memorising syntax or commands.

Examples are practical, script-focused, and tied to real-world automation and DevOps usage.

---

## Topics Covered

- [Introduction to Bash](./01-introduction.md)  
  What Bash is, how it fits into Linux, and why it matters for automation.

- [Writing Your First Script](./02-writing-first-script.md)  
  Script structure, execution order, and basic automation patterns.

- [The Shebang Line](./03-shebang.md)  
  How Linux selects interpreters and why the shebang matters.

- [Comments](./04-comments.md)  
  Documenting intent and improving script readability.

- [Running Scripts](./05-running-scripts.md)  
  Executable permissions, PATH, and running scripts from anywhere.

- [Variables](./06-variables.md)  
  Assignment, expansion, quoting, and common pitfalls.

- [Script Parameters](./07-parameters.md)  
  Positional arguments, argument handling, and validation.

- [Arithmetic Expansion](./08-arithmetic-expansion.md)  
  Performing calculations safely in Bash.

- [Conditionals](./09-conditionals.md)  
  Decision-making using exit codes and test expressions.

- [Loops](./10-loops.md)  
  Repeating operations with `for` and `while` loops.

- [Functions](./11-functions.md)  
  Structuring scripts and reducing duplication.

- [User Input](./12-user-input.md)  
  Reading and validating user input.

- [Piping and Redirection](./13-piping-and-redirection.md)  
  `stdin`, `stdout`, `stderr`, pipes, and data flow.

- [Exit Codes](./14-exit-codes.md)  
  Error handling and exit codes in scripts and pipelines.

- [Shell Options (`set`)](./15-set-options.md)  
  Writing safer scripts with strict execution modes.

- [Environment Variables & PATH](./16-environment-and-path.md)  
  Environment inheritance and command discovery.

- [Working with Files](./17-working-with-files.md)  
  File checks, safe reads/writes, and defensive scripting.

---

## Learning Focus

- Learn why Bash behaves the way it does, not just how to write scripts
- Use Bash the way it is used in production environments
- Understand failure modes and defensive scripting patterns
- Build a strong foundation for CI/CD pipelines, Dockerfiles, and cloud automation
