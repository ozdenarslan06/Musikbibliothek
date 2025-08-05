INSERT INTO Medium (Mediennummer, Titel, Medientyp, Beschreibung, Erscheinungsjahr, Verlag) VALUES
(101, 'Die unendliche Geschichte', 'Buch', 'Ein Junge entdeckt ein magisches Buch, das ihn in eine fantastische Welt entführt.', 1979, 'Thienemann Verlag'),
(102, 'Inception', 'Film', 'Ein Dieb, der Träume stiehlt, erhält die Chance, seine Vergangenheit zu ändern.', 2010, 'Warner Bros.'),
(103, 'Symphonie Nr. 5', 'Musik', 'Ludwig van Beethovens berühmte 5. Symphonie in c-Moll.', 1808, 'Deutsche Grammophon'),
(104, 'Der kleine Prinz', 'Buch', 'Ein Pilot strandet in der Wüste und trifft einen Prinzen von einem anderen Planeten.', 1943, 'Karl Rauch Verlag'),
(105, 'Mona Lisa', 'Kunstwerk', 'Das weltberühmte Porträt von Leonardo da Vinci.', 1503, 'Louvre Editions');

INSERT INTO Exemplar (Signatur, Standort, Zustand, Mediennummer) VALUES
('BUCH-101-A', 'Regal A, Fach 3', 'Sehr gut', 101),
('FILM-102-B', 'DVD-Sammlung, Kasten 5', 'Gut', 102),
('MUSIK-103-C', 'CD-Archiv, Sektor 1', 'Neuwertig', 103),
('BUCH-104-D', 'Kinderbuch-Ecke, Regal 2', 'Akzeptabel', 104),
('KUNST-105-E', 'Ausstellungssaal 1', 'Exzellent', 105);

INSERT INTO Kunstler (KunstlerId, Vorname, Nachname, Geburtsjahr, Nationalitat) VALUES
(201, 'Michael', 'Ende', 1929, 'Deutsch'),
(202, 'Christopher', 'Nolan', 1970, 'Britisch'),
(203, 'Ludwig van', 'Beethoven', 1770, 'Deutsch'),
(204, 'Antoine de', 'Saint-Exupéry', 1900, 'Französisch'),
(205, 'Leonardo', 'da Vinci', 1452, 'Italienisch');

INSERT INTO Nutzer (NutzerID, Vorname, Nachname, Geburtsdatum, Straße, PLZ, Ort, Telefonnummer, EMail) VALUES
(301, 'Anna', 'Müller', 1985, 'Hauptstraße 10', '70173', 'Stuttgart', '0711123456', 'anna.mueller@example.com'),
(302, 'Max', 'Schmidt', 1992, 'Blumenweg 5', '80331', 'München', '0899876543', 'max.schmidt@example.com'),
(303, 'Lena', 'Meier', 1970, 'Seestraße 22', '10115', 'Berlin', '0302345678', 'lena.meier@example.com'),
(304, 'Tom', 'Weber', 2000, 'Parkallee 1', '20095', 'Hamburg', '0403456789', 'tom.weber@example.com'),
(305, 'Sophie', 'Fischer', 1965, 'Marktplatz 7', '50667', 'Köln', '0221456789', 'sophie.fischer@example.com');
 
INSERT INTO Mitarbeitende (MitarbeiterID, Vorname, Nachname, Personalnummer, Abteilung, Arbeitsbereich, Telefon, EMail) VALUES
(401, 'Julia', 'Wagner', 1001, 'Bibliothek', 'Ausleihe', '0711555111', 'julia.wagner@library.com'),
(402, 'Peter', 'Koch', 1002, 'Archiv', 'Bestandsverwaltung', '0711555222', 'peter.koch@library.com'),
(403, 'Sabine', 'Lehmann', 1003, 'Verwaltung', 'Finanzen', '0711555333', 'sabine.lehmann@library.com'),
(404, 'Daniel', 'Schulz', 1004, 'IT', 'Systemadministration', '0711555444', 'daniel.schulz@library.com'),
(405, 'Laura', 'Richter', 1005, 'Marketing', 'Veranstaltungen', '0711555555', 'laura.richter@library.com');

INSERT INTO Ausleihe (Ausleihdatum, Geplantes_Rückgabedatum, Tatsächliches_Rückgabedatum, Gebühr, Signatur, NutzerID) VALUES
('2024-07-01', '2024-07-15', '2024-07-14', 0.00, 'BUCH-101-A', 301),
('2024-07-05', '2024-07-19', NULL, 0.00, 'FILM-102-B', 302),
('2024-06-20', '2024-07-04', '2024-07-06', 2.50, 'MUSIK-103-C', 303),
('2024-07-10', '2024-07-24', NULL, 0.00, 'BUCH-104-D', 304),
('2024-07-03', '2024-07-17', '2024-07-17', 0.00, 'BUCH-101-A', 305);

INSERT INTO Kunstler_Medium (Rolle, Mediennummer, KunstlerId) VALUES
('Autor', 101, 201),
('Regisseur', 102, 202),
('Komponist', 103, 203),
('Autor', 104, 204),
('Maler', 105, 205);

INSERT INTO Medium_Genre (Genre, Mediennummer) VALUES
('Fantasy', 101),
('Science Fiction', 102),
('Klassik', 103),
('Kinderbuch', 104),
('Porträt', 105);
