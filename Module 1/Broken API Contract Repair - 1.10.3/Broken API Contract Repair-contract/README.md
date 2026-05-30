# Broken API Contract Repair — Part 1: Contract

## Context

Helios is a SaaS task management platform. The engineering team designed an API for task completion operations and has a broken contract below.

Your job: identify the design problems, repair the contract, and explain why the repairs are better.

This is Part 1 of the assignment. See the main `README.md` one level up for Part 2 (the implementation) and submission instructions.

---

## The Broken Contract

See `contract.yaml` in this folder.

The contract defines the endpoint for completing a task:

```yaml
GET /tasks/{id}/complete
```

This is a real contract from a real (fictional) production API. It has three non-obvious design violations that you must find, fix, and defend.

---

## What to Produce

1. Read `contract.yaml` and identify all three violations
2. Create a repaired version of `contract.yaml` in this folder
3. Write a `defence-note.md` explaining:
   - What each violation was
   - Why the fix is better
   - One alternative approach you considered but rejected
