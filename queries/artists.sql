--sqlite3 db/db.sqlite < queries/artists.sql > reports/artists.json
.mode json
SELECT * FROM artists;