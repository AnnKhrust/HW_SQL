INSERT INTO singer (name) VALUES
	('Queen'),
	('Deep Purple'),
	('Kiss'),
	('Audioslave'),
	('Resolve'),
	('The Offspring'),
	('Black Sabbath'),
	('Muse'), 
	('Linkin Park'), 
	('System of a Down'), 
	('Imagine Dragons'), 
	('Nirvana'),	
	('Metallica'),
	('Green Day'),
	('Radiohead'),
	('Guano Apes');
	
	
INSERT INTO genre (name) VALUES
	('Hard Rock'), ('Heavy Metal'), ('Alternative'), ('Punk Rock'), ('New Metal');
	
INSERT INTO genressingers VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 3),
	(1, 4),
	(3, 4),
	(2, 5),
	(3, 5),
	(4, 6),
	(2, 7),
	(3, 8),
	(5, 9),
	(5, 10),
	(3, 11),
	(5, 11),
	(3, 12),
	(1, 13),
	(2, 13),
	(3, 14),
	(4, 14),
	(3, 15),
	(3, 16),
	(5, 16);

INSERT INTO album (name, release_date) VALUES 
	('News Of The World', 1977),
	('Stormbringer', 1974),
	('Love Gun', 1977),
	('Out of Exile', 2005),
	('Between Me and The Machine', 2021),
	('Summer Nationals', 2014),
	('Heaven & Hell', 1980),
	('Absolution', 2003),
	('One More Light', 2017),
	('The Rough Dog', 2018),
	('Mercury - Act 1', 2021),
	('Nevermind', 1991),
	('Some Kind Of Monster', 2004),
	('American Idiot', 2004),
	('The Bends', 1995),
	('Proud Like a God XX', 2017);

INSERT INTO albumssingers VALUES
 (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16);
	
		
INSERT INTO track VALUES
	(1, 1, 'We Are The Champions', 186),
	(2, 2, 'Love Dont Mean A Thing', 268),
	(3, 3, 'Love Gun', 195),
	(4, 4, 'Man Or Animal', 232),
	(5, 5, 'With Love', 188),
	(6, 6, 'No Control', 107),
	(7, 7, 'Children Of The Sea', 384),
	(8, 8, 'Apocalypse Please', 252),
	(9, 9, 'Invisible', 214),
	(10, 10, 'The Rough Dog', 329),
	(11, 11, 'Enemy', 173),
	(12, 12, 'Stay Away', 211),
	(13, 13, 'Some Kind Of Monster', 256),
	(14, 14, 'Extraordinary Girl', 460),
	(15, 15, 'Fake Plastic Trees', 291),
	(16, 16, 'Rain', 266);

INSERT INTO collection (name, release_date) VALUES 
	('Best of the Bests', 1990),
	('Greates Hits', 1995),
	('Gold Collection', 2000),
	('20th century', 2001),
	('Icons', 2020),
	('Rock collection', 2015),
	('The Best 2004', 2005 ),
	('Rock Hits of 2021', 2022);

INSERT INTO collectionstracks  VALUES 
	(1, 2), (1, 1), (1, 3), (1, 7),
	(2, 7), (2, 12), (2, 15),
	(3, 1), (3, 7), (3, 12),
	(4, 1), (4, 3), (4, 7),
	(5, 13), (5, 7), (5, 1), (5, 3), (5, 12),
	(6, 6),
	(7, 13), (7, 14),
	(8, 5), (8, 11);