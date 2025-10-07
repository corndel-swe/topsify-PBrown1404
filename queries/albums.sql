--sqlite3 db/db.sqlite < queries/albums.sql > reports/albums.json
.mode json
SELECT albums.*, artists.name AS artist_name
FROM albums
INNER JOIN artists ON artists.id = albums.artist_id;