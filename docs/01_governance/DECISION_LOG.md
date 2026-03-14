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

- [x] Add decision owner aliases and review cadence
- [x] Define retirement process for superseded decisions

### DEC-2026-0313-002

- Date: 2026-03-13
- Status: Approved
- Owner: Robert
- Approver: Robert
- Area: Governance
- Summary: Marked governance baseline documentation and templates as
  operational standard.

#### Context (DEC-2026-0313-002)

Repository structure and baseline policy files existed, but operational usage
required explicit governance rules, stronger templates, and example logs.

#### Options Considered (DEC-2026-0313-002)

1. Keep minimal templates and rely on ad hoc usage
2. Enforce structured templates and seeded examples

#### Decision (DEC-2026-0313-002)

Adopt structured governance model, upgraded templates, and seeded examples as
the required standard for all new project office work.

#### Rationale (DEC-2026-0313-002)

Improves consistency, traceability, and reviewability while reducing governance
drift.

#### Impact (DEC-2026-0313-002)

- Scope impact: All new work orders and logs must use standardized fields
- Timeline impact: Immediate adoption starting 2026-03-13
- Risk impact: Lowers operational variance in record quality
- Cost impact: No direct cost

#### Evidence (DEC-2026-0313-002)

- `docs/01_governance/GOVERNANCE_MODEL.md`
- `docs/03_work_orders/active/WO-2026-0313-001_governance_baseline_publish.md`
- `logs/changes/CHG-2026-0313-001.md`

#### Follow-up Actions (DEC-2026-0313-002)

- [ ] Review adoption quality in weekly governance review
- [ ] Retire superseded templates by reference, not deletion

### DEC-2026-0313-003

- Date: 2026-03-13
- Status: Approved
- Owner: Robert
- Approver: Robert
- Area: Operations
- Summary: Adopted verified local PostgreSQL startup, seed, and reset workflow
  as standard local procedure.

#### Context (DEC-2026-0313-003)

The local database workflow existed in compose and make targets, but required
execution evidence to confirm reliability and reproducibility.

#### Options Considered (DEC-2026-0313-003)

1. Keep workflow undocumented by execution evidence
2. Verify and adopt startup-seed-reset flow with explicit evidence

#### Decision (DEC-2026-0313-003)

Use `make db-up`, `make db-seed`, and `make db-reset CONFIRM=1` as canonical
local workflow with evidence capture in work order and logs.

#### Rationale (DEC-2026-0313-003)

Reduces local environment drift and accelerates consistent onboarding and
verification.

#### Impact (DEC-2026-0313-003)

- Scope impact: Standard local DB setup and reset procedure adopted
- Timeline impact: Effective immediately
- Risk impact: Lower operational inconsistency during local testing
- Cost impact: No direct cost

#### Evidence (DEC-2026-0313-003)

- `docs/03_work_orders/completed/WO-2026-0313-002_postgresql_workflow_verification.md`
- `logs/changes/CHG-2026-0313-002.md`
- `logs/risks/RSK-2026-0313-002.md`

#### Follow-up Actions (DEC-2026-0313-003)

- [ ] Add backup/restore drill in operations runbook
- [ ] Re-verify reset workflow after schema changes

### DEC-2026-0313-004

- Date: 2026-03-13
- Status: Approved
- Owner: Robert
- Approver: Robert
- Area: Reporting
- Summary: Approved standardized weekly, monthly, and founder review templates
  and reporting cadence policy.

#### Context (DEC-2026-0313-004)

Reporting folders existed, but cadence and template requirements were not fully
defined for consistent decision-ready outputs.

#### Options Considered (DEC-2026-0313-004)

1. Keep unstructured reporting and rely on ad hoc summaries
2. Enforce cadence and standardized templates for all reporting outputs

#### Decision (DEC-2026-0313-004)

Adopt `REPORTING_CADENCE_AND_APPROVALS.md` and standardized weekly, monthly,
and founder review templates as mandatory reporting format.

#### Rationale (DEC-2026-0313-004)

Improves consistency, comparability, and governance quality in reporting.

#### Impact (DEC-2026-0313-004)

