CREATE TABLE TipiAdesione (
  ChiaveTipo VARCHAR(4) PRIMARY KEY,
  DescrTipo  VARCHAR(15)
);

CREATE TABLE Nazioni (
  ChiaveNazione VARCHAR(3) PRIMARY KEY,
  DescrNazione  VARCHAR(20)
);

CREATE TABLE Iscritti (
  ChiaveIscritto  VARCHAR(5) PRIMARY KEY,
  Cognome         VARCHAR(40),
  Nome            VARCHAR(30),
  Indirizzo       VARCHAR(30),
  Telefono        VARCHAR(12),
  CodiceTipo      VARCHAR(4) REFERENCES TipiAdesione(ChiaveTipo),
  CodiceNazione   VARCHAR(3) REFERENCES Nazioni(ChiaveNazione)
);

CREATE TABLE Pagamenti (
  Numero          SMALLINT PRIMARY KEY,
  Data            DATE,
  Importo         DECIMAL(10,2),
  CodiceIscritto  VARCHAR(5) REFERENCES Iscritti(ChiaveIscritto)
);

