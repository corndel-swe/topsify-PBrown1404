.mode json
SELECT albums.name AS album_name, AVG(features.loudness) AS average_loudness, albums.release_date AS release_date
FROM albums
INNER JOIN artists ON artists.id = albums.artist_id
INNER JOIN tracks ON tracks.album_id = albums.id
INNER JOIN features ON features.track_id = tracks.id
GROUP BY artists.id
ORDER BY albums.release_date ASC;