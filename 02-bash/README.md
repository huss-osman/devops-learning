<img width="1000" height="500" alt="imageedit_4_2799565420" src="https://github.com/user-attachments/assets/1d9e4f50-68d6-42af-ae83-0d341785a2a2" />

# Bash Scripting

![OS](https://img.shields.io/badge/OS-Linux-blue?logo=linux)
![Script](https://img.shields.io/badge/Script-Bash-blue?logo=gnubash)
![Focus](https://img.shields.io/badge/Focus-Scripting%20Fundamentals-purple?logo=gnubash)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Bash scripting** through practical automation and shell scripting exercises.

Bash is the foundation of Linux automation. Nearly everything in DevOps including containers, CI/CD pipelines, cloud provisioning, and system automation relies on strong Bash scripting fundamentals.

The focus throughout this work is on understanding **how Bash behaves and executes**, not memorising syntax.

---

## 🧠 New to Bash Scripting? Read This First

- Bash scripting can feel confusing at first — that’s normal.
- Focus on **how Bash executes commands**, not just syntax.
- Break scripts intentionally to understand errors and behaviour.
- Use tools like `echo`, `chmod`, `grep`, and `set -x`.
- Revisit concepts multiple times through hands-on practice.

> [!IMPORTANT]
> If you don’t understand Bash scripting, automation becomes unpredictable and difficult to debug.

---

## Learning Objectives

By working through this module, I aimed to:

- Confidently write and execute Bash scripts
- Understand script execution flow and shell behaviour
- Use variables, parameters, and control structures correctly
- Handle errors and unexpected input safely
- Work with files, processes, and environment variables in scripts
- Apply Bash fundamentals through structured challenges and scripting exercises

---

## Topics Covered

### Fundamentals

- [Introduction to Bash](./fundamentals/01-introduction.md)  
  What Bash is, how it fits into Linux, and why it matters in DevOps.

- [Writing Your First Script](./fundamentals/02-writing-first-script.md)  
  Script structure, execution order, and basic automation.

- [The Shebang Line](./fundamentals/03-shebang.md)  
  How Linux chooses interpreters and why the shebang matters.

- [Comments](./fundamentals/04-comments.md)  
  Documenting intent and improving script maintainability.

- [Running Scripts](./fundamentals/05-running-scripts.md)  
  Executable permissions, PATH, and running scripts from anywhere.

- [Variables](./fundamentals/06-variables.md)  
  Assignment, expansion, quoting, and common pitfalls.

- [Script Parameters](./fundamentals/07-parameters.md)  
  Positional parameters, argument handling, and validation.

- [Arithmetic Expansion](./fundamentals/08-arithmetic-expansion.md)  
  Performing calculations safely in Bash.

- [Conditionals](./fundamentals/09-conditionals.md)  
  Decision-making using exit codes and test expressions.

- [Loops](./fundamentals/10-loops.md)  
  Repeating operations with `for` and `while` loops.

- [Functions](./fundamentals/11-functions.md)  
  Structuring scripts and reducing duplication.

- [User Input](./fundamentals/12-user-input.md)  
  Reading and validating input from users.

- [Piping and Redirection](./fundamentals/13-piping-and-redirection.md)  
  `stdin`, `stdout`, `stderr`, pipes, and data flow.

- [Exit Codes](./fundamentals/14-exit-codes.md)  
  Error handling and exit codes in scripts and pipelines.

- [Shell Options (`set`)](./fundamentals/15-set-options.md)  
  Writing safer scripts with strict execution modes.

- [Environment Variables & PATH](./fundamentals/16-environment-and-path.md)  
  Environment inheritance and command discovery.

- [Working with Files](./fundamentals/17-working-with-files.md)  
  File checks, safe reads/writes, and defensive scripting.

---

### Labs

- [Bash Practice](./labs/bash-practice)  
  Hands-on Bash scripting exercises focused on variables, loops, conditionals, and shell behaviour.

- [Bash Battle Arena (Levels 1–15)](./labs/bashbattlearena)  
  Progressive Bash scripting challenges focused on automation, execution flow, and problem solving.
  
---

### Assignments

- [Basic Arithmetic Calculator](./assignments/challenge01_calculator.sh)  
  Bash scripting assignment focused on arithmetic operations, user input, and conditionals.

- [File Operations Script](./assignments/challenge02_file_ops.sh)  
  Automating directory creation, file handling, and output redirection using Bash.

- [File Checker with Permissions](./assignments/challenge03_permissions.sh)  
  Using file tests and branching logic to validate file permissions safely.

- [Backup Script for Text Files](./assignments/challenge04_backup_txt.sh)  
  Creating timestamped backups using loops, globbing, and filesystem automation.

- [System Monitor Script (Bonus)](./assignments/bonus_system_monitor.sh)  
  Monitoring CPU, memory, disk usage, and logging system information with Bash.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Hands-on scripting in real Linux environments
- Writing and breaking scripts to understand failure modes
- Documenting why Bash behaves the way it does
- Revisiting concepts through structured challenges
- Treating confusion and mistakes as part of the learning process

The goal is long-term understanding that transfers directly to production systems.

---

## Folder Structure

```bash
02-bash/
├── README.md
│
├── fundamentals/
│   ├── README.md
│   ├── 01-introduction.md
│   ├── 02-writing-first-script.md
│   ├── 03-shebang.md
│   ├── 04-comments.md
│   ├── 05-running-scripts.md
│   ├── 06-variables.md
│   ├── 07-parameters.md
│   ├── 08-arithmetic-expansion.md
│   ├── 09-conditionals.md
│   ├── 10-loops.md
│   ├── 11-functions.md
│   ├── 12-user-input.md
│   ├── 13-piping-and-redirection.md
│   ├── 14-exit-codes.md
│   ├── 15-set-options.md
│   ├── 16-environment-and-path.md
│   └── 17-working-with-files.md
│
├── labs/
│   ├── README.md
│   │
│   ├── bashbattlearena/
│   │   ├── README.md
│   │   ├── level01.sh
│   │   ├── level02.sh
│   │   ├── level03.sh
│   │   ├── level04.sh
│   │   ├── level05.sh
│   │   ├── level06.sh
│   │   ├── level07.sh
│   │   ├── level08.sh
│   │   ├── level09.sh
│   │   ├── level10.sh
│   │   ├── level11.sh
│   │   ├── level12.sh
│   │   ├── level13.sh
│   │   ├── level14.sh
│   │   └── level15.sh
│   │
│   └── bash-practice/
│       ├── README.md
│       │
│       ├── basics/
│       │   ├── arithmetic.sh
│       │   ├── hello_world.sh
│       │   └── my-first-script.sh
│       │
│       ├── variables/
│       │   ├── readenv_variable.sh
│       │   ├── standarenv_variable.sh
│       │   └── var.sh
│       │
│       ├── conditionals/
│       │   ├── elseifstatement.sh
│       │   ├── ifstatement.sh
│       │   └── nested_if_statements.sh
│       │
│       ├── loops/
│       │   ├── for_loops.sh
│       │   └── while_loops.sh
│       │
│       ├── functions/
│       │   └── functions.sh
│       │
│       ├── files/
│       │   ├── combine.txt
│       │   ├── hello.txt
│       │   ├── multilinecopy.txt
│       │   ├── read.txt
│       │   ├── test.txt
│       │   └── test2.txt
│       │
│       └── misc/
│           ├── error_handling.sh
│           ├── exit_code.sh
│           ├── filecheck_sums.sh
│           ├── piping.sh
│           ├── reading_files.sh
│           ├── script.sh
│           ├── set_e.sh
│           └── user_input.sh
│
├── assignments/
│   ├── README.md
│   ├── challenge01_calculator.sh
│   ├── challenge02_file_ops.sh
│   ├── challenge03_permissions.sh
│   ├── challenge04_backup_txt.sh
│   └── bonus_system_monitor.sh
│
└── README.md
```

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of **Bash scripting** through hands-on command-line usage and core shell concepts.

Rather than memorising syntax, the emphasis is on learning how **Bash behaves and executes**, and how small mistakes can lead to large failures in automation.

Each topic covers:

- Core Bash concepts and shell behaviour
- Common syntax and how Bash evaluates commands
- Practical examples based on real-world scripting usage
- Key takeaways that reinforce long-term understanding

These notes help build a solid foundation for Dockerfiles, CI/CD pipelines, infrastructure automation, and cloud platforms.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on reinforcing Bash fundamentals through structured, hands-on scripting challenges.

Rather than following guided notes, the emphasis is on applying knowledge independently, experimenting with scripts, and understanding how Bash behaves in real automation scenarios.

Each lab includes:

• A clearly defined scripting challenge  
• Practical Bash command and scripting usage  
• Step-by-step reasoning behind the solution  
• Key takeaways that strengthen long-term retention  

These labs are designed to simulate real-world scripting problems, helping develop confidence with automation and shell behaviour.

➡️ [View Labs](./labs)

---

## Assignments

The Assignments section focuses on applying **Bash scripting** concepts through structured, real-world challenges.

Rather than only reinforcing fundamentals, the emphasis is on building practical automation skills, defensive scripting habits, and production-style problem solving.

Each assignment documents:

- The challenge objective  
- Bash concepts being applied  
- Commands and patterns used  
- Implementation details (`.sh` script)  
- A short explanation and key learning takeaway  

Assignments are treated as practical automation exercises, not isolated tasks to complete quickly.  
The emphasis is on writing predictable, readable, and safe scripts that reflect real operational environments.

These challenges help transition from understanding **shell behaviour and execution flow** to building scripts suitable for real **DevOps workflows**.

➡️ [View Assignments](./assignments)
