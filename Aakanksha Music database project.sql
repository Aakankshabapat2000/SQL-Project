# List all artists:
SELECT artist FROM music;

# List all songs:
SELECT song FROM music;

# List all songs released in a specific year (e.g., 2020):
SELECT song FROM music WHERE release_year = 2020;

# List the most popular song:
SELECT song FROM music ORDER BY popularity DESC LIMIT 1;

# List all songs by a specific artist (replace 'ArtistName'):
SELECT song FROM music WHERE artist = (SELECT artist FROM music WHERE artist = 'ArtistName');

# List all songs with a popularity greater than a specific value (e.g., 80):
SELECT song FROM music WHERE popularity > 80;

# Count the number of songs in the database:
SELECT COUNT(*) FROM music;

# List the average popularity of songs released in each year:
SELECT year, AVG(popularity) AS avg_popularity
FROM music
GROUP BY year;

# List the top 10 most popular songs:
SELECT song, popularity
FROM music
ORDER BY popularity DESC
LIMIT 10;

# List all songs released before a specific year (e.g., before 2010):
SELECT song, year
FROM music
WHERE year < 2010;

# List the total popularity of all songs in the database:
SELECT SUM(popularity) AS total_popularity
FROM music;

# List all songs released in a specific range of years (e.g., between 2000 and 2010):
SELECT song, year
FROM music
WHERE year BETWEEN 2000 AND 2010;

# List the most popular song(s):
SELECT song FROM music WHERE popularity = (SELECT MAX(popularity) FROM music);

# List all songs with a popularity greater than or equal to a specific value (e.g., 60):
SELECT song FROM music WHERE popularity >= 80;

# List all unique genres:
SELECT DISTINCT genre FROM music;

# List all songs with their release year and popularity, ordered by popularity in descending order:
SELECT song, year, popularity
FROM music
ORDER BY popularity DESC;

# sort all rows from music, first by artist and then by song:
select*
from music
order by artist,song;

# select songs with genre is pop:
select*
from music
where genre like 'pop';

# select singer from music whose name start with letter 'B':
select*
from music
where artist like 'B%';

# select music whose song end by letter 'B':
select*
from music
where song like '%B';

# select music with minimum popularity:
select*
from music
where popularity=(select min(popularity)
from music
);

# display distinct artist and song  who made an order using subquery:
select artist,song
from music
where artist IN (
select artist
from music
);












