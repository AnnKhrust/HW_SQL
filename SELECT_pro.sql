--Количество исполнителей в каждом жанре.
SELECT g.name, COUNT(*) FROM genressingers gs
LEFT JOIN genre g ON g.genre_id = gs.genre_id
GROUP BY g.name

--Количество треков, вошедших в альбомы в выбранный период.
SELECT COUNT(*) FROM track t
JOIN album a ON t.album = a.album_id 
WHERE release_date BETWEEN 2018 AND 2021

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(t.duration) FROM track t 
JOIN album a ON t.album = a.album_id
GROUP BY a.name

--Все исполнители, которые не выпустили альбомы в определенном году.
SELECT s.name  FROM albumssingers als 
JOIN album a ON als.album_id = a.album_id 
JOIN singer s ON als.singer_id = s.singer_id 
WHERE a.release_date != 2021

--Названия сборников, в которых присутствует конкретный исполнитель
SELECT c.name FROM collection c 
JOIN collectionstracks c2  ON c.collection_id  = c2.collection_id  
JOIN track t ON c2.track_id = t.track_id
JOIN album a ON a.album_id = t.album
JOIN albumssingers a3  ON a.album_id = a3.album_id
JOIN singer s  ON a3.singer_id = s.singer_id 
WHERE s.name LIKE 'Queen'

--Названия сборников, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT c.name FROM collection c 
JOIN collectionstracks c2  ON c.collection_id  = c2.collection_id  
JOIN track t ON c2.track_id = t.track_id
JOIN album a ON a.album_id = t.album
JOIN albumssingers a3  ON a.album_id = a3.album_id
JOIN singer s  ON a3.singer_id = s.singer_id
WHERE s.name IN (SELECT s.name FROM genressingers g 
						JOIN singer s ON g.singer_id  = s.singer_id 
						GROUP BY s.name
						HAVING COUNT(*) > 1)

--Наименования треков, которые не входят в сборники.
SELECT t.name FROM track t 
LEFT JOIN collectionstracks ct ON ct.track_id = t.track_id 
WHERE ct.track_id IS NULL 

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек
SELECT s.name FROM singer s 
JOIN albumssingers als ON als.singer_id = s.singer_id 
JOIN album a ON als.album_id = a.album_id 
JOIN track t ON t.album = a.album_id 
WHERE t.duration = (SELECT MIN(t.duration) FROM track t)

--Названия альбомов, содержащих наименьшее количество треков.
SELECT c.name, count(ct.track_id)  FROM collection c 
JOIN collectionstracks ct ON ct.collection_id = c.collection_id 
JOIN track t ON t.track_id = ct.track_id 
GROUP BY c.name
ORDER BY count ASC 
LIMIT 1

