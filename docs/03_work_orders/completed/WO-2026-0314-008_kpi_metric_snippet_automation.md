# WO-2026-0314-008 KPI Metric Snippet Automation

## Work Order ID

WO-2026-0314-008

## Status

Completed

## Linked Plan ID

PLN-2026-008

## Owner

Robert

## Request Date

2026-03-14

## Due Date

2026-03-21

## Summary

Implement a lightweight script and make target to generate weekly KPI metric
snippets directly from `project-plan.csv`.

## Objective

Reduce manual reporting variance and provide a repeatable metrics basis for
weekly KPI snapshots.

## Scope

- Add Python script to calculate key weekly plan metrics.
- Add `make kpi-weekly` command for fast usage.
- Update weekly KPI runbook with command usage.
- Document feature in project README.

## Out of Scope

- Full dashboard backend automation.
- Historical data warehouse ingestion.

## Dependencies

- `PLN-2026-004` KPI baseline completed.

## Required Approvals

- Area owner approval: Robert

## Acceptance Criteria

- Script produces planned/completed/on-time/high-priority metrics.
- Make target runs script successfully.
- Runbook documents usage in weekly workflow.
- Linked governance logs and plan row are updated.

## Evidence Required

- `scripts/generate_weekly_kpi_snapshot.py`
- `Makefile`
- `docs/04_operations/runbooks/WEEKLY_KPI_REPORT_WORKFLOW.md`
- `README.md`
- `project-plan.csv`

## Risks

- Metric assumptions may diverge from future KPI policy changes.

## Decision and Change References

- `logs/decisions/DEC-2026-0314-003.md`
- `logs/changes/CHG-2026-0314-004.md`
- `logs/risks/RSK-2026-0314-003.md`

## Change Control Checkpoint

- Change ID: `CHG-2026-0314-004`
- Change Class: Minor
- Approver: Robert
- Approval Date: 2026-03-14
- Checkpoint Status: Waived
- Notes: Documentation and utility automation only; no production-impacting
  execution.

## Execution Notes

Delivered as a small utility release with reproducible output validated by
`make kpi-weekly`.

## Completion Check

- [x] Acceptance criteria met
- [x] Evidence attached
- [x] Risks updated
- [x] Plan status updated
