SHELL := /bin/bash

.PHONY: help lint-md lint-md-fix check clean db-up db-down db-logs db-psql db-backup db-seed db-reset

help:
	@echo "Available targets:"
	@echo "  make lint-md      - Lint all markdown files"
	@echo "  make lint-md-fix  - Auto-fix markdown lint issues"
	@echo "  make check        - Run all repository checks"
	@echo "  make db-up        - Start local PostgreSQL (Docker Compose)"
	@echo "  make db-down      - Stop local PostgreSQL"
	@echo "  make db-logs      - Tail PostgreSQL logs"
	@echo "  make db-psql      - Open psql shell in container"
	@echo "  make db-backup    - Create SQL backup in data/backups"
	@echo "  make db-seed      - Apply sample seed data"
	@echo "  make db-reset     - Reset schema and reseed (requires CONFIRM=1)"
	@echo "  make clean        - Remove common local cache files"

lint-md:
	npx -y markdownlint-cli2 "**/*.md" ".github/**/*.md"

lint-md-fix:
	npx -y markdownlint-cli2 --fix "**/*.md" ".github/**/*.md"

check: lint-md

db-up:
	@if [ ! -f .env ]; then cp .env.example .env; fi
	docker compose up -d postgres

db-down:
	docker compose down

db-logs:
	docker compose logs -f postgres

db-psql:
	docker compose exec postgres psql -U $${POSTGRES_USER:-projectoffice} -d $${POSTGRES_DB:-projectoffice}

db-backup:
	@mkdir -p data/backups
	docker compose exec -T postgres pg_dump -U $${POSTGRES_USER:-projectoffice} -d $${POSTGRES_DB:-projectoffice} > data/backups/projectoffice_$$(date +%Y%m%d_%H%M%S).sql

db-seed:
	docker compose exec -T postgres psql -U $${POSTGRES_USER:-projectoffice} -d $${POSTGRES_DB:-projectoffice} < data/sql/seeds/001_sample_data.sql

db-reset:
	@if [ "$${CONFIRM}" != "1" ]; then \
		echo "Refusing to reset database without confirmation."; \
		echo "Run: make db-reset CONFIRM=1"; \
		exit 1; \
	fi
	@if [ ! -f .env ]; then cp .env.example .env; fi
	docker compose up -d postgres
	@echo "Waiting for PostgreSQL to become ready..."
	@until docker compose exec -T postgres pg_isready -U $${POSTGRES_USER:-projectoffice} -d $${POSTGRES_DB:-projectoffice} >/dev/null 2>&1; do \
		sleep 1; \
	done
	@echo "Dropping and recreating public schema..."
	docker compose exec -T postgres psql -U $${POSTGRES_USER:-projectoffice} -d $${POSTGRES_DB:-projectoffice} -c "DROP SCHEMA IF EXISTS public CASCADE; CREATE SCHEMA public;"
	@echo "Re-applying base schema..."
	docker compose exec -T postgres psql -U $${POSTGRES_USER:-projectoffice} -d $${POSTGRES_DB:-projectoffice} < data/sql/init/001_schema.sql
	$(MAKE) db-seed

clean:
	rm -rf .cache .tmp
	rm -f .markdownlint-cache