- Scope impact: Reporting artifacts now require template and cadence compliance
- Timeline impact: Effective immediately
- Risk impact: Reduced risk of incomplete founder updates
- Cost impact: No direct cost

#### Evidence (DEC-2026-0313-004)

- `docs/06_reporting/REPORTING_CADENCE_AND_APPROVALS.md`
- `docs/07_templates/WEEKLY_REPORT_TEMPLATE.md`
- `docs/07_templates/MONTHLY_REPORT_TEMPLATE.md`
- `docs/07_templates/FOUNDER_REVIEW_TEMPLATE.md`

#### Follow-up Actions (DEC-2026-0313-004)

- [ ] Pilot first weekly report using new template
- [ ] Validate founder review pack completeness next cycle

### DEC-2026-0314-001

- Date: 2026-03-14
- Status: Approved
- Owner: Robert
- Approver: Robert
- Area: Portfolio
- Summary: Approved KPI dashboard requirement baseline for `VNT-003`.

#### Context (DEC-2026-0314-001)

KPI definitions for `PLN-2026-004` were not yet standardized, creating risk of
inconsistent reporting and low-confidence performance decisions.

#### Options Considered (DEC-2026-0314-001)

1. Continue with ad hoc KPI definitions in each report
2. Approve a single versioned KPI requirements baseline

#### Decision (DEC-2026-0314-001)

Adopt `docs/02_portfolio/KPI_DASHBOARD_REQUIREMENTS.md` as the canonical KPI
requirements baseline for `VNT-003` reporting.

#### Rationale (DEC-2026-0314-001)

Creates a consistent KPI contract with ownership, quality controls, and change
governance before dashboard implementation.

#### Impact (DEC-2026-0314-001)

- Scope impact: KPI definitions, formulas, and targets are standardized
- Timeline impact: Effective immediately
- Risk impact: Reduces KPI ambiguity and reporting drift risk
- Cost impact: No direct cost

#### Evidence (DEC-2026-0314-001)

- `docs/02_portfolio/KPI_DASHBOARD_REQUIREMENTS.md`
- `docs/03_work_orders/completed/WO-2026-0314-004_kpi_dashboard_requirements.md`
- `logs/changes/CHG-2026-0314-002.md`
- `logs/risks/RSK-2026-0314-001.md`

#### Follow-up Actions (DEC-2026-0314-001)

- [ ] Publish first weekly KPI snapshot using approved definitions
- [ ] Review threshold fitness after two reporting cycles

### DEC-2026-0314-002

- Date: 2026-03-14
- Status: Approved
- Owner: Robert
- Approver: Robert
- Area: Governance
- Summary: Approved a mandatory pre-execution change-control checkpoint for
  Major and Critical changes.

#### Context (DEC-2026-0314-002)

`PLN-2026-005` required an enforceable checkpoint so high-impact changes could
not start without approved `CHG` linkage and explicit evidence planning.

#### Options Considered (DEC-2026-0314-002)

1. Continue advisory-only change-control guidance
2. Introduce mandatory checkpoint with pass/fail criteria

#### Decision (DEC-2026-0314-002)

Adopt mandatory checkpoint controls in policy and work-order template, with a
published standard for timing, pass criteria, and fail conditions.

#### Rationale (DEC-2026-0314-002)

Improves change-governance discipline and reduces unapproved execution risk for
Major/Critical changes.

#### Impact (DEC-2026-0314-002)

- Scope impact: High-impact changes require checkpoint pass before execution
- Timeline impact: Effective immediately
- Risk impact: Reduces approval and traceability gaps
- Cost impact: No direct cost

#### Evidence (DEC-2026-0314-002)

- `docs/01_governance/CHANGE_CONTROL.md`
- `docs/04_operations/standards/CHANGE_CONTROL_REVIEW_CHECKPOINT.md`
- `docs/03_work_orders/templates/WORK_ORDER_TEMPLATE.md`
- `logs/changes/CHG-2026-0314-003.md`

#### Follow-up Actions (DEC-2026-0314-002)

- [ ] Add checkpoint audit sample to weekly governance review
- [ ] Review checkpoint effectiveness after one month
