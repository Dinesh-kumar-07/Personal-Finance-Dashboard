-- ============================================================
-- FinUP MySQL Schema
-- Run once to bootstrap the database.
-- Usage:  mysql -u root -p < mysql_schema.sql
-- ============================================================

CREATE DATABASE IF NOT EXISTS `finup`
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE `finup`;

-- ── Users ────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS users (
    id            VARCHAR(36)   NOT NULL PRIMARY KEY,
    username      VARCHAR(255)  UNIQUE,
    display_name  VARCHAR(255),
    password_hash VARCHAR(512),
    created_at    VARCHAR(32)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ── Transactions ─────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS transactions (
    id          VARCHAR(36)   NOT NULL PRIMARY KEY,
    date        VARCHAR(20),
    description TEXT,
    amount      DOUBLE        DEFAULT 0,
    type        VARCHAR(16),
    category    VARCHAR(64),
    mode        VARCHAR(32),
    is_card     INT           DEFAULT 0,
    balance     DOUBLE        DEFAULT 0,
    confidence  DOUBLE        DEFAULT 0,
    source_file VARCHAR(512),
    user_id     VARCHAR(36)   DEFAULT '',
    INDEX idx_txn_user (user_id),
    INDEX idx_txn_file (source_file(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ── Goals ────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS goals (
    id          VARCHAR(36)  NOT NULL PRIMARY KEY,
    name        VARCHAR(255),
    target      DOUBLE       DEFAULT 0,
    saved       DOUBLE       DEFAULT 0,
    color       VARCHAR(16),
    created_at  VARCHAR(32),
    deadline    VARCHAR(64),
    completed   INT          DEFAULT 0,
    user_id     VARCHAR(36)  DEFAULT '',
    INDEX idx_goals_user (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ── Achieved Goals ───────────────────────────────────────────
CREATE TABLE IF NOT EXISTS achieved_goals (
    id          VARCHAR(36)  NOT NULL PRIMARY KEY,
    name        VARCHAR(255),
    target      DOUBLE       DEFAULT 0,
    color       VARCHAR(16),
    achieved_at VARCHAR(32),
    user_id     VARCHAR(36)  DEFAULT '',
    INDEX idx_achieved_user (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ── Reports ──────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS reports (
    id               VARCHAR(36)   NOT NULL PRIMARY KEY,
    name             VARCHAR(512),
    filed_at         VARCHAR(32),
    total_income     DOUBLE        DEFAULT 0,
    total_debit      DOUBLE        DEFAULT 0,
    tx_count         INT           DEFAULT 0,
    report_excel_b64 LONGTEXT,
    summary_json     LONGTEXT,
    period           VARCHAR(128),
    account_holder   VARCHAR(255),
    user_id          VARCHAR(36)   DEFAULT '',
    storage_name     VARCHAR(512)  DEFAULT '',
    INDEX idx_reports_user (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
