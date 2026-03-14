# WO-2026-0314-006 Pre-Flight Checklist

## Purpose

Confirm readiness before executing the KPI threshold fitness review scheduled
for 2026-03-21.

## Scope

- `WO-2026-0314-006_kpi_threshold_fitness_review.md`

## Readiness Checks

- [ ] Two weekly KPI reports are available in `docs/06_reporting/weekly/`.
- [ ] `KPI_THRESHOLD_FITNESS_REVIEW_WORKSHEET.md` is populated for both reports.
- [ ] `project-plan.csv` is current as of review date.
- [ ] Latest decisions/changes/risks are linked.
- [ ] Threshold-change decision path is clear (decision + change + risk if needed).

## Execution Day Commands

```bash
git pull origin main
/home/robert/Development/virtual-project-office/.venv/bin/pre-commit run --all-files
```

## Expected Outputs

- Updated worksheet with recommendation.
- Decision draft prepared for threshold outcome.
- Work order execution notes updated with comparison evidence.
