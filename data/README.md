# Data Layer

This folder contains local database assets for the project office.

## Layout

- `sql/init/` - Initialization SQL applied on first database boot
- `sql/seeds/` - Repeatable sample data scripts for local testing
- `backups/` - Local SQL backups created via `make db-backup`

## Quick Start

1. Copy environment defaults: `cp .env.example .env`
2. Start database: `make db-up`
3. Open SQL shell: `make db-psql`
4. Load sample data: `make db-seed`
5. Stop database: `make db-down`

## Reset Workflow

- Rebuild database from scratch and re-apply seed data:
  `make db-reset CONFIRM=1`

## Notes

- Initialization SQL runs only when `.pgdata/` is empty.
- `make db-reset CONFIRM=1` automates a full reset for local development.
