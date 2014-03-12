-- QUERY 1
-- Trovare tutti i film diretti da Steven Spielberg

SELECT * 
FROM Movie 
WHERE director = 'Steven Spielberg';



-- QUERY 2
-- Selezionare tutti gli anni che hanno avuto film con
-- valutazione di 4 o 5 stelle e ordinarli in ordine crescente

SELECT year 
FROM Movie, Rating
WHERE Movie.mID = Rating.mID
  AND Rating.stars >= 4
ORDER BY year;



-- QUERY 3
-- Visualizza tutti i titoli dei film che non hanno valutazione

SELECT title
FROM Movie
WHERE mID NOT IN (SELECT mID 
                  FROM Rating);



-- QUERY 4
-- Trova i nomi di tutti i revisori che hanno la valutazione con
-- un valore NULL sulla data

SELECT name
FROM Reviewer, Rating
WHERE Rating.rID = Reviewer.rID
  AND ratingDate IS NULL;



-- QUERY 5
-- Formatta in modo leggibile Nome del critico, Titolo film, Stars
-- e Data di revisione, ordinando i risultati per Nome del critico,
-- poi per Titolo e infine per Stars

SELECT name, title, stars, ratingDate
FROM Reviewer, Movie, Rating
WHERE Movie.mID = Rating.mID
  AND Rating.rID = Reviewer.rID
ORDER BY name, title, stars DESC;



-- QUERY 6
-- Per tutti i casi dove lo stesso revisore ha valutato lo stesso film
-- due volte e la seconda volta ha dato  una valutazione più alta, fai
-- ritornare il nome del critico e il titolo del film

DROP TABLE IF EXISTS temp1;

CREATE TEMP TABLE temp1 AS (
  SELECT Reviewer.rID, name, title, stars, ratingDate
  FROM Reviewer, Movie, Rating
  WHERE Movie.mID = Rating.mID
  	AND Rating.rID = Reviewer.rID
);


DROP TABLE IF EXISTS temp2;

CREATE TEMP TABLE temp2 AS (
  SELECT Reviewer.rID, name, title, stars, ratingDate
  FROM Reviewer, Movie, Rating
  WHERE Movie.mID = Rating.mID
    AND Rating.rID = Reviewer.rID
);


SELECT temp1.name, temp1.title
FROM temp1, temp2
WHERE temp1.rid = temp2.rid
  AND temp1.title = temp2.title
  AND temp1.stars > temp2.stars
  AND temp1.ratingDate > temp2.ratingDate;



-- QUERY 7
-- Per ogni film che ha almeno una valutazione, trova la più alta
-- valutazione (in numero di stars) che ha ricevuto

SELECT title, MAX(stars) AS votoMax
FROM Movie, Rating
WHERE Movie.mID = Rating.mID
GROUP BY title
ORDER BY votoMax DESC;



-- QUERY 8
-- Per ogni film, ritorna il titolo e il "raggio di valutazione", cioé
-- la differenza tra la valutazione più alta e quella più bassa associata
-- ad un dato film. Ordina per "raggio di valutazione" dal più alto al più
-- basso e poi per titolo di film

SELECT title, (MAX(stars)-MIN(STARS)) AS raggioValutazione
FROM Movie, Rating
WHERE Movie.mID = Rating.mID
GROUP BY title
ORDER BY raggioValutazione DESC, title ASC;



-- QUERY 9
-- Trova la differenza tra la media delle valutazioni dei film usciti
-- prima del 1980 e la media delle valutazioni dei film usciti dopo
-- il 1980. (Assicurati di calcolare la media per ogni film, poi la media
-- di queste medie per i film prima del 1980 e i film dopo.
-- Non calcolare la media complessiva delle valutazioni prima e dopo il 1980)

DROP TABLE IF EXISTS temp1;

CREATE TEMP TABLE temp1 AS (
  SELECT AVG(stars) AS mediaV
  FROM Movie, Rating
  WHERE Movie.mID = Rating.mID
    AND year < 1980
  GROUP BY title, year
);


DROP TABLE IF EXISTS temp2;

CREATE TEMP TABLE temp2 AS (
  SELECT AVG(stars) AS mediaN
  FROM Movie, Rating
  WHERE Movie.mID = Rating.mID
    AND year > 1980
  GROUP BY title, year
);


DROP TABLE IF EXISTS temp3;

CREATE TEMP TABLE temp3 AS (
  SELECT AVG(mediaV) AS prima
  FROM temp1
);


DROP TABLE IF EXISTS temp4;

CREATE TEMP TABLE temp4 AS (
  SELECT AVG(mediaN) AS dopo
  FROM temp2
);

SELECT prima, dopo, (prima - dopo) AS diffMedie
FROM temp3, temp4;

-- Salve prof, per le query 6 e 9 ho trovato soluzioni "mostruose", ma funzionano... 
-- Immagino ci siano soluzioni molto più eleganti,
-- spero di riuscire a trovarle prima o poi.