<img width="1000" height="500" alt="imageedit_4_4067011018" src="https://github.com/user-attachments/assets/33e8dd51-4b06-424c-9cb8-dd346280cb17" />

# Linux 

![OS](https://img.shields.io/badge/OS-Linux-blue?logo=linux)
![Shell](https://img.shields.io/badge/Shell-Bash-blue?logo=gnubash)
![Shell](https://img.shields.io/badge/Shell-Zsh-blue?logo=gnubash)
![Focus](https://img.shields.io/badge/Focus-Linux%20Fundamentals-purple?logo=linux)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Linux** through practical exercises and real-world command-line workflows.

Linux is the foundation of modern infrastructure. Nearly everything in DevOps including containers, CI/CD, cloud platforms, and automation relies on strong Linux command-line fundamentals.

The focus throughout this work is on **understanding how Linux works**, not memorising commands.

---

## 🧠 New to Linux? Read This First

- Don’t panic when the terminal looks empty, or when the output looks confusing. That’s normal.
- Use `man`, `--help`, or Google to understand commands and how to use them — you don’t need to memorise everything.
- Get comfortable with the basics: `ls`, `cd`, `cat`, `find`, `file`, and `grep`.
- Remember to make a note of each password.
- Make notes on commands as you go.
- If you're on Windows, consider installing Linux through WSL.

> [!IMPORTANT]
> Before you start, I highly recommend watching this guide to mastering Linux man pages.  
> It will be invaluable throughout the challenge and make you less dependent on Google and AI.
>
> [Mastering Linux man pages (YouTube)](https://www.youtube.com/watch?v=RzAkjX_9B7E)

---

## 🛠️ How to Install WSL (Windows Subsystem for Linux)

### 1. Open PowerShell as Administrator
- Click the Start menu, search for **Windows PowerShell**, then right-click and choose **Run as Administrator**.

### 2. Run the install command
```powershell
wsl --install
```
- This will install WSL along with Ubuntu by default. You may be prompted to restart your computer.

### 3. Set up your Linux user
- After restarting, Ubuntu will launch automatically and ask you to create a username and password.

You’re now ready to start using Linux on Windows!

---

## Learning Objectives

By working through this module, I aimed to:

- Confidently navigate the Linux file system via the command line
- Manage files, directories, and permissions
- Understand users, groups, and sudo privileges
- Work with processes and system monitoring tools
- Use core Linux utilities (`grep`, `awk`, `sed`, `find`, pipes, redirection)
- Understand stdin, stdout, and stderr data flow
- Apply fundamentals through structured challenges and troubleshooting

---

## Topics Covered

### Fundamentals

- [Terminal Basics](./fundamentals/terminal-basics.md)  
  Navigating the filesystem, basic commands, and working efficiently in the terminal.

- [Shell Basics](./fundamentals/shell-basics.md)  
  Shell concepts, aliases, environment setup, and command execution flow.

- [File System](./fundamentals/file-system.md)  
  Linux directory structure, files vs directories, and filesystem hierarchy.

- [Permissions](./fundamentals/permissions.md)  
  Read, write, execute permissions, ownership, `chmod`, `chown`, and security concepts.

- [Users and Groups](./fundamentals/users-and-groups.md)  
  User management, groups, `sudo`, and access control.

- [Environment Variables](./fundamentals/environment-variables.md)  
  `PATH`, exporting variables, and shell environment behaviour.

- [Text Processing](./fundamentals/text-processing.md)  
  Searching, filtering, and transforming text using `grep`, `awk`, `sed`, and pipelines.

- [Redirection and Pipes](./fundamentals/data-redirection.md)  
  `stdin`, `stdout`, `stderr`, pipes, and chaining commands.

- [Process Management](./fundamentals/process-management.md)  
  Inspecting running processes, background jobs, monitoring system activity, and safely stopping processes.

- [Bash vs Zsh](./fundamentals/bash-vs-zsh.md)  
  Shell differences, configuration files, and usability comparisons.

- [Vim Basics](./fundamentals/vim-basics.md)  
  Editing files efficiently using Vim.

---

### Labs

- [Bandit (Levels 1–12)](./labs/bandit)  
  Hands-on Linux challenges focused on navigation, permissions, file discovery, and command-line fundamentals.

- [SadServers (Easy, Medium, Hard)](./labs/sadservers)  
  Real-world Linux troubleshooting scenarios focused on diagnosing and fixing broken systems.

---

## Learning Approach

This repository reflects **how I learn**, not just what I learned.

- Hands-on practice in real Linux environments (WSL, VMs, cloud instances)
- Solving problems before looking up solutions
- Documenting **why commands work**, not just what they do
- Revisiting concepts through Bandit and SadServers
- Treating confusion and mistakes as part of the learning process

The goal is long-term understanding that transfers to production systems.

---

## Folder Structure

```bash
01-linux/
├── README.md
│
├── fundamentals/
│   ├── README.md
│   ├── terminal-basics.md
│   ├── shell-basics.md
│   ├── file-system.md
│   ├── permissions.md
│   ├── users-and-groups.md
│   ├── environment-variables.md
│   ├── text-processing.md
│   ├── data-redirection.md
│   ├── process-management.md
│   ├── bash-vs-zsh.md
│   └── vim-basics.md
│
├── labs/
│   ├── README.md
│   │
│   ├── bandit/
│   │   ├── README.md
│   │   ├── level01.md
│   │   ├── level02.md
│   │   ├── level03.md
│   │   ├── level04.md
│   │   ├── level05.md
│   │   ├── level06.md
│   │   ├── level07.md
│   │   ├── level08.md
│   │   ├── level09.md
│   │   ├── level10.md
│   │   ├── level11.md
│   │   └── level12.md
│   │
│   └── sadservers/
│       ├── README.md
│       ├── easy/
│       │   └── saint-john.md
│       ├── medium/
│       │   └── manhattan.md
│       └── hard/
```

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of Linux through hands-on command-line usage and core system concepts.

Rather than memorising commands, the emphasis is on learning how Linux behaves and why.

Each topic covers:

• Core Linux concepts and system behaviour  
• Common commands and how they interact with the system  
• Practical examples based on real-world usage  
• Key takeaways that reinforce long-term understanding  

These notes help build a solid foundation for Docker, Kubernetes, CI/CD, and cloud platforms.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on reinforcing Linux knowledge through hands-on command-line practice and troubleshooting scenarios.

Rather than following guided notes, the emphasis is on applying Linux knowledge through investigation and practical problem solving.

Each lab covers:

• Command-line challenges that reinforce Linux fundamentals  
• File system navigation and system investigation  
• Troubleshooting scenarios based on real-world issues  
• Key takeaways that reinforce long-term understanding  

These labs help build practical experience working with Linux systems in environments similar to production infrastructure.

➡️ [View Labs](./labs)
