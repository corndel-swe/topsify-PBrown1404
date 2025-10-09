--sqlite3 db/db.sqlite <queries/playlists_tracks.sql > reports/playlists_tracks.txt

CREATE TABLE playlist_tracks (
playlist_id INTEGER NOT NULL,
track_id INTEGER NOT NULL,
FOREIGN KEY (playlist_id) REFERENCES playlist(id) ON DELETE CASCADE,
FOREIGN KEY (track_id) REFERENCES tracks(id) ON DELETE CASCADE
);