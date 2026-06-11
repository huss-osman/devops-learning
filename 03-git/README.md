<img width="1000" height="500" alt="git-banner" src="https://github.com/user-attachments/assets/0dc18f70-7ef3-4d05-a161-c9ba91fbe5fd" />

# Git

![VCS](https://img.shields.io/badge/VCS-Git-F05032?logo=git&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-GitHub-181717?logo=github&logoColor=white)
![Focus](https://img.shields.io/badge/Focus-Version%20Control-purple?logo=git&logoColor=white)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Git** through practical version control and collaboration workflows.

Git is the foundation of modern collaboration. Nearly everything in DevOps including CI/CD pipelines, infrastructure-as-code, cloud deployments, and automation relies on strong version control practices.

The focus throughout this work is on understanding **how Git works (snapshots, branches, history)**, not just memorising commands.

---

## 🧠 New to Git? Read This First

- Git can feel confusing at first — that’s normal.
- Focus on **understanding history and snapshots**, not memorising commands.
- Use tools like `git status`, `git log`, `git diff`, and `git reflog`.
- Visualise branches and commits to understand repository history.
- Make mistakes intentionally and learn how to recover safely.

> [!IMPORTANT]
> If you don’t understand Git, collaboration and production workflows become difficult to manage safely.

---

## Learning Objectives

By working through this module, I aim to:

- Understand what version control is and why Git matters
- Confidently use the Git workflow (add → commit → push)
- Understand Git’s three areas (working directory, staging area, repository)
- View and interpret history using logs and diffs
- Create and manage branches safely
- Merge branches and resolve conflicts confidently
- Understand rebase vs merge and when to use each
- Use stash, reset, revert, and cherry-pick safely
- Collaborate using GitHub workflows
- Follow professional Git best practices
- Avoid common mistakes such as force pushing or leaking secrets

---

# Topics Covered

### Fundamentals

- [Git Intro](./fundamentals/01-git-intro.md)  
  What Git is, why it exists, and why it became the industry standard.

- [What is Version Control](./fundamentals/02-version-control.md)  
  Understanding version control systems and the problems they solve.

- [Centralised vs Distributed](./fundamentals/03-centralised-vs-distributed.md)  
  How Git differs from older systems like SVN.

- [Git Changed the Game](./fundamentals/04-git-changed-the-game.md)  
  Why Git became the dominant version control system.

- [Git is Not a File Tracker](./fundamentals/05-git-not-a-file-tracker.md)  
  Understanding Git’s snapshot model instead of file tracking.

- [Git Terminology](./fundamentals/06-git-terminology.md)  
  Core Git concepts such as commits, branches, HEAD, and remotes.

- [The .git Directory](./fundamentals/07-dotgit-directory.md)  
  How Git stores repository history and metadata internally.

- [Git Common Commands](./fundamentals/08-common-commands.md)  
  Essential Git commands used in everyday workflows.

- [The Areas of Git](./fundamentals/09-areas-of-git.md)  
  Working directory, staging area, and repository.

- [Viewing History](./fundamentals/10-viewing-history.md)  
  Exploring commit history using logs and diffs.

- [Git vs GitHub](./fundamentals/11-git-vs-github.md)  
  Understanding the difference between Git and hosting platforms.

- [Visualise Branches & Logs](./fundamentals/14-visualise-branches.md)  
  Understanding repository history using visual commit graphs.

- [Rebase vs Merge](./fundamentals/15-rebase-vs-merge.md)  
  Comparing two common strategies for integrating branches.

- [Git Stash & Pop](./fundamentals/16-stash-and-pop.md)  
  Temporarily saving work without committing changes.

- [Reset, Revert & Cherry-Pick](./fundamentals/17-reset-revert-cherrypick.md)  
  Safely undoing changes and manipulating commit history.

- [Connect to GitHub](./fundamentals/18-connect-to-github.md)  
  Linking local repositories to remote hosting platforms.

- [Forks & Pull Requests](./fundamentals/19-forks-and-prs.md)  
  Understanding GitHub collaboration workflows.

- [Collaborating Practices](./fundamentals/20-collaboration-practices.md)  
  Best practices for working with teams using Git.

- [Typical Git Workflow](./fundamentals/21-typical-workflow.md)  
  Common development workflows used in real projects.

- [Trunk-Based Development](./fundamentals/22-trunk-based-development.md)  
  A modern branching strategy used in CI/CD environments.

---

### Labs

- [GitHub SignUp Hands-On](./labs/28-github-signup.md)  
  Creating and configuring a GitHub account.

- [SSH Key](./labs/29-ssh-key.md)  
  Setting up SSH authentication for secure Git operations.

- [Git Verify Login](./labs/30-git-verify-login.md)  
  Confirming authentication between Git and GitHub.

- [New Repository](./labs/31-new-repository.md)  
  Creating a repository and initializing Git.

- [First Repository Push](./labs/32-first-repository-push.md)  
  Pushing a local repository to GitHub.

- [Branching & Merging](./labs/33-branching-and-merging.md)  
  Creating branches and merging them into the main branch.

- [Git Workflow](./labs/34-git-workflow.md)  
  Practicing the standard development workflow.

- [Undoing in Git](./labs/35-undoing-in-git.md)  
  Safely reversing mistakes using Git commands.

- [Git Stash](./labs/36-git-stash.md)  
  Temporarily saving work to switch branches safely.

- [Git Rebase & Squash](./labs/37-git-rebase-and-squash.md)  
  Cleaning up commit history using interactive rebase.

- [Git Cherry-Pick](./labs/38-git-cherry-pick.md)  
  Applying specific commits from one branch to another.

- [The `.gitignore`](./labs/39-gitignore.md)  
  Preventing unnecessary files from entering version control.

- [Git Amend](./labs/40-git-amend.md)  
  Modifying the most recent commit.

- [Pre-Commit](./labs/41-precommit.md)  
  Automating checks and formatting before commits.

---

### Best Practices

- [Commit Hygiene & Best Practices](./best-practices/23-commit-hygiene.md)  
  Writing clear, atomic commits with meaningful messages.

- [Pre-Commit & Automation](./best-practices/24-precommit-and-automation.md)  
  Using hooks and automation to enforce repository standards.

- [Common Mistakes in the Real World](./best-practices/25-common-mistakes.md)  
  Avoiding dangerous Git mistakes that break repositories.

- [Git at Scale](./best-practices/26-git-at-scale.md)  
  Managing Git repositories in large teams and projects.

- [Git Security & Secrets Hygiene](./best-practices/27-git-security.md)  
  Preventing credential leaks and maintaining secure repositories.
---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Practicing Git with real repositories and real mistakes
- Visualising history to understand what Git is doing
- Using safe undo tools (revert, reflog) instead of panic
- Treating conflicts and broken history as debugging exercises
- Documenting why Git works, not just what to type

The goal is long-term Git fluency that transfers to production workflows.

---

## Folder Structure

```bash
03-git/
├── README.md
│
├── fundamentals/
│   ├── README.md
│   ├── 01-git-intro.md
│   ├── 02-version-control.md
│   ├── 03-centralised-vs-distributed.md
│   ├── 04-git-changed-the-game.md
│   ├── 05-git-not-a-file-tracker.md
│   ├── 06-git-terminology.md
│   ├── 07-dotgit-directory.md
│   ├── 08-common-commands.md
│   ├── 09-areas-of-git.md
│   ├── 10-viewing-history.md
│   ├── 11-git-vs-github.md
│   ├── 12-branching-101.md
│   ├── 13-merging.md
│   ├── 14-visualise-branches.md
│   ├── 15-rebase-vs-merge.md
│   ├── 16-stash-and-pop.md
│   ├── 17-reset-revert-cherrypick.md
│   ├── 18-connect-to-github.md
│   ├── 19-forks-and-prs.md
│   ├── 20-collaboration-practices.md
│   ├── 21-typical-workflow.md
│   └── 22-trunk-based-development.md
│
├── labs/
│   ├── README.md
│   ├── 28-github-signup.md
│   ├── 29-ssh-key.md
│   ├── 30-git-verify-login.md
│   ├── 31-new-repository.md
│   ├── 32-first-repository-push.md
│   ├── 33-branching-and-merging.md
│   ├── 34-git-workflow.md
│   ├── 35-undoing-in-git.md
│   ├── 36-git-stash.md
│   ├── 37-git-rebase-and-squash.md
│   ├── 38-git-cherry-pick.md
│   ├── 39-gitignore.md
│   ├── 40-git-amend.md
│   └── 41-precommit.md
│
├── best-practices/
│   ├── README.md
│   ├── 23-commit-hygiene.md
│   ├── 24-precommit-and-automation.md
│   ├── 25-common-mistakes.md
│   ├── 26-git-at-scale.md
│   └── 27-git-security.md
```

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of Git through core version control concepts and practical examples.

Rather than memorising commands, the emphasis is on understanding how Git works internally — snapshots, commits, branches, and repository history.

Each topic covers:

• Core Git concepts and version control theory  
• How Git stores history and tracks changes  
• Practical examples that explain common Git workflows  
• Key takeaways that reinforce long-term understanding  

These notes help build a solid foundation for collaboration, CI/CD pipelines, infrastructure-as-code workflows, and modern software development environments.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying Git knowledge through structured **hands-on exercises and real command-line workflows**.

These labs simulate real development scenarios such as creating repositories, pushing code, branching, merging, and undoing mistakes.

Each lab includes:

• A clearly defined Git task or workflow  
• Practical command-line usage and Git operations  
• Step-by-step reasoning behind the solution  
• Key takeaways that reinforce practical Git skills  

These exercises help build confidence using Git in real-world development environments and collaborative projects.

➡️ [View Labs](./labs)

---

## Best Practices

The Best Practices section focuses on writing clean, maintainable, and safe Git history following standards used in professional engineering teams.

Rather than simply completing Git operations, the emphasis is on maintaining readable commit history and preventing common mistakes in collaborative environments.

Each topic covers:

• Writing clear, atomic commits with meaningful messages  
• Using automation tools such as pre-commit hooks and CI checks  
• Avoiding common mistakes like force pushing or messy merges  
• Protecting repositories from credential leaks and security risks  

These practices help ensure Git usage remains professional, scalable, and production-ready across teams.

➡️ [View Best Practices](./best-practices)
