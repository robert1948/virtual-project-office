# Weekly KPI Report Workflow Runbook

## Purpose

Provide a repeatable process to publish weekly KPI reports with consistent
evidence quality and governance linkage.

## Preconditions

- `project-plan.csv` reflects current plan status.
- Active work orders are updated for the current week.
- Latest decisions, changes, and risks are recorded in `logs/`.

## Workflow

1. Duplicate weekly report structure for new reporting period.

```bash
cp docs/07_templates/WEEKLY_REPORT_TEMPLATE.md \
  docs/06_reporting/weekly/WR-YYYY-MMDD-XXX_weekly_kpi_snapshot.md
```

1. Populate snapshot, work-order progress, and references.

- Include active/completed/blocked counts.
- Link decisions, changes, and risks created or updated in the period.

1. Calculate KPI metrics.

- On-time delivery rate from `project-plan.csv` milestone and status fields.
- Open high-priority count from active plan/work-order state.
- Delivery confidence from current operating signals.

1. Link evidence.

- Add at least two evidence links to plan/work-order/log artifacts.

1. Run governance controls.

- Execute `WEEKLY_GOVERNANCE_REVIEW_CHECKLIST.md`.
- Publish or update checkpoint audit sample SOP if applicable.

1. Approve and publish.

- Complete sign-off fields.
- Add report filename to `docs/06_reporting/weekly/README.md`.

## Quality Gates

- Report contains all required headings.
- Evidence links resolve to existing files.
- Metrics include clear basis or formula notes.
- Report has reviewer and approval date.

## Outputs

- Weekly report in `docs/06_reporting/weekly/`
- Updated weekly README index
- Supporting governance review/audit artifacts
