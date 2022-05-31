--SELECT * FROM Song;

--SELECT
  --Id,
  --Title,
  --SongLength,
  --ReleaseDate,
  --GenreId,
  --ArtistId,
  --AlbumId
--FROM Song
--WHERE SongLength > 100;

--SELECT s.Title,
     --a.ArtistName
--FROM Song s
    --LEFT JOIN Artist a on s.ArtistId = a.id;

--INSERT INTO Genre (Name) VALUES ('Techno');

--select SongLength from Song where Id = 18;



--update Song
--set SongLength = 515
--where Id = 18;

-- Once you run the update statement, in order to make sure the value has changed, we run the select query again.
--select SongLength from Song where Id = 18;

--delete from Song where Id = 18;

--select * from Genre;

--select * from Artist
--order by ArtistName;

--SELECT s.Title,
--     a.ArtistName
--FROM Song s
--     LEFT JOIN Artist a on s.ArtistId = a.id;

--SELECT a.ArtistName, g.Name
--FROM Album al
--    INNER JOIN Artist a on al.ArtistId = a.id
--     INNER JOIN Genre g on al.GenreId = g.id
--WHERE g.Name = 'Soul';

--SELECT a.ArtistName, g.Name
--FROM Album al
--    INNER JOIN Artist a on al.ArtistId = a.id
--     INNER JOIN Genre g on al.GenreId = g.id
--WHERE g.Name = 'Jazz' OR g.Name = 'Rock';

--SELECT al.Title
--FROM Album al
--WHERE NOT EXISTS (
--    SELECT 1
--    FROM Song s
--    WHERE s.AlbumId = al.id
--    )

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Me', 2222);

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--SELECT 'Sick Beats' AS Title, a.Id AS ArtistId, 546 AS ReleaseDate, 1 AS AlbumLength, 2 AS GenreId, 2 AS Label
--FROM Artist a
--WHERE a.ArtistName = 'Me';

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--SELECT 'dope song' AS Title, 5 AS SongLength, 01/01/1011 AS ReleaseDate, 4 as GenreId, al.ArtistId AS ArtistId, al.Id AS AlbumId
--FROM Album al 
--WHERE al.Title = 'Sick Beats';

--select a.ArtistName, al.Title, s.Title
--from song s
--    left join Album al on s.AlbumId = al.id
--    left join Artist a on s.ArtistId = a.id
--where s.Title = 'dope song';

select AlbumId, count(s.Id) AS NumSongs
from Song s
group by s.AlbumId;

select ArtistId, count(s.Id) AS NumSongs
from Song s
group by s.ArtistId;

select GenreId, count(s.Id) AS NumSongs
from Song s
group by s.GenreId;

select a.id, count(al.Label) AS NumLabels
from Album al
inner join Artist a on al.ArtistId = a.id
group by a.Id 
having count(al.Label) > 1;

select top 1 al.Title, al.AlbumLength
from Album al
order by al.AlbumLength desc

select top 1 s.Title, s.SongLength, al.Title
from Song s
    left join Album al on s.AlbumId = al.id
order by s.SongLength desc