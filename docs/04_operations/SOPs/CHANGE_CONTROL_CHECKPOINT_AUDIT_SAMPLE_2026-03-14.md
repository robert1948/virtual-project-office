# Change-Control Checkpoint Audit Sample (2026-03-14)

## Audit ID

AUD-CCR-2026-0314-001

## Purpose

Run the first governance audit sample to verify whether completed work orders
contain required change-control checkpoint evidence for Major/Critical changes.

## Scope

- Sample set: completed work orders with linked `CHG` references
- Period reviewed: 2026-03-13 to 2026-03-14
- Auditor: Robert

## Sample Method

- Review latest completed work orders.
- Identify if a linked change record exists.
- Verify checkpoint evidence fields are present.
- Record compliance as Pass/Gap and define remediation action.

## Sample Results

| Work Order | Change ID | Class | Checkpoint Evidence | Result | Notes |
| --- | --- | --- | --- | --- | --- |
| `WO-2026-0314-005` | `CHG-2026-0314-003` | Major | Present | Pass | Full checkpoint block completed |
| `WO-2026-0314-004` | `CHG-2026-0314-002` | Major | Missing | Gap | Work order predates template update |
| `WO-2026-0313-003` | `CHG-2026-0313-003` | Major | Missing | Gap | Legacy record before checkpoint control |
| `WO-2026-0313-002` | `CHG-2026-0313-002` | Major | Missing | Gap | Legacy record before checkpoint control |

## Compliance Summary

- Sample size: 4
- Pass count: 1
- Gap count: 3
- Compliance rate: 25%

## Interpretation

Low compliance is expected for legacy records created before checkpoint
standard publication. New records are expected to be 100% compliant.

## Remediation Actions

1. Add a note to weekly governance review to sample one new Major/Critical
   work order each week.
2. Do not require retroactive field backfill for pre-standard records; treat as
   baseline historical context.
3. Require `Checkpoint Status: Pass` for all future Major/Critical work orders
   before execution.

## Evidence

- `docs/04_operations/standards/CHANGE_CONTROL_REVIEW_CHECKPOINT.md`
- `docs/03_work_orders/completed/WO-2026-0314-005_change_control_review_checkpoint.md`
- `docs/03_work_orders/completed/WO-2026-0314-004_kpi_dashboard_requirements.md`
- `docs/03_work_orders/completed/WO-2026-0313-003_reporting_cadence_and_templates.md`
- `docs/03_work_orders/completed/WO-2026-0313-002_postgresql_workflow_verification.md`
