# StreamMetrics — Tuning Note (YOU WRITE THIS)

## Bottleneck
_From the plan: what is the database doing and why is it slow?_

## Proposed index
_The index you added — and why this shape / column order._

## Before / After
_Paste both EXPLAIN ANALYZE outputs. The after-plan must show an Index Scan
and a much lower Execution Time._

**Before:**
```
(paste)
```

**After:**
```
(paste)
```

## Rejected index
_One index you considered and rejected. The query it would have helped (or
none), and why the write overhead on this high-volume table isn't worth it._
