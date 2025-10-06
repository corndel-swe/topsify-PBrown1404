--sqlite3 db/db.sqlite < queries/albums.sql > reports/albums.json
.mode json
SELECT * FROM albums;