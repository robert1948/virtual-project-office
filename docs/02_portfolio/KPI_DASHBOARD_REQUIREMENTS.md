# KPI Dashboard Requirements

## Document ID

KPI-REQ-2026-0314-001

## Date

2026-03-14

## Owner

Robert

## Related Plan

- `PLN-2026-004` in `project-plan.csv`

## Purpose

Define the minimum KPI dashboard fields, calculation rules, and governance
controls required to support portfolio-level decision making for `VNT-003`.

## Scope

- Define dashboard sections and KPI fields.
- Define metric formulas, targets, and update cadence.
- Define data-source and quality requirements.
- Define ownership and approval controls for KPI changes.

## Out of Scope

- Dashboard UI implementation.
- Automation tooling selection.
- Historical data backfill beyond current reporting period.

## Dashboard Sections

1. Delivery health
2. Throughput and cycle-time
3. Quality and reliability
4. Financial and capacity signals
5. Risk and governance posture

## Required KPI Fields

| KPI ID | KPI Name | Formula | Frequency | Owner | Target |
| --- | --- | --- | --- | --- | --- |
| KPI-001 | On-time delivery rate | Completed on time / Completed total * 100 | Weekly | Delivery owner | >= 90% |
| KPI-002 | Work order cycle time | Median close date - open date (days) | Weekly | Delivery owner | <= 10 days |
| KPI-003 | Blocked item ratio | Blocked active / Active total * 100 | Weekly | Delivery owner | <= 15% |
| KPI-004 | Defect escape count | Defects found after acceptance | Weekly | Quality owner | <= 2 |
| KPI-005 | Rework ratio | Reopened items / Completed total * 100 | Weekly | Quality owner | <= 10% |
| KPI-006 | Delivery confidence | RAG value from weekly report | Weekly | Governance owner | Green |
| KPI-007 | Budget variance | (Actual - Planned) / Planned * 100 | Monthly | Finance owner | +/- 5% |
| KPI-008 | Capacity utilization | Assigned effort / Available effort * 100 | Monthly | Delivery owner | 75-90% |
| KPI-009 | High-risk exposure | Count of active risks with score >= 12 | Weekly | Risk owner | <= 2 |
| KPI-010 | Governance compliance rate | Compliant records / Records sampled * 100 | Monthly | Governance owner | >= 95% |

## Data Model Requirements

- Each KPI must include: `kpi_id`, `kpi_name`, `period_start`, `period_end`,
  `value`, `target`, `status`, `source_reference`, `last_updated`, `owner`.
- All KPI values must link to at least one evidence artifact:
  work order, report, log entry, or query output.
- Dashboard data exports must retain immutable period snapshots.

## Data Source Mapping

- Work-order KPIs: `docs/03_work_orders/` and `project-plan.csv`
- Governance KPIs: `logs/changes/`, `logs/decisions/`, `logs/risks/`
- Reporting KPIs: `docs/06_reporting/weekly/` and `docs/06_reporting/monthly/`
- Financial/capacity KPIs: monthly report inputs and owner attestations

## Quality Controls

- No KPI is publishable without source reference.
- Formula changes require decision-log entry and approver sign-off.
- Missing data is shown as `N/A` and must include a remediation action.
- KPI owner reviews values before weekly/monthly publication.

## Governance and Approval

- KPI baseline approval authority: Robert
- KPI threshold updates: governance owner review plus Robert approval
- New KPI addition/removal: decision record required

## Acceptance Criteria

- Required KPI list and formulas are documented and versioned.
- Owners, frequencies, and targets are defined for each KPI.
- Data-source mapping and quality controls are documented.
- Governance approval and change-control rules are documented.

## Follow-up Actions

- Create first weekly KPI snapshot using `WEEKLY_REPORT_TEMPLATE.md`.
- Create first monthly KPI snapshot using `MONTHLY_REPORT_TEMPLATE.md`.
- Assess automation options after two manual reporting cycles.
