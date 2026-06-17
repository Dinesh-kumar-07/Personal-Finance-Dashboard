USE finup;

-- ── Users ────────────────────────────────────────────────────
SELECT '===== USERS =====' AS '';
SELECT * FROM users;

-- ── Transactions ─────────────────────────────────────────────
SELECT '===== TRANSACTIONS =====' AS '';
SELECT * FROM transactions;

-- ── Goals ────────────────────────────────────────────────────
SELECT '===== GOALS =====' AS '';
SELECT * FROM goals;

-- ── Achieved Goals ───────────────────────────────────────────
SELECT '===== ACHIEVED GOALS =====' AS '';
SELECT * FROM achieved_goals;

-- ── Reports (without large base64/json columns) ──────────────
SELECT '===== REPORTS =====' AS '';
SELECT id, name, filed_at, total_income, total_debit, tx_count, period, account_holder, user_id, storage_name
FROM reports;
