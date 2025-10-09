--sqlite3 db/db.sqlite < queries/features.sql > reports/features.json
.mode json
SELECT * FROM features;