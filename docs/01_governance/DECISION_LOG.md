# Decision Log

Tracks major decisions, rationale, owner, date, and downstream impact.

## Usage Rules

- Log only decisions with cross-team, budget, scope, risk, or release impact.
- Create one entry per decision.
- Do not overwrite historical entries. Add amendments as a new entry.
- Link supporting evidence when available.

## Decision Entry Template

```md
### DEC-YYYY-MMDD-001

- Date: YYYY-MM-DD
- Status: Proposed | Approved | Rejected | Superseded
- Owner: Name or role
- Approver: Name or role
- Area: Governance | Portfolio | Delivery | Risk | Operations
- Summary: One-sentence decision statement

#### Context
Why this decision is needed now.

#### Options Considered
1. Option A
2. Option B
3. Option C

#### Decision
State the final decision in clear terms.

#### Rationale
Why this option was selected.

#### Impact
- Scope impact:
- Timeline impact:
- Risk impact:
- Cost impact:

#### Evidence
- Link 1
- Link 2

#### Follow-up Actions
- [ ] Action 1
- [ ] Action 2
```

## Entries

### DEC-2026-0313-001

- Date: 2026-03-13
- Status: Approved
- Owner: Robert
- Approver: Robert
- Area: Governance
- Summary: Adopted a governance-first repository structure for project office operations.

#### Context

The previous layout did not separate foundation, governance, portfolio,
execution, and reporting concerns.

#### Options Considered

1. Keep flat docs layout
2. Introduce numbered lifecycle folders

#### Decision

Adopt numbered lifecycle folders and seed key governance templates.

#### Rationale

Improves discoverability, control, scalability, and auditability.

#### Impact

- Scope impact: Repository reorganization and baseline template creation
- Timeline impact: Immediate one-time setup activity
- Risk impact: Lower governance drift and documentation ambiguity
- Cost impact: No direct cost

#### Evidence

- `README.md`
- `docs/00_foundation/PROJECT_OFFICE_CHARTER.md`

#### Follow-up Actions

- [ ] Add decision owner aliases and review cadence
- [ ] Define retirement process for superseded decisions
