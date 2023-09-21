--2

SELECT track_name, duration
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT track_name
FROM tracks
WHERE duration > 210;

SELECT collection_name
FROM song_collection
WHERE collection_year_of_realise BETWEEN 2018 AND 2020;

SELECT performer_name 
FROM performers
WHERE performer_name NOT LIKE '% %';

SELECT track_name 
FROM tracks
WHERE track_name iLIKE 'мой%' 
	OR track_name ILIKE '% мой' 
	OR track_name ILIKE '% мой %' 
	OR track_name ILIKE 'мой'
	OR track_name ILIKE 'my%'
	OR track_name ILIKE '% my' 
	OR track_name ILIKE '% my %' 
	OR track_name ILIKE 'my';


--3 

SELECT genre_name, count(performer_name) FROM Performers AS p
JOIN Performer_genre_list AS pg ON p.performer_id = pg.performer_id 
JOIN Genres AS g ON pg.music_genre_id = g.music_genre_id 
GROUP BY g.music_genre_id ;


SELECT COUNT(track_id) FROM Tracks AS t
JOIN albums a ON t.album_id = a.album_id
WHERE a.album_year_of_realise BETWEEN 2019 AND 2021;


SELECT album_name, AVG(duration) FROM Tracks t
JOIN albums a ON a.album_id = t.album_id
GROUP BY a.album_name;


SELECT performer_name FROM Performers p 
JOIN Performer_album_list pal ON pal.performer_id = p.performer_id
JOIN albums a ON a.album_id = pal.album_id
WHERE a.album_year_of_realise <> 2020;


SELECT DISTINCT collection_name FROM song_collection sc
JOIN song_collection_list scl ON scl.collection_id = sc.collection_id
JOIN tracks t ON t.track_id = scl.track_id 
JOIN albums a ON a.album_id = t.album_id
JOIN Performer_album_list pal ON pal.album_id = a.album_id
JOIN Performers p ON p.performer_id =pal.performer_id 
WHERE p.performer_name LIKE 'Баста';

