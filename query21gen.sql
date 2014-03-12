--Esercizio pag. 162

--Query 1
SELECT Cognome, Nome, Telefono
FROM Iscritti;

--Query 2
SELECT *
FROM Iscritti, TipiAdesione
WHERE TipiAdesione.ChiaveTipo = Iscritti.CodiceTipo
      AND TipiAdesione.DescrTipo = 'Emerito';

--Query 3
SELECT Cognome, Nome, DescrTipo
FROM Iscritti, Nazioni, TipiAdesione
WHERE ChiaveTipo = CodiceTipo
      AND ChiaveNazione = CodiceNazione
      AND DescrNazione = 'Italia';

--Query 4 
SELECT Cognome, Data, Importo
FROM Iscritti, Pagamenti
WHERE ChiaveIscritto = CodiceIscritto;

--Query 5
SELECT ChiaveIscritto, Cognome, Nome
FROM Pagamenti, Iscritti
WHERE CodiceIscritto = ChiaveIscritto
      AND Data BETWEEN '2013-01-01' AND '2013-12-31';

--Query 6
SELECT Data, Importo
FROM Iscritti, Pagamenti
WHERE Cognome = 'Canaj'
      AND ChiaveIscritto = CodiceIscritto;




