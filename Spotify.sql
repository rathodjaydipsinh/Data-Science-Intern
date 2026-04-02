
create database spotify;
show databases;
use spotify;

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
);


CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);


CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');


INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');


INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', 'Ã· (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', 'Ã· (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

  

INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

#Q-1. find all the distinct album names.
select distinct album_name 
from Tracks
order by album_name asc;

#Q-2. Who is the artist of song 'Never Seen the Rain'?
select artist_name 
from Tracks 
where track_name = 'Never Seen the Rain';

#Q-3. Name all the user & email, who have registered with gmail id.
select username, email 
from Users 
where email like '%@gmail.com';

#Q-4. List the name of users along with registration dates, who have registered after April-22.
select username, registration_date
from Users
where registration_date > '2022-04-30'
order by registration_date asc;

#Q-5. Extract the name of tracks, artists, albums and release dates for tracks released in year 2017
select track_name, artist_name, album_name, release_date
from Tracks
where release_date between '2017-01-01' and '2017-12-31'
order by release_date asc;

#Q-6. Find the details of the users who have registed in between may and august.
SELECT user_id, username, email, registration_date
FROM Users
WHERE registration_date BETWEEN '2022-05-01' AND '2022-08-31'
ORDER BY registration_date ASC;

#Q-7. Count the number of playlists created by each user.
SELECT user_id, COUNT(playlist_id) AS total_playlists
FROM Playlists
GROUP BY user_id
ORDER BY total_playlists DESC;

#Q-8. Find the track names and their durations for a specific album in the Tracks table.
SELECT track_name, duration 
FROM Tracks 
WHERE album_name = 'After Hours'
ORDER BY duration DESC;

#Q-9. Calculate the average duration of tracks in the Tracks table.
SELECT AVG(duration) AS average_duration_seconds
FROM Tracks;

#Q-10. How many users have registered with yahoo.com id?
SELECT COUNT(user_id) AS yahoo_user_count
FROM Users
WHERE email LIKE '%@yahoo.com';

#Q-11. Find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'.
SELECT Playlists.playlist_name, 
COUNT(PlaylistTracks.track_id) AS number_of_tracks
FROM Users 
JOIN Playlists  ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
WHERE Users.email LIKE '%@gmail.com'
GROUP BY Playlists.playlist_id, Playlists.playlist_name
ORDER BY number_of_tracks DESC;

#Q-12. Write a query to retrieve the usernames and email addresses of users who have created playlists with more than 5 tracks and an average track duration greater than 200 seconds.
select Users.username, Users.email
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
GROUP BY Users.user_id, Users.username, Users.email, Playlists.playlist_id
HAVING COUNT(PlaylistTracks.track_id) > 5 
   AND AVG(Tracks.duration) > 200;

#Q-13. Find the track and artist names of the tracks that have a duration greater than the average duration of all tracks in the 'Tracks' table.
SELECT track_name, artist_name, duration
FROM Tracks
WHERE duration > (SELECT AVG(duration) FROM Tracks)
ORDER BY duration DESC;

#Q-14. Find the users who have created playlists with tracks from all albums released in a specific year.
SELECT Users.username
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
WHERE YEAR(Tracks.release_date) = 2017
GROUP BY Users.user_id, Users.username, Playlists.playlist_id
HAVING COUNT(DISTINCT Tracks.album_name) = (
    SELECT COUNT(DISTINCT album_name)
    FROM Tracks
    WHERE YEAR(release_date) = 2017
);

#Q-15. Name of playlist and their total durations, sorted by the number of tracks in descending order.
SELECT Playlists.playlist_name, 
SUM(Tracks.duration) AS total_duration,
COUNT(PlaylistTracks.track_id) AS track_count
FROM Playlists
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
GROUP BY Playlists.playlist_id, Playlists.playlist_name
ORDER BY track_count DESC;

#Q-16. Find the playlists that have tracks with a duration longer than the average duration of all tracks.
SELECT DISTINCT Playlists.playlist_name
FROM Playlists
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
WHERE Tracks.duration > (SELECT AVG(duration) FROM Tracks);

#Q-17. Find the top 3 playlists with the most tracks.
SELECT Playlists.playlist_name, 
COUNT(PlaylistTracks.track_id) AS track_count
FROM Playlists
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
GROUP BY pPlaylists.playlist_id, Playlists.playlist_name
ORDER BY track_count DESC
LIMIT 3;

#Q-18. Calculate the average track duration for each user and display the results in descending order.
SELECT Users.username, 
ROUND(AVG(Tracks.duration), 2) AS average_duration_seconds
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
GROUP BY Users.user_id, Users.username
ORDER BY average_duration_seconds DESC;

#Q-19. Find the track names and artist names of the tracks that are included in at least two different playlists.
SELECT Tracks.track_name, Tracks.artist_name
FROM Tracks
JOIN PlaylistTracks ON Tracks.track_id = PlaylistTracks.track_id
GROUP BY Tracks.track_id, Tracks.track_name, Tracks.artist_name
HAVING COUNT(DISTINCT PlaylistTracks.playlist_id) >= 2;

#Q-20. Find the playlist names and the total duration of each playlist. Include only the playlists created by users who registered in the year 2022.
SELECT Playlists.playlist_name, 
SUM(Tracks.duration) AS total_playlist_duration
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
WHERE Users.registration_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY Playlists.playlist_id, Playlists.playlist_name
ORDER BY total_playlist_duration DESC;

#Q-21. Find the track names and artist names of the tracks that are included in playlists created by users who registered before the average registration date of all users.
SELECT DISTINCT Tracks.track_name, Tracks.artist_name
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
WHERE Users.registration_date < (
    SELECT FROM_UNIXTIME(AVG(UNIX_TIMESTAMP(registration_date)))
    FROM Users
)
ORDER BY Tracks.artist_name;

#Q-22. Use subquery to retrieve the names of users who have created playlists containing tracks from both the album 'After Hours' by The Weeknd and the album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.
SELECT username FROM Users
WHERE user_id IN (
    SELECT Playlists.user_id
    FROM Playlists
    JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
    JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
    WHERE Tracks.album_name IN ('After Hours', 'When We All Fall Asleep, Where Do We Go?')
    GROUP BY Playlists.playlist_id, Playlists.user_id
    HAVING COUNT(DISTINCT Tracks.album_name) = 2
);

#Q-23. Write a SQL query to extract the name of top 3 users with the highest average track duration for their playlists.
SELECT Users.username, AVG(Tracks.duration) AS avg_track_duration
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
GROUP BY Users.user_id, Users.username
ORDER BY avg_track_duration DESC
LIMIT 3;

#Q-24. Find the tracks that have a duration greater than the average duration of all tracks and rank them within their respective albums.
SELECT album_name, track_name, duration,
RANK() OVER (PARTITION BY album_name ORDER BY duration DESC) AS track_rank_in_album
FROM Tracks
WHERE duration > (SELECT AVG(duration) FROM Tracks);

#Q-25. Name the playlists along with the total number of tracks and the rank of the playlist based on the number of tracks.
SELECT Playlists.playlist_name, 
COUNT(PlaylistTracks.track_id) AS total_tracks,
RANK() OVER (ORDER BY COUNT(PlaylistTracks.track_id) DESC) AS playlist_rank
FROM Playlists
LEFT JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
GROUP BY Playlists.playlist_id, Playlists.playlist_name;

#Q-266. Find the users who have created playlists with the highest number of tracks from a specific artist.
SELECT Users.username, Playlists.playlist_name, 
COUNT(PlaylistTracks.track_id) AS artist_track_count
FROM Users
JOIN Playlists ON Users.user_id = Playlists.user_id
JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
WHERE Tracks.artist_name = 'The Weeknd'
GROUP BY Users.user_id, Users.username, Playlists.playlist_id, Playlists.playlist_name
HAVING COUNT(PlaylistTracks.track_id) = (
    SELECT MAX(cnt)
    FROM (
    SELECT COUNT(pt.track_id) AS cnt
        FROM PlaylistTracks pt
        JOIN Tracks t ON pt.track_id = t.track_id
        WHERE t.artist_name = 'The Weeknd'
        GROUP BY pt.playlist_id
    ) AS counts
);

#Q-27. Write a SQL query to retrieve the topmost users who have created playlists with the highest number of unique tracks from a specific artist.
SELECT u.username, 
COUNT(DISTINCT t.track_id) AS unique_artist_tracks
FROM Users u
JOIN Playlists p ON u.user_id = p.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
JOIN Tracks t ON pt.track_id = t.track_id
WHERE t.artist_name = 'Post Malone'
GROUP BY u.user_id, u.username
HAVING COUNT(DISTINCT t.track_id) = (
    SELECT MAX(unique_count)
    FROM (
        SELECT u2.user_id, COUNT(DISTINCT t2.track_id) AS unique_count
        FROM Users u2
        JOIN Playlists p2 ON u2.user_id = p2.user_id
        JOIN PlaylistTracks pt2 ON p2.playlist_id = pt2.playlist_id
        JOIN Tracks t2 ON pt2.track_id = t2.track_id
        WHERE t2.artist_name = 'Post Malone'
        GROUP BY u2.user_id
    ) AS user_artist_counts
);

#Q-28. Find the tracks that have a duration greater than the average duration of all tracks in their respective albums.
SELECT track_name, artist_name, album_name, duration
FROM (SELECT track_name, artist_name, album_name, duration,
      AVG(duration) OVER(PARTITION BY album_name) AS album_avg_duration
      FROM Tracks) AS AlbumAverages
WHERE duration > album_avg_duration;

#Q-29. Find name of the playlists along with the user who created them, sorted by the number of tracks in descending order and the username in ascending order.
SELECT u.username, p.playlist_name, 
COUNT(pt.track_id) AS number_of_tracks
FROM Users u
JOIN Playlists p ON u.user_id = p.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
GROUP BY u.user_id, u.username, p.playlist_id, p.playlist_name
ORDER BY number_of_tracks DESC, u.username ASC;

#Q-30. Write a SQL query to retrieve the playlists along with the user who created them, and the position of the track with the longest duration within each playlist.
WITH TrackDurations AS 
(
SELECT Users.username,Playlists.playlist_name,Tracks.track_name,Tracks.duration,
RANK() OVER (PARTITION BY Playlists.playlist_id ORDER BY Tracks.duration DESC) AS duration_rank
    FROM Users
    JOIN Playlists ON Users.user_id = Playlists.user_id
    JOIN PlaylistTracks ON Playlists.playlist_id = PlaylistTracks.playlist_id
    JOIN Tracks ON PlaylistTracks.track_id = Tracks.track_id
)
SELECT username,playlist_name,track_name AS longest_track,duration AS length_seconds
FROM TrackDurations
WHERE duration_rank = 1;
