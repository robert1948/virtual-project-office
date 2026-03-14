# Virtual Project Office

AI-assisted project office for planning, governance, and structured execution.

## Start Here

- `docs/00_foundation/PROJECT_OFFICE_CHARTER.md` - Charter and scope
- `docs/00_foundation/MISSION_STATEMENT.md` - Canonical mission statement
- `docs/00_foundation/VISION_STATEMENT.md` - Canonical vision statement
- `docs/00_foundation/CORE_VALUES.md` - Core values and operating posture
- `docs/02_portfolio/PORTFOLIO_MASTER_PLAN.md` - Portfolio planning baseline
- `project-plan.csv` - Canonical project planning state and priorities

## Documentation Notes

- Mission and vision source of truth live in
  `docs/00_foundation/MISSION_STATEMENT.md` and
  `docs/00_foundation/VISION_STATEMENT.md`
- Project planning source of truth lives in `project-plan.csv`
- Other documents may include short forms for context, but should align
  with these source files

## Structure

- `docs/00_foundation/` - Identity, mission, vision, charter
- `docs/01_governance/` - Policy, decisions, risk, change control
- `docs/02_portfolio/` - Portfolio plans, register, dependencies, backlog
- `docs/03_work_orders/` - Active and completed work orders, templates
- `docs/04_operations/` - SOPs, standards, and runbooks
- `docs/05_ai_workforce/` - AI role model, guardrails, and quality gates
- `docs/06_reporting/` - Weekly, monthly, and founder review reporting
- `docs/07_templates/` - Shared templates used across functions
- `docs/09_archive/` - Retired and historical records
- `ventures/` - Venture-specific strategy and delivery areas
- `logs/` - Decision, risk, and change logs

## Security Scanning

- CI secret scanning runs on pull requests and pushes to `main` via
  `.github/workflows/secret-scan.yml`
- Local pre-commit scanning is configured in `.pre-commit-config.yaml`
- Repository-specific scan tuning is in `.gitleaks.toml`

### Local Setup

```bash
python3 -m pip install pre-commit
pre-commit install
```

### Manual Scan

```bash
pre-commit run --all-files
```

## KPI Metrics Helper

Generate a weekly KPI metric snippet from `project-plan.csv`:

```bash
make kpi-weekly
```
