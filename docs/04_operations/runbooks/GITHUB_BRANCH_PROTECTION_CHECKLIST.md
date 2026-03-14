# GitHub Branch Protection Checklist

## Purpose

Configure branch protection so security and governance checks are required before
merge.

## Target Branch

- `main`

## Required Settings

1. Require a pull request before merging.
2. Require at least one approval.
3. Dismiss stale pull request approvals when new commits are pushed.
4. Require conversation resolution before merge.
5. Require status checks to pass before merging.
6. Require branches to be up to date before merging.
7. Include administrators in protection rules.
8. Restrict who can push directly to `main`.

## Required Status Checks

- `Secret Scan`

## Optional Recommended Checks

- Markdown lint check
- Link validation check
- Policy/gov quality gate check

## Setup Steps

1. Go to repository `Settings` > `Branches`.
2. Add or edit a protection rule for `main`.
3. Enable required pull request reviews.
4. Enable required status checks and select `Secret Scan`.
5. Enable `Require branches to be up to date`.
6. Enable `Include administrators`.
7. Save rule.

## Validation Steps

1. Open a test pull request.
2. Confirm merge is blocked until `Secret Scan` passes.
3. Confirm direct push to `main` is blocked for non-exempt users.

## Operational Notes

- If status check names change, update the rule.
- Re-validate rule settings after workflow renames.
- Review protection settings quarterly.
