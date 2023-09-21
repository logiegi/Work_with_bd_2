INSERT INTO Genres(genre_name)
VALUES
('Rap'),
('Rock'),
('Pop');

INSERT INTO Performers(performer_name)
VALUES
('Oxxxymiron'),
('Linkin Park'),
('Дора'),
('Gorillaz');

INSERT INTO Performer_genre_list(music_genre_id, performer_id)
VALUES
(1,1),
(2,1),
(2,2),
(2,3),
(2,4),
(3,2),
(3,3);

INSERT INTO Albums(album_name, album_year_of_realise)
VALUES 
('Красота и Уродство', 2021),
('Minutes to Midnight', 2007),
('MISS', 2022),
('Demon Days', 2005);


INSERT INTO Tracks(album_id, duration, track_name)
VALUES
(4, 295, 'Every Planet We Reach Is Dead'),
(4, 228, 'Kids With Guns'),
(1, 115, 'Эспрессо Тоник'),
(1, 67, 'Рецензия'),
(2, 196, 'Valentines Day'),
(3, 223, 'Нет тебя');


INSERT INTO Performer_album_list(album_id, performer_id)
VALUES
(1,1),
(2,2),
(4,4),
(3,3);

INSERT INTO song_collection(collection_name, collection_year_of_realise)
VALUES
('100 суперхитов', 2023),
('Ностальгия. Нулевые', 2019),
('Лето23: камбэк', 2021),
('Что слушали в 2016 на Яндекс Музыке', 2017);


INSERT INTO Song_collection_list(collection_id, track_id)
VALUES
(1,3),
(1,4),
(1,6),
(2,1),
(2,2),
(2,5),
(3,5),
(4,2);


INSERT INTO Performers(performer_name)
VALUES
('Баста');

INSERT INTO Performer_genre_list(music_genre_id, performer_id)
VALUES
(1,5);

INSERT INTO Albums(album_name, album_year_of_realise)
VALUES 
('Сто из Ста', 2008);

INSERT INTO Tracks(album_id, duration, track_name)
VALUES
(5, 260, 'Мой стиль');

INSERT INTO Performer_album_list(album_id, performer_id)
VALUES
(5,5);

INSERT INTO Song_collection_list(collection_id, track_id)
VALUES
(1,7),
(2,7);

