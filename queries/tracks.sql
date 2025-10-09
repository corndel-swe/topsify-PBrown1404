--sqlite3 db/db.sqlite < queries/tracks.sql > reports/tracks.json
.mode json
SELECT tracks.*, artists.name AS artist_name FROM albums
INNER JOIN artists ON artists.id = albums.artist_id
INNER JOIN tracks ON tracks.album_id = albums.id;