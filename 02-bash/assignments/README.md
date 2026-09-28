<p align="center">
  <img width="850" alt="Linux Banner" src="https://github.com/user-attachments/assets/b8d26818-581c-46d1-af51-28c553dc8056" />
</p> 

# Bash Assignments 

![OS](https://img.shields.io/badge/OS-Linux-blue?logo=linux)
![Shell](https://img.shields.io/badge/Shell-Bash-blue?logo=gnubash)
![Focus](https://img.shields.io/badge/Focus-Core%20Scripting-purple)
![Assignments](https://img.shields.io/badge/Assignments-4-darkgreen)
![Bonus](https://img.shields.io/badge/Bonus-1-orange)

These assignments focus on reinforcing **core Bash scripting fundamentals** through structured, practical challenges.

Each script must:

- Include clear comments explaining what the code does  
- Follow clean, readable structure  
- Use defensive scripting practices  
- Handle edge cases safely  

> [!TIP]  
> Attempt each challenge independently before reviewing solutions.  
> Use `man`, `--help`, and debugging flags like `set -x`.

---

### Assignment 1 — Basic Arithmetic Calculator  
**File:** [challenge01_calculator.sh](./challenge01_calculator.sh)  
**Concepts:** User input, arithmetic expansion, conditionals  

**Focus:** Performing calculations safely and handling division by zero.

**Requirements**

- Prompt user for two numbers  
- Perform addition, subtraction, multiplication, division  
- Display formatted results  
- Handle division by zero  

---

### Assignment 2 — File Operations Script  
**File:** [challenge02_file_ops.sh](./challenge02_file_ops.sh)  
**Concepts:** Directory creation, file manipulation, redirection  

**Focus:** Automating repeatable filesystem tasks.

**Requirements**

- Create directory `bash_demo`  
- Navigate into the directory  
- Create file `demo.txt`  
- Write text to file including current date  
- Display file contents  

---

### Assignment 3 — File Checker with Permissions  
**File:** [challenge03_permissions.sh](./challenge03_permissions.sh)  
**Concepts:** File tests (`-e`, `-r`, `-w`, `-x`), branching logic  

**Focus:** Defensive checks and clear permission reporting.

**Requirements**

- Prompt user for filename  
- Check if file exists  
- If it exists, check:
  - Readable
  - Writable
  - Executable
- Display appropriate messages  

---

### Assignment 4 — Backup Script for Text Files  
**File:** [challenge04_backup_txt.sh](./challenge04_backup_txt.sh)  
**Concepts:** Globbing, loops, timestamps, directory management  

**Focus:** Safe backups and structured automation.

**Requirements**

- Prompt user for source directory  
- Create backup directory if needed  
- Add timestamp to backup directory name  
- Copy all `.txt` files  
- Display count of files backed up  

---

## Bonus Assignment (Optional)

### System Monitor Script  
**File:** [bonus_system_monitor.sh](./bonus_system_monitor.sh)  
**Concepts:** System monitoring, command parsing, logging  

Create a script that displays:

- Current CPU usage  
- Memory usage (total, used, free)  
- Disk usage  
- Top 5 processes by memory usage  
- Save output to a timestamped log file  

---

## Skills Reinforced

- Input validation  
- Arithmetic operations  
- Filesystem automation  
- Permission checks  
- Backup strategies  
- Logging and system monitoring  
- Writing clean, production-style Bash scripts  

---

## Learning Outcome

These assignments bridge the gap between running commands and building structured automation scripts.  

By focusing on validation, predictable execution flow, and readable structure, they reinforce the habits required for real-world DevOps and operational scripting.
