INSERT INTO TipiAdesione(ChiaveTipo, DescrTipo)
  VALUES ('SORD', 'Ordinario'); 
INSERT INTO TipiAdesione(ChiaveTipo, DescrTipo)
  VALUES ('SSTR', 'Straordinario');
INSERT INTO TipiAdesione(ChiaveTipo, DescrTipo)
  VALUES ('SEM', 'Emerito');


INSERT INTO Nazioni(ChiaveNazione, DescrNazione)
  VALUES('ITA', 'Italia'); 
INSERT INTO Nazioni(ChiaveNazione, DescrNazione)
  VALUES('USA', 'Stati Uniti'); 
INSERT INTO Nazioni(ChiaveNazione, DescrNazione)
  VALUES('GER', 'Germania');
INSERT INTO Nazioni(ChiaveNazione, DescrNazione)
  VALUES('FRA', 'Francia');


 INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('1', 'Canaj', 'Toni', 'via Gigi 10 Berlin', '2345678', 'SEM', 'GER');

INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('2', 'Nannetti', 'Andrea', 'via Toni 30 Mestre', '152434', 'SORD', 'ITA');

INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('3', 'Stallman', 'Mark', 'via Morte 76 Bojon' , '678199892', 'SSTR', 'ITA');

INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('4', 'McDermott', 'Joseph', 'via Kennedy 33 Aachen', '79210507', 'SORD', 'GER');

INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('5', 'Torvalds', 'Vincenzo', 'King Avenue 65 Strunzenberg', '196257291', 'SORD', 'GER');

INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('6', 'Lamettrie', 'Elia', 'King Avenue 69 Paris', '139699226', 'SSTR', 'FRA');

INSERT INTO Iscritti(ChiaveIscritto, Cognome, Nome, Indirizzo, Telefono, CodiceTipo, CodiceNazione)
  VALUES ('7', 'Mbogue', 'Tony', 'via Morte 23 Boston', '447885962', 'SSTR', 'USA');
  

INSERT INTO Pagamenti
  VALUES (1,'2013-10-11',46.16,'7');
INSERT INTO Pagamenti
  VALUES (2,'2013-10-09',605.28,'3');
INSERT INTO Pagamenti
  VALUES (3,'2001-09-20',936.35,'4');
INSERT INTO Pagamenti
  VALUES (4,'2013-01-06',7057.1,'1');
INSERT INTO Pagamenti
  VALUES (5,'2012-05-03',396.49,'5');
INSERT INTO Pagamenti
  VALUES (6,'1993-08-07',578.33,'4');
INSERT INTO Pagamenti
  VALUES (7,'2012-04-23',920.31,'5');
INSERT INTO Pagamenti
  VALUES (8,'2010-04-26',289.41,'2');
INSERT INTO Pagamenti
  VALUES (9,'1993-06-24',6825.22,'6');
