# Helios — Bonus Exercise Provided Repo

## What's in Here

- **`contract.yaml`** (in `../helios-broken-contract/`) — the broken OpenAPI contract. Read this to understand what the API is supposed to do.
- **`index.js`** — an Express implementation of the task completion endpoint. It has design violations that conflict with what any well-designed API contract should specify.
- **`package.json`** — dependencies (express).

---

## Your Three Deliverables (branch: `repaired-contract`)

1. **`contract.yaml`** — the repaired OpenAPI 3.0 spec with all violations fixed.
2. **`defence-note.md`** — **under 80 words**. 3 bullets, one per violation:

```
1. [Violation name]: [what was wrong] — [one-sentence consequence] — Fixed by: [what changed] — Alternative rejected: [one line]
2. ...
3. ...
```

3. **`index.js`** — the same violations fixed in the actual Express implementation.

---

## Getting Started

```bash
npm install
node index.js
```

Read `contract.yaml` and compare it against `index.js`. Find where the code contradicts what a well-designed contract would specify. There are three distinct design violations.

Once you've fixed `contract.yaml` and written `defence-note.md`, implement the same fixes in `index.js`.

**Verify your code fix:**
```bash
# After your fix — test the endpoint manually
curl -X PATCH http://localhost:3000/tasks/42/complete
curl -v -X PATCH -H "X-API-Version: 1.0" http://localhost:3000/tasks/42/complete
```
