# Governance Model

Defines authority boundaries, review gates, and approval requirements for
project office work.

## Purpose

Create a consistent control system so execution stays aligned with mission,
risk tolerance, and founder approval boundaries.

## Authority Chain

- Robert: Final decision authority for strategic, critical-risk, and
  production-impacting changes
- CapeAI: Governance advisor for policy alignment and planning discipline
- VS_Chat: Orchestrator responsible for sequencing, review readiness, and handoff
- Codex: Implementer responsible for controlled execution and evidence capture

## Decision Rights

- Strategic direction and critical changes: Robert approval required
- Portfolio prioritization and dependency sequencing: Robert with CapeAI input
- Operational process changes: Governance owner approval
- Documentation, templates, and low-risk updates: Area owner approval

## Governance Gates

1. Intake Gate
   Confirm objective, scope, owner, and success metric.
2. Planning Gate
   Define dependencies, acceptance criteria, evidence required, and risks.
3. Approval Gate
   Route decisions and changes per class and risk score thresholds.
4. Execution Gate
   Execute approved work order with evidence-first updates.
5. Closure Gate
   Validate acceptance criteria, log outcomes, and capture follow-up actions.

## Required Artifacts

- `project-plan.csv` for canonical planning state
- Work order in `docs/03_work_orders/active/`
- Decision entry for cross-functional or high-impact choices
- Change record for scope/priority/release-impacting modifications
- Risk entry for identified threats and mitigation tracking

## Approval and Escalation Rules

- Critical changes require Robert approval before execution.
- Risks scoring 15 or higher require Robert approval of response strategy.
- No undocumented scope change can proceed.
- No release-impacting activity proceeds without explicit approval.

## Review Cadence

- Daily: Active work order status and blockers
- Weekly: Portfolio health, risk review, and dependency checks
- Bi-weekly: Template/process quality and governance drift checks
- Monthly: Founder review of outcomes, decisions, and risk posture

## Evidence Standard

All completed work must include evidence links or references:

- updated file paths
- log entry IDs
- acceptance criteria pass/fail status
- unresolved follow-up actions with owners

## Definition of Done for Governance-Controlled Work

- Scope and acceptance criteria were documented before execution.
- Required approvals were captured.
- Evidence was recorded in the appropriate logs.
- Risks and decisions were updated if applicable.
- `project-plan.csv` status and notes were updated.

## Exception Handling

Emergency actions may proceed only to stabilize critical operations. A retroactive
change record and decision entry must be filed within one business day.
