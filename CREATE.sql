CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY, 
	name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Singer (
	singer_id SERIAL PRIMARY KEY,
	name VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	release_date INTEGER NOT NULL 
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY, 
	album INTEGER NOT NULL REFERENCES Album(album_id),
	name VARCHAR(250) NOT NULL,
	duration INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR (60),
	release_date INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS GenresSingers(
	genre_id INTEGER REFERENCES Genre(genre_id),
	singer_id INTEGER REFERENCES Singer(singer_id),
	CONSTRAINT gs PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS AlbumsSingers(
	album_id INTEGER REFERENCES Album(album_id),
	singer_id INTEGER REFERENCES Singer(singer_id),
	CONSTRAINT als PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS CollectionsTracks(
	collection_id INTEGER REFERENCES Collection(collection_id),
	track_id INTEGER REFERENCES Track(track_id),
	CONSTRAINT ct PRIMARY KEY (collection_id, track_id)
);




