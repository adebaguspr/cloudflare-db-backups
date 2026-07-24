# adbhub-db-backups

Daily Cloudflare D1 SQL exports for restore-after-hack.

## Databases
- `adbhub-db` (hub projects/records)
- `adebudget-db`
- `adbwedding-db`
- `adbwedding2-db`

## Layout
```
daily/YYYY-MM-DD/
  adbhub-db.sql
  adebudget-db.sql
  adbwedding-db.sql
  adbwedding2-db.sql
  MANIFEST.txt
```

Retention: last **14 days** (script prunes older).

## Restore (yesterday example)
```bash
# from a machine with wrangler + CF token
DATE=$(date -d yesterday +%Y-%m-%d)   # or pick folder
DB=adebudget-db
# WARNING: remote execute can wipe/replace — prefer new DB or careful import
npx wrangler d1 execute "$DB" --remote --file="daily/${DATE}/${DB}.sql"
```

Prefer: create new D1 → import → rebind Pages if full disaster.

## Run backup
```bash
~/.hermes/scripts/adbhub-d1-backup.sh
```
Cron: daily 00:30 WIB.
