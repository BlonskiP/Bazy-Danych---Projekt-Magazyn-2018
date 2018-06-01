--- CLEANING
DROP TABLE PRODUCENCI cascade constraints;
DROP TABLE PRODUKTY cascade constraints;
DROP TABLE KLIENCI cascade constraints;
DROP TABLE ZAMOWIENIA cascade constraints;
DROP TABLE DOSTAWY cascade constraints;
DROP TABLE BUDYNKI cascade constraints;
DROP TABLE STANOWISKA cascade constraints;
DROP TABLE PRACOWNICY cascade constraints;
DROP TABLE DANEKONTAKTOWE cascade constraints;


--- TABELA BUDYNKI ---
CREATE TABLE BUDYNKI
(
    idBudynku NUMBER(3) PRIMARY KEY,
	nazwa_budynku VARCHAR(15),
	idDaneKontaktowe NUMBER(3) NOT NULL UNIQUE,
    idKierownika NUMBER(3) NOT NULL
);
--- TABELA PRACOWNICY
CREATE TABLE PRACOWNICY
(
	idPracownika NUMBER(3) PRIMARY KEY,
	nazwisko_Pracownika VARCHAR(15) NOT NULL,
	haslo VARCHAR(32) NOT NULL,
	idStanowiska NUMBER(3),
	idBudynku NUMBER(3),
	idDaneKontaktowe NUMBER(3) UNIQUE
);
--- TABELA STANOWISKA
CREATE TABLE STANOWISKA
(
	idStanowiska NUMBER(3) PRIMARY KEY,
	pensja INTEGER NOT NULL,
	nazwaStanowiska VARCHAR2(20) UNIQUE
);
-- TABLEA DANE KONTAKTOWE
CREATE TABLE DANEKONTAKTOWE
(
	idDaneKontaktowe Number(3) PRIMARY KEY,
	kodPocztowy NUMBER(5) NOT NULL,
	miast VARCHAR2(30) NOT NULL,
	ulica VARCHAR2(15) NOT NULL,
	numerBudynku INTEGER,
	numerTelefonu VARCHAR2(15)

);
--- TABELA DOSTAWY
CREATE TABLE DOSTAWY
(
	idDostawy NUMBER(3) PRIMARY KEY,
	data_dostawy DATE,
	ilosc INTEGER,
	idProduktu NUMBER(3),
	idKierownika NUMBER(3)
);
--- TABELA KLIENCI
CREATE TABLE KLIENCI
(
	idKlienta NUMBER(3) PRIMARY KEY,
	nazwiskoKlienta VARCHAR2(15), 
	idDaneKontaktowe NUMBER(3) UNIQUE
);
-- TABELA ZAMOWIENIA
CREATE TABLE ZAMOWIENIA
(
	idZamowienia NUMBER(3) PRIMARY KEY,
	ilosc INTEGER NOT NULL,
	data_Zamowienia Date NOT NULL,
	idKlienta NUMBER(3),
	idProduktu NUMBER(3),
	idPracownika NUMBER(3)
	
);

CREATE TABLE PRODUKTY
(
	idProduktu NUMBER(3) PRIMARY KEY,
	nazwa_produktu VARCHAR2(32) NOT NULL UNIQUE,
	cena FLOAT NOT NULL,
	idBudynku NUMBER(3),
	idProducenta NUMBER(3)
);
CREATE TABLE PRODUCENCI
(
	idProducenta NUMBER(3) PRIMARY KEY,
	nazwa_Producenta VARCHAR2(30) NOT NULL,
	idDaneKontaktowe NUMBER(3) UNIQUE
);
--- BUDYNKI WYPEŁNIENIE
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('1','Magazyn A','1',1);
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('2','Magazyn B','2',2);
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('3','Magazyn C','3',3);
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('4','Magazyn D','4',4);
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('5','Magazyn E','5',5);
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('6','Magazyn F','6',6);
Insert into BUDYNKI (IDBUDYNKU,nazwa_budynku,idDaneKontaktowe,idKierownika)
values ('7','Magazyn H','7',7);
---- PRACOWNICY WYPEŁNIENIE
	---KIEROWNICY BUDYNKOW
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('1','KROL','PanIWladca123',1,1,0); --- GLOWNY KIEROWNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('2','BLAZEN','hahahahha123',2,2,8); --- KIEROWNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('3','RYCERZ','MIECZ123',2,3,9); --- KIEROWNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('4','KROLOWA','BERLO123',2,4,10); --- KIEROWNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('5','GIERMEK','tarcza123',2,5,11); --- KIEROWNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('6','MAGISTER','papier123',2,6,12); --- KIEROWNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('7','DAMA','pioro123',2,7,13); --- KIEROWNIK	
--- ROBOTNICY po 1 dla budynku
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('8','KROLEWIEC','PanIWl123',3,1,14); --- GLOWNY ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('9','BLAZENOW','hahaha123',3,2,15); --- ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('10','RYCERSKI','MIECZRO123',3,3,16); --- ROBOTNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('11','KROLOWICKI','BERLOLO123',3,4,17); --- ROBOTNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('12','GIERMEKOWY','tarczaaaa123123',3,5,18); --- ROBOTNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('13','MAGISTERROWY','papierius123',3,6,19); --- ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('14','DAMINIEDAM','piorrororoo123',3,7,20); --- ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('15','KROLIK','Panadca123',4,1,21); --- GLOWNY ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('16','BLACHA','hannaha123',4,2,22); --- ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('17','LAWA','MIECZ123',4,3,23); --- ROBOTNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('18','KWIATEK','BE123',4,4,24); --- ROBOTNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('19','LAPTOP','czacza123',4,5,25); --- ROBOTNIK	
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('20','KOLANO','papr123',4,6,26); --- ROBOTNIK
Insert into PRACOWNICY (idPracownika,nazwisko_Pracownika,haslo,idStanowiska,idBudynku,idDaneKontaktowe)
values ('21','PODLOGA','pro123',4,7,27); --- ROBOTNIK		

