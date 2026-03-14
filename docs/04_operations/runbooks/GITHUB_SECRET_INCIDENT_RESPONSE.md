# GitHub Secret Incident Response Runbook

## Purpose

Respond quickly and safely when a credential or token is exposed in a GitHub
repository.

## Scope

Use this runbook for any accidental secret exposure in code, docs, issues,
comments, or commit history.

## Severity and Priority

- Treat confirmed secret exposure as `SEV-1` until key revocation is complete.
- Begin containment immediately.

## Roles

- Incident owner: Responsible for coordination and closure.
- Repo maintainer: Responsible for code and history cleanup.
- Cloud owner: Responsible for credential revocation and rotation.

## Immediate Containment (0-15 minutes)

1. Confirm exposure location and secret type.
2. Revoke or disable the exposed credential at provider source.
3. Rotate credential and redeploy dependent services.
4. Record incident start time and actions taken.

## Repository Remediation (15-60 minutes)

1. Remove secret from current files and commit the removal.
2. Purge secret from git history using `git filter-repo` or BFG.
3. Force-push rewritten history and tags.
4. Invalidate caches/forks where possible and notify collaborators to re-clone.

## Verification

1. Scan repository with gitleaks.
2. Search for known secret patterns.
3. Confirm no remaining matches in current tree and history.
4. Verify CI secret scan passes.

## Investigation and Impact Assessment

- Check CloudTrail (or provider equivalent) for usage between exposure and
  revocation.
- Identify impacted systems, data access, and timeframe.
- Classify incident impact and required notifications.

## Communication Checklist

- Open an incident record in `logs/changes/`.
- Open/update a risk record in `logs/risks/`.
- Record governance decision(s) in `logs/decisions/` when required.
- Notify stakeholders with timeline, impact, and remediation status.

## Recovery Hardening

- Enforce GitHub secret scanning and push protection.
- Require CI status check for secret scanning.
- Enable local pre-commit scanning for contributors.
- Replace long-lived credentials with short-lived role-based auth.

## Exit Criteria

- Exposed secret revoked and rotated.
- Repository and history cleaned.
- Post-remediation scans pass.
- Incident log, risk log, and follow-up actions documented.

## Command Snippets

```bash
# Scan current tree
pre-commit run --all-files

# Search for common key indicators
rg -n "AKIA|ASIA|aws_access_key_id|aws_secret_access_key|PRIVATE KEY" .
```
