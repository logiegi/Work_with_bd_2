CREATE TABLE IF NOT EXISTS Genres(
  music_genre_id SERIAL PRIMARY KEY,
  genre_name VARCHAR(50) NOT NULL
 );
  
CREATE TABLE IF NOT EXISTS Performers(
  performer_id SERIAL PRIMARY KEY,
  performer_name VARCHAR(50) NOT NULL
 );

CREATE TABLE IF NOT EXISTS Performer_genre_list(
  music_genre_id INTEGER REFERENCES Genres(music_genre_id), 
  performer_id INTEGER REFERENCES Performers(performer_id),
  CONSTRAINT pk_Performer_genre_list PRIMARY KEY (music_genre_id, performer_id));
  
CREATE TABLE IF NOT EXISTS Albums(
  album_id SERIAL PRIMARY KEY,
  album_name VARCHAR(50) NOT NULL,
  album_year_of_realise INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer_album_list(
  album_id INTEGER REFERENCES Albums(album_id), 
  performer_id INTEGER REFERENCES Performers(performer_id),
  CONSTRAINT pk_Performer_album_list PRIMARY KEY (album_id, performer_id));
 
CREATE TABLE IF NOT EXISTS Tracks(
  track_id SERIAL PRIMARY KEY,
  album_id INTEGER REFERENCES Albums(album_id),
  duration INTEGER NOT NULL,
  track_name VARCHAR(50) NOT NULL
);
  
CREATE TABLE IF NOT EXISTS Song_collection(
  collection_id SERIAL PRIMARY KEY,
  collection_name VARCHAR(50) NOT NULL,
  collection_year_of_realise INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Song_collection_list(
  collection_id INTEGER REFERENCES Song_collection(collection_id), 
  track_id INTEGER REFERENCES Tracks(track_id),
  CONSTRAINT pk_Song_collection_list PRIMARY KEY (collection_id, track_id));

