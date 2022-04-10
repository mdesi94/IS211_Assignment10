import sqlite3

DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
    artist_id integer primary key asc,
    artist_name varchar(100)
);

DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    album_id integer primary key asc,
    album_title varchar(150),
    artist_name varchar(100)
    FOREIGN KEY(artist_name) REFERENCES(artists.artist_name)
);

DROP TABLE IF EXISTS songs;
CREATE TABLE songs (
    song_id integer primary key asc,
    song_title varchar(150),
    album_title varchar(150),
    track_number integer,
    song_length integer
    FOREIGN KEY(album_title) REFERENCES(albums.album_title)
);
