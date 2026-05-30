# System Design — PR Assignment Starter Repo

This is a starter repo for a **System Design** PR assignment at Kalvium.

---

## About the Course

**System Design** is a core engineering course in the Kalvium B.Tech CS program. The course teaches you how real software systems are designed before a single line of code is written — how engineers translate messy requirements into bounded promises, how APIs communicate across services, and how good design decisions prevent entire classes of production bugs.

Module 1 covers the fundamentals:
- Translating stakeholder requirements into clean system contracts
- Tracing how requests flow through a codebase
- Reading and repairing API design violations

The skills you practice here show up in every engineering role — from backend to full-stack to system architecture.

---

## What Is a PR Assignment?

A PR (Pull Request) assignment is a hands-on exercise where you work on a real (fictional) codebase or document, make your changes, and submit them as a pull request on GitHub.

Unlike a quiz, a PR assignment tests whether you can **actually do the thing** — read a broken contract and fix it, trace a bug through three files, or cut scope from a noisy requirements dump. Your submission is the diff: the examiner reads what you changed and why.

Each assignment in this repo gives you:
- A starting point (broken code, a messy spec, or a flawed API contract)
- A clear task description
- The files you need to read and modify

---

## Your Task

Read the task description in this repo carefully. It will tell you:
- What the scenario is
- What files to look at
- What you need to produce (edited files, a new document, or both)
- What a good submission looks like

---

## How to Submit

Follow these steps exactly. This is the submission process for every PR assignment in this course.

### Step 1 — Fork this repo

Click **Fork** at the top-right of this GitHub page. This creates a copy of the repo under your own GitHub account.

> You are working on **your fork**, not the original. Do not open a PR back to the original repo.

### Step 2 — Clone your fork

```bash
git clone https://github.com/<your-username>/<repo-name>.git
cd <repo-name>
```

### Step 3 — Create a branch

```bash
git checkout -b my-solution
```

Use a descriptive branch name if you like — `my-solution` works fine.

### Step 4 — Do the work

Read the task. Make your changes. Create any new files the task asks for. Take your time — there is no autograder running a timer.

### Step 5 — Commit and push

```bash
git add .
git commit -m "Complete assignment"
git push origin my-solution
```

### Step 6 — Open a PR on your own fork

Go to **your forked repo** on GitHub (not the original).

Click **Pull requests → New pull request**.

Set it up like this:
- **base repository**: `<your-username>/<repo-name>`
- **base branch**: `main`
- **compare branch**: `my-solution`

Write a short PR description explaining what you did and any decisions you made. Then click **Create pull request**.

> The PR must be on **your own forked repo**. This is how your instructor reviews your work.

### Step 7 — Share the link

Copy the URL of your GitHub repo (not just the PR — the repo itself):

```
https://github.com/<your-username>/<repo-name>
```

Submit this link on the Kalvium platform where the assignment was posted.

---

## What Reviewers Look For

- Did you do the task, or just write about it?
- Are your changes specific and reasoned, not vague?
- If the task asks for a written explanation, is your reasoning clear?
- If the task involves code, does it reflect the design principle being taught?

There is no single right answer for most of these assignments. Strong submissions explain *why* they made the choices they did.


