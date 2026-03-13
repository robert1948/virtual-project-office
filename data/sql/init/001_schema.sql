-- Core local schema for project office operations.

CREATE TABLE IF NOT EXISTS ventures (
  id SERIAL PRIMARY KEY,
  venture_code TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'active',
  owner TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS work_orders (
  id SERIAL PRIMARY KEY,
  work_order_code TEXT UNIQUE NOT NULL,
  venture_id INTEGER REFERENCES ventures(id) ON DELETE SET NULL,
  title TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'planned',
  priority TEXT NOT NULL DEFAULT 'medium',
  owner TEXT,
  due_date DATE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS decisions (
  id SERIAL PRIMARY KEY,
  decision_code TEXT UNIQUE NOT NULL,
  title TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'approved',
  owner TEXT,
  approver TEXT,
  decision_date DATE NOT NULL,
  evidence_link TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS risks (
  id SERIAL PRIMARY KEY,
  risk_code TEXT UNIQUE NOT NULL,
  category TEXT NOT NULL,
  description TEXT NOT NULL,
  impact INTEGER NOT NULL CHECK (impact BETWEEN 1 AND 5),
  likelihood INTEGER NOT NULL CHECK (likelihood BETWEEN 1 AND 5),
  score INTEGER GENERATED ALWAYS AS (impact * likelihood) STORED,
  owner TEXT,
  status TEXT NOT NULL DEFAULT 'open',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS changes (
  id SERIAL PRIMARY KEY,
  change_code TEXT UNIQUE NOT NULL,
  class TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'proposed',
  summary TEXT NOT NULL,
  requester TEXT,
  approver TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO ventures (venture_code, name, status, owner)
VALUES ('VNT-001', 'CapeControl', 'active', 'Robert')
ON CONFLICT (venture_code) DO NOTHING;
