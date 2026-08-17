# Helpdesk Schema Repair

## ERD-to-Schema Decisions

### Decision 1: UUID instead of SERIAL for IDs

ERD said: Entity IDs are represented as UUID values.

Schema decided: All primary keys use UUID with `DEFAULT gen_random_uuid()`.

Reason: UUIDs provide globally unique identifiers and are suitable for systems where IDs may be exposed through APIs.

### Decision 2: ON DELETE behaviour for ticket assignee

ERD said: `Ticket.assignee_id` is a nullable foreign key to `Agent`.

Schema decided: `assignee_id UUID REFERENCES agents(id) ON DELETE SET NULL`.

Reason: A ticket should continue to exist even if its assigned agent is deleted. The ticket becomes unassigned instead of being deleted.

### Decision 3: Default value for ticket status

ERD said: Ticket status can have the value `open`, but the ERD does not specify how the initial value is generated.

Schema decided: `status TEXT NOT NULL CHECK (status IN ('open', 'pending', 'resolved', 'closed')) DEFAULT 'open'`.

Reason: The database guarantees that a newly created ticket starts with the `open` status regardless of whether the INSERT comes from the application, a script, or a direct database operation.

## Rejected Table Shape

### Shape: Storing tags as a TEXT[] array on tickets

What it was: The original schema stored ticket tags using a `tags TEXT[]` column directly inside the `tickets` table.

Why rejected: Tags are separate entities in the ER diagram and can be associated with many tickets. Storing them as an array does not properly represent the many-to-many relationship.

What would break: Managing individual tags and querying ticket-tag relationships would become more difficult, and the database would not properly represent the Tag and TicketTag entities from the ER diagram.
