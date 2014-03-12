DROP TABLE IF EXISTS Reparti;
CREATE TABLE Reparti (
  CodReparto  VARCHAR(4) PRIMARY KEY,
  NomeReparto VARCHAR(20)
);

DROP TABLE IF EXISTS Prodotti;
CREATE TABLE Prodotti (
  CodProdotto VARCHAR(10) PRIMARY KEY,
  Descrizione VARCHAR(30),
  Prezzo      DECIMAL(8,2),
  CodReparto  VARCHAR(4) --REFERENCES Reparti(CodReparto)
);


-- Popolamento
INSERT INTO Reparti
  VALUES ('Dolc', 'Dolciario');
INSERT INTO Reparti
  VALUES ('Carn', 'Carni');
INSERT INTO Reparti
  VALUES ('Pan', 'Panificio');
INSERT INTO Reparti
  VALUES ('Latt', 'Latticini');
INSERT INTO Reparti
  VALUES ('Casa', 'Casalinghi');


INSERT INTO Prodotti
  VALUES ('ProsCot', 'Prociutto cotto', 12.5, 'Carn');
INSERT INTO Prodotti
  VALUES ('Crost', 'Crostata', 3.5, 'Dolc');
INSERT INTO Prodotti
  VALUES ('Vite2mm', 'Vite 2mm autofil', 0.05, 'Ferr');


--Queries
SELECT Reparti.CodReparto, NomeReparto
FROM Reparti
LEFT JOIN Prodotti
ON Reparti.CodReparto = Prodotti.CodReparto
WHERE CodProdotto IS NULL;

SELECT CodProdotto, Descrizione
FROM Prodotti
LEFT JOIN Reparti
ON Prodotti.CodReparto = Reparti.CodReparto
WHERE Reparti.CodReparto IS NULL;
