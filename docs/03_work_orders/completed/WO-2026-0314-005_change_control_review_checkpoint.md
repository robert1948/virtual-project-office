# WO-2026-0314-005 Change-Control Review Checkpoint

## Work Order ID

WO-2026-0314-005

## Status

Completed

## Linked Plan ID

PLN-2026-005

## Owner

Robert

## Request Date

2026-03-14

## Due Date

2026-04-04

## Summary

Implement and publish a mandatory change-control review checkpoint so all Major
changes are linked to approved `CHG` records before execution.

## Objective

Increase governance compliance by preventing execution of Major/Critical
changes without documented and approved change records.

## Scope

- Add pre-execution checkpoint controls to change policy.
- Publish reusable checkpoint standard and record template.
- Update work-order template to capture checkpoint evidence.
- Log decision, change, and risk records for traceability.

## Out of Scope

- Automation of checkpoint enforcement in CI workflows.
- Retroactive normalization of historical work orders.

## Dependencies

- `PLN-2026-001` governance baseline completed.

## Required Approvals

- Area owner approval: Robert

## Acceptance Criteria

- Major/Critical checkpoint policy is documented in change control policy.
- Checkpoint standard is published with pass/fail criteria.
- Work-order template includes checkpoint evidence fields.
- Governance logs and plan state are updated.

## Evidence Required

- `docs/01_governance/CHANGE_CONTROL.md`
- `docs/04_operations/standards/CHANGE_CONTROL_REVIEW_CHECKPOINT.md`
- `docs/03_work_orders/templates/WORK_ORDER_TEMPLATE.md`
- `logs/decisions/DEC-2026-0314-002.md`
- `logs/changes/CHG-2026-0314-003.md`
- `logs/risks/RSK-2026-0314-002.md`
- `project-plan.csv`

## Risks

- Inconsistent adoption if checkpoint review is skipped in fast-moving work.

## Decision and Change References

- `logs/decisions/DEC-2026-0314-002.md`
- `logs/changes/CHG-2026-0314-003.md`
- `logs/risks/RSK-2026-0314-002.md`

## Change Control Checkpoint

- Change ID: `CHG-2026-0314-003`
- Change Class: Major
- Approver: Robert
- Approval Date: 2026-03-14
- Checkpoint Status: Pass
- Notes: Checkpoint design and policy links validated before publication.

## Execution Notes

Completed as policy and template release with explicit checkpoint standard.

## Completion Check

- [x] Acceptance criteria met
- [x] Evidence attached
- [x] Risks updated
- [x] Plan status updated
