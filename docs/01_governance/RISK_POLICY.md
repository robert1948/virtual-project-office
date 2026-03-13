# Risk Policy

Defines risk categories, escalation thresholds, and mitigation standards.

## Purpose

Ensure risks are identified early, assessed consistently, and mitigated with
clear ownership and evidence.

## Risk Categories

- Strategic: Misalignment with mission, vision, or portfolio direction
- Delivery: Scope, schedule, or quality failure
- Operational: Process, tooling, or execution breakdown
- Compliance: Policy, legal, or contractual exposure
- Security: Access, data, or infrastructure vulnerabilities
- Financial: Budget overrun or value shortfall
- Reputational: Trust or credibility damage

## Rating Model

- Impact: 1 (Low) to 5 (Critical)
- Likelihood: 1 (Rare) to 5 (Almost Certain)
- Risk Score: `Impact x Likelihood`

## Escalation Thresholds

- 1-6: Monitor at working level
- 8-12: Review weekly with governance owner
- 15-25: Immediate escalation to Robert for decision

## Required Fields Per Risk

- Risk ID
- Category
- Description
- Trigger
- Impact
- Likelihood
- Score
- Owner
- Mitigation Plan
- Contingency Plan
- Review Date
- Status

## Response Standards

- Avoid: Change plan to remove the risk source
- Reduce: Lower impact or likelihood with controls
- Transfer: Shift ownership through contract or provider
- Accept: Accept exposure with explicit approval

## Review Cadence

- Active high-risk items: Weekly
- Medium-risk items: Bi-weekly
- Low-risk items: Monthly

## Approval Rule

Any risk with a score of 15 or higher requires Robert's explicit approval of
the response strategy.
