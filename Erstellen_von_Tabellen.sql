
CREATE TABLE Medium
(
  Mediennummer INT PRIMARY KEY,
  Titel varchar(128),
  Medientyp varchar(16),
  Beschreibung varchar(512),
  Erscheinungsjahr INT,
  Verlag varchar(64)
);

CREATE TABLE Exemplar
(
  Signatur varchar(64) PRIMARY KEY,
  Standort varchar(64),
  Zustand varchar(64),
  Mediennummer INT,
  FOREIGN KEY (Signatur) REFERENCES Medium(Mediennummer)
);

CREATE TABLE Kunstler
(
  KunstlerId INT PRIMARY KEY,
  Vorname varchar(64),
  Nachname varchar(64),
  Geburtsjahr INT,
  Nationalitat varchar(64)
);

CREATE TABLE Nutzer
(
  NutzerID INT PRIMARY KEY,
  Vorname varchar(64),
  Nachname varchar(64),
  Geburtsdatum INT,
  Straße varchar(64),
  PLZ varchar(64),
  Ort varchar(64),
  Telefonnummer varchar(64),
  EMail varchar(64)
);

CREATE TABLE Mitarbeitende
(
    MitarbeiterID INT PRIMARY KEY,
    Vorname VARCHAR(64),
    Nachname VARCHAR(64),
    Personalnummer INT,
    Abteilung VARCHAR(64),
    Arbeitsbereich VARCHAR(64),
    Telefon VARCHAR(20),
    EMail VARCHAR(64)
);

CREATE TABLE Ausleihe
(
    Ausleihdatum DATE,
    Geplantes_Rückgabedatum DATE,
    Tatsächliches_Rückgabedatum DATE,
    Gebühr DECIMAL(10, 2),
    Signatur INT,
    NutzerID INT,
    PRIMARY KEY (Signatur, NutzerID),
    FOREIGN KEY (Signatur) REFERENCES Exemplar(Signatur),
    FOREIGN KEY (NutzerID) REFERENCES Nutzer(NutzerID)
);

CREATE TABLE Kunstler_Medium
(
  Rolle VARCHAR(64),
  Mediennummer INT,
  KunstlerId INT,
  PRIMARY KEY (Mediennummer, KunstlerId),
  FOREIGN KEY (Mediennummer) REFERENCES Medium(Mediennummer),
  FOREIGN KEY (KunstlerId) REFERENCES Kunstler(KunstlerId)
);

CREATE TABLE Medium_Genre
(
  Genre VARCHAR(16),
  Mediennummer INT,
  PRIMARY KEY (Genre, Mediennummer),
  FOREIGN KEY (Mediennummer) REFERENCES Medium(Mediennummer)
);
