# Change Control

Defines how scope, priority, and release-impacting changes are proposed,
reviewed, and approved.

## Purpose

Prevent uncontrolled changes and maintain traceable, approved execution.

## Change Classes

- Minor: No impact on release, budget, or external commitments
- Major: Impacts scope, timeline, dependencies, or quality gates
- Critical: Impacts production, contractual commitments, or strategic outcomes

## Required Change Request Fields

- Change ID
- Request Date
- Requester
- Affected Area
- Current State
- Proposed Change
- Reason for Change
- Impact Assessment
- Risk Assessment
- Rollback Plan
- Recommended Class
- Approval Required

## Workflow

1. Submit a documented change request.
2. Assess impact and risk.
3. Classify change as Minor, Major, or Critical.
4. Route for approval based on class.
5. Execute approved change.
6. Record outcome and evidence in change log.

## Pre-Execution Checkpoint (Major and Critical)

Before execution starts, the following checkpoint must pass:

1. A linked `CHG` record exists.
2. Change class is explicitly documented.
3. Required approver is captured.
4. Risks and rollback plan are documented.
5. Evidence plan is documented.

If any checkpoint item is missing, execution is blocked.

Reference standard:
`docs/04_operations/standards/CHANGE_CONTROL_REVIEW_CHECKPOINT.md`

## Approval Matrix

- Minor: Area owner approval
- Major: Governance owner plus area owner approval
- Critical: Robert's explicit approval before execution

## Non-Negotiable Controls

- No undocumented scope changes.
- No production-impacting changes without explicit approval.
- Every approved change must include evidence of outcome.
- No Major/Critical change may start without a passed checkpoint.

## Change Record Template

```md
### CHG-YYYY-MMDD-001

- Date:
- Requester:
- Area:
- Class: Minor | Major | Critical
- Status: Proposed | Approved | Rejected | Implemented
- Approver:

#### Change Summary

#### Impact

#### Risks

#### Rollback

#### Evidence
```
