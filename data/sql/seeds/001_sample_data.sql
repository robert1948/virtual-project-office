-- Idempotent sample data for local development.

INSERT INTO ventures (venture_code, name, status, owner)
VALUES
  ('VNT-001', 'CapeControl', 'active', 'Robert'),
  ('VNT-002', 'Project Office Ops', 'active', 'Robert')
ON CONFLICT (venture_code) DO NOTHING;

INSERT INTO work_orders (work_order_code, venture_id, title, status, priority, owner, due_date)
SELECT
  'WO-2026-0313-001',
  v.id,
  'Stand up governance-first repository structure',
  'in_progress',
  'high',
  'Robert',
  DATE '2026-03-20'
FROM ventures v
WHERE v.venture_code = 'VNT-001'
ON CONFLICT (work_order_code) DO NOTHING;

INSERT INTO work_orders (work_order_code, venture_id, title, status, priority, owner, due_date)
SELECT
  'WO-2026-0313-002',
  v.id,
  'Finalize reporting templates and cadence',
  'planned',
  'medium',
  'Robert',
  DATE '2026-03-27'
FROM ventures v
WHERE v.venture_code = 'VNT-002'
ON CONFLICT (work_order_code) DO NOTHING;

INSERT INTO decisions (decision_code, title, status, owner, approver, decision_date, evidence_link)
VALUES
  (
    'DEC-2026-0313-001',
    'Adopt governance-first project structure',
    'approved',
    'Robert',
    'Robert',
    DATE '2026-03-13',
    'docs/01_governance/DECISION_LOG.md'
  )
ON CONFLICT (decision_code) DO NOTHING;

INSERT INTO risks (risk_code, category, description, impact, likelihood, owner, status)
VALUES
  (
    'RSK-2026-0313-001',
    'Operational',
    'Documentation drift between governance docs and actual process.',
    3,
    3,
    'Robert',
    'open'
  ),
  (
    'RSK-2026-0313-002',
    'Delivery',
    'Work orders may be created without acceptance criteria.',
    4,
    2,
    'Robert',
    'open'
  )
ON CONFLICT (risk_code) DO NOTHING;

INSERT INTO changes (change_code, class, status, summary, requester, approver)
VALUES
  (
    'CHG-2026-0313-001',
    'Major',
    'implemented',
    'Restructured repository into foundation, governance, portfolio, and operations layers.',
    'Robert',
    'Robert'
  )
ON CONFLICT (change_code) DO NOTHING;
