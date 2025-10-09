.mode json
SELECT artists.name AS artist_name, COUNT(tracks.explicit) AS explicit_track_count
FROM albums
INNER JOIN artists ON artists.id = albums.artist_id
INNER JOIN tracks ON tracks.album_id = albums.id
WHERE tracks.explicit > 0
GROUP BY artists.id
ORDER BY COUNT(tracks.explicit) DESC;