# Building a Simple CI Pipeline

## Overview

This lab demonstrates how to build a simple Continuous Integration pipeline using GitHub Actions by creating a workflow that automatically runs whenever code is pushed to a GitHub repository.

It covers creating the required GitHub Actions workflow directory, defining a YAML workflow, configuring a push trigger, creating a build job, running the workflow on Ubuntu, checking out the repository code, and verifying the pipeline through GitHub Actions.

---

## Steps

### Step 1 — Create the GitHub Actions Workflow Folder

Inside the project repository, create a new folder that will contain the GitHub Actions workflows.

<br>

<p align="center">
<img width="1533" height="992" alt="image" src="https://github.com/user-attachments/assets/6753b6f8-6c53-41c8-915a-b40182faec2f" />
</p>

<br>

---

### Step 2 — Name the Folder `.github/workflows`

Name the folder:

```text
.github/workflows
```

GitHub Actions automatically detects workflow files stored inside this directory.

<br>

<p align="center">
<img width="395" height="443" alt="image" src="https://github.com/user-attachments/assets/0aedf221-bf7e-47dc-b37b-8fa0c2cf608e" />
</p>

<br>

---

### Step 3 — Create `ci.yaml`

Inside the `.github/workflows` directory, create a new YAML workflow file named:

```text
ci.yaml
```

GitHub Actions workflows can use either the `.yaml` or `.yml` file extension.

<br>

<p align="center">
<img width="389" height="497" alt="image" src="https://github.com/user-attachments/assets/49158d12-95ea-4680-87e3-e8d7d4a71334" />
</p>

<br>

---

### Step 4 — Configure the CI Workflow

Open `ci.yaml` and create the workflow:

```yaml
name: CoderCo CICD workflow

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: We are testing this workflow
        run: echo Hello everyone!
```

The workflow is configured to run whenever code is pushed to the repository.

The `build` job runs on an Ubuntu machine, checks out the repository code, and executes a simple command to test the workflow.

<br>

<p align="center">
<img width="1433" height="680" alt="image" src="https://github.com/user-attachments/assets/48303261-a65d-4ce3-ba0c-eb537e857dc1" />
</p>

<br>

---

### Step 5 — Open the Actions Tab

Open the repository on GitHub and select the **Actions** tab from the repository navigation bar.

This is where GitHub displays workflow runs created from the YAML files stored inside `.github/workflows`.

<p align="center">
<img width="1533" height="534" alt="image" src="https://github.com/user-attachments/assets/2e3be5fe-e59c-419f-98ca-f377ce2202a2" />
</p>

---

### Step 6 — Verify the Workflow Run

After pushing the workflow to GitHub, a new workflow run should automatically appear inside the **Actions** tab.

The workflow run uses the commit message:

```text
create first pipeline/workflow
```

The workflow may initially display a **Queued** or **In Progress** status while GitHub prepares the runner and begins executing the job.

<p align="center">
<img width="1499" height="470" alt="image" src="https://github.com/user-attachments/assets/5e62012a-2d86-478b-a91a-f80da7ccef8f" />
</p>

---

### Step 7 — Open the Workflow Run

Select the **create first pipeline/workflow** workflow run to inspect the individual steps executed by GitHub Actions.

The workflow should perform the following process:

```text
Set up job
    ↓
Checkout code
    ↓
Run echo command
    ↓
Complete job
```

---

### Step 8 — Verify the Workflow Output

Open the workflow step containing:

```yaml
run: echo Hello everyone!
```

The workflow logs should display:

```text
Hello everyone!
```

This confirms that the command successfully executed on the GitHub-hosted Ubuntu runner.

---

### Step 9 — Verify the Pipeline Passed

Once every workflow step completes successfully, GitHub Actions displays a successful workflow status.

The complete pipeline follows this process:

```text
Code Push
    ↓
Workflow Trigger
    ↓
Ubuntu Runner
    ↓
Checkout Code
    ↓
Execute Command
    ↓
Pipeline Passes
```

This confirms that the first CI pipeline was successfully created, triggered, and executed using GitHub Actions.

---

## Key Takeaways

- GitHub Actions workflows are stored inside the `.github/workflows` directory.
- Workflow configuration files are written using YAML.
- The `push` event automatically triggers the pipeline when code is pushed.
- Jobs define groups of work performed within a workflow.
- `runs-on: ubuntu-latest` provides an Ubuntu environment for the job.
- Steps define individual actions and commands executed within a job.
- `actions/checkout` allows the runner to access the repository code.
- GitHub Actions provides execution logs for monitoring and troubleshooting pipelines.

---

## Reflection

Building my first CI pipeline helped me understand how GitHub Actions connects workflow triggers, jobs, runners, steps, and actions to create an automated process. Pushing code to the repository automatically triggered the workflow and allowed me to see how each stage was executed.

I also learned how GitHub-hosted runners execute workflow instructions and how the Actions interface can be used to inspect pipeline activity and individual step output. Successfully running the workflow gave me practical experience with the foundations of Continuous Integration and automated CI/CD workflows.
