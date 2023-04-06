-- Название и год выхода альбомов, вышедших в 2018 году
SELECT name, release_date FROM album
WHERE release_date = 2018

SELECT name, release_date FROM album
WHERE release_date < 2018


-- Название и продолжительность самого длительного трека
SELECT name, duration FROM track
WHERE duration = (SELECT max(duration) FROM track)

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM track
WHERE duration > 210

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collection
WHERE release_date BETWEEN 2018 AND 2020

SELECT name FROM collection
WHERE release_date BETWEEN 1990 AND 2010

-- Исполнители, чьё имя состоит из одного слова.
SELECT name FROM singer
WHERE name NOT LIKE '% %'

-- Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name LIKE '%My %'

