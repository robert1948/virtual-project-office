# PostgreSQL Local Workflow Runbook

## Purpose

Provide a repeatable local workflow to start PostgreSQL, seed sample data,
reset schema, and verify expected baseline counts.

## Preconditions

- Docker and Docker Compose are installed.
- `.env` exists in repository root.
- Commands are run from repository root.

## Standard Workflow

1. Start PostgreSQL service.

```bash
make db-up
```

1. Confirm service is healthy.

```bash
docker compose ps postgres
```

1. Seed sample data.

```bash
make db-seed
```

1. Verify counts after seed.

```bash
docker compose exec -T postgres \
  psql -U ${POSTGRES_USER:-projectoffice} \
  -d ${POSTGRES_DB:-projectoffice} \
  -c "SELECT COUNT(*) AS ventures FROM ventures;"
docker compose exec -T postgres \
  psql -U ${POSTGRES_USER:-projectoffice} \
  -d ${POSTGRES_DB:-projectoffice} \
  -c "SELECT COUNT(*) AS work_orders FROM work_orders;"
```

1. Reset and reseed database.

```bash
make db-reset CONFIRM=1
```

1. Verify counts after reset.

```bash
docker compose exec -T postgres \
  psql -U ${POSTGRES_USER:-projectoffice} \
  -d ${POSTGRES_DB:-projectoffice} \
  -c "SELECT COUNT(*) AS ventures_after_reset FROM ventures;"
docker compose exec -T postgres \
  psql -U ${POSTGRES_USER:-projectoffice} \
  -d ${POSTGRES_DB:-projectoffice} \
  -c "SELECT COUNT(*) AS work_orders_after_reset FROM work_orders;"
```

## Expected Baseline

- Service status reports `healthy`.
- Seed run completes without SQL errors.
- Reset run drops and recreates schema, then re-applies schema and seed scripts.
- Baseline counts depend on current seed file and may change over time.

## Troubleshooting

- If startup fails: check port conflicts on `${POSTGRES_PORT:-5432}`.
- If reset fails: ensure `CONFIRM=1` is provided.
- If counts are unexpected: run reset again, or remove `.pgdata` and re-run.
