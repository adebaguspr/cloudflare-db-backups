PRAGMA defer_foreign_keys=TRUE;
CREATE TABLE kv_store (key TEXT PRIMARY KEY, value TEXT NOT NULL, updated_at TEXT DEFAULT (datetime('now')));
INSERT INTO "kv_store" ("key","value","updated_at") VALUES('jkb_pin','081296','2026-06-28 04:32:15');
INSERT INTO "kv_store" ("key","value","updated_at") VALUES('tools_hub:jekbudget','{"cycleOffset":1,"cats":[],"txs":[],"wealthItems":[],"debtItems":[],"lastUpdated":1785244654210}','2026-07-28 13:17:34');
