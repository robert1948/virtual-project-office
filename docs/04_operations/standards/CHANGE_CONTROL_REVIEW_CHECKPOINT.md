# Change-Control Review Checkpoint Standard

## Standard ID

STD-CCR-2026-0314-001

## Purpose

Enforce a pre-execution checkpoint so all Major and Critical changes are linked
to approved change records before execution starts.

## Applicability

- Required for all changes classified as `Major` or `Critical`.
- Recommended for `Minor` changes with cross-team dependency impact.

## Checkpoint Timing

- Run checkpoint during Planning Gate and again at Approval Gate.
- Execution may begin only when checkpoint status is `Pass`.

## Required Inputs

- Work order with scope and acceptance criteria.
- Change log record (`CHG-...`) with class, status, and approver.
- Risk references for material risks.
- Rollback and evidence plan.

## Pass Criteria

1. A `CHG` record exists and is linked in the work order.
2. Change class is explicitly documented.
3. Required approver is captured per class matrix.
4. Risks are assessed and linked where applicable.
5. Rollback and evidence plans are documented.

## Fail Conditions

- Missing `CHG` record for Major/Critical change.
- Missing approver for required class.
- Work starts before approval state is captured.
- Missing rollback plan for release-impacting changes.

## Evidence Requirements

- Work order contains `Change Control Checkpoint` section values.
- Change log entry includes status and approver.
- Decision/risk links are present when required.

## Checkpoint Record Template

```md
## Change Control Checkpoint

- Change ID:
- Change Class: Minor | Major | Critical
- Approver:
- Approval Date:
- Checkpoint Status: Pass | Fail | Waived
- Notes:
```
