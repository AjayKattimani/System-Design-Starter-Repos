# Helios Task Management API — Broken Contract

## Context

Helios is a SaaS task management platform. The engineering team designed an API for task completion operations and has a broken contract below.

Your job: identify the design problems, repair the contract, and explain why the repairs are better.

---

## The Broken Contract

See `contract.yaml` in this folder.

The contract defines the endpoint for completing a task:

```yaml
GET /tasks/{id}/complete
```

This is a real contract from a real (fictional) production API. It has three non-obvious design violations that you must find, fix, and defend.

---

## Submission Instructions

You will:
1. Read the broken contract in `contract.yaml`
2. Identify all three violations
3. Create a repaired version of `contract.yaml` with all violations fixed
4. Write a `defence-note.md` explaining:
   - What each violation was
   - Why the fix is better
   - One alternative approach you considered but rejected

Submit as a PR on the `helios-contract-repair` GitHub repo, branch `repaired-contract`.