--- WYPELNIENIE STANOWISKA
Insert into STANOWISKA (idStanowiska,pensja,nazwaStanowiska)
values (1,50000,'WLASCICIEL'); 		
Insert into STANOWISKA (idStanowiska,pensja,nazwaStanowiska)
values (2,4000,'KIERWONIK BUDYNKU');
Insert into STANOWISKA (idStanowiska,pensja,nazwaStanowiska)
values (3,3000,'OBSŁUGA TOWARU');
Insert into STANOWISKA (idStanowiska,pensja,nazwaStanowiska)
values (4,2500,'OBSŁUGA KLIENTA');

--- WYPEŁNIENIE DOSTAWY
--Insert into STANOWISKA (idDostawy,data_dostawy,ilosc,idProduktu,idKierownika)
--values (1,'2013-02-12',1,1); 


---- CONSTRAINTS BUDYNKI
ALTER TABLE BUDYNKI ADD FOREIGN KEY (idDaneKontaktowe) REFERENCES DANEKONTAKTOWE(idDaneKontaktowe);
ALTER TABLE BUDYNKI ADD FOREIGN KEY (idKierownika) REFERENCES PRACOWNICY(idPracownika);

--- CONSTRAINTS PRACOWNICY
ALTER TABLE PRACOWNICY ADD FOREIGN KEY (idStanowiska) REFERENCES STANOWISKA(idStanowiska);
ALTER TABLE PRACOWNICY ADD FOREIGN KEY (idBudynku) REFERENCES BUDYNKI(idBudynku);
ALTER TABLE PRACOWNICY ADD FOREIGN KEY (idDaneKontaktowe) REFERENCES DANEKONTAKTOWE(idDaneKontaktowe);

--- CONSTRAINTS DOSTAWY
ALTER TABLE DOSTAWY ADD FOREIGN KEY (idDostawy) REFERENCES PRACOWNICY(idPracownika);
ALTER TABLE DOSTAWY ADD FOREIGN KEY (idProduktu) REFERENCES PRODUKTY(idProduktu);
--- CONSTRAINTS PRODUCENCI
ALTER TABLE PRODUCENCI ADD FOREIGN KEY (idDaneKontaktowe) REFERENCES DANEKONTAKTOWE(idDaneKontaktowe);

--- CONSTRAINTS KLIENCI
ALTER TABLE KLIENCI ADD FOREIGN KEY (idDaneKontaktowe) REFERENCES DANEKONTAKTOWE(idDaneKontaktowe);

---CONSTRAINTS ZAMOWIENIA
ALTER TABLE ZAMOWIENIA ADD FOREIGN KEY (idKlienta) REFERENCES KLIENCI(idKlienta);
ALTER TABLE ZAMOWIENIA ADD FOREIGN KEY (idProduktu) REFERENCES PRODUKTY(idProduktu);
ALTER TABLE ZAMOWIENIA ADD FOREIGN KEY (idPracownika) REFERENCES PRACOWNICY(idPracownika);

---CONSTRAINTS PRODUKTY
ALTER TABLE PRODUKTY ADD FOREIGN KEY (idBudynku) REFERENCES BUDYNKI(idBudynku);
ALTER TABLE PRODUKTY ADD FOREIGN KEY (idProducenta) REFERENCES PRODUCENCI(idProducenta);
