-- List the name of every album in the database
-- Include the artist name
-- (Make sure to select the album name first, then the artist name)
SELECT albums.name,artists.name FROM albums,artists INNER JOIN albums ON artists.id = albums.artists_id;
