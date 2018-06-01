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
		ilosc INTEGER NOT NULL,
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
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (1,'2018-01-23',30,1,2); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (2,'2017-01-24',30,2,2); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (3,'2018-01-25',101,3,4); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (4,'2018-01-23',102,4,4); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (5,'2018-03-24',2,5,5); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (6,'2018-04-29',6,6,5); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (7,'2018-05-14',10,7,5); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (8,'2018-03-13',5,8,6); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (9,'2018-02-12',30,9,7); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (10,'2018-01-11',50,10,7);  
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (12,'2018-03-12',300,11,3); 
	Insert into DOSTAWY (idDostawy,data_dostawy,ilosc,idProduktu, idKierownika)
	values (13,'2018-04-30',50,12,3); 

	--- Wypelnienie PRODUCENCI
	Insert into PRODUCENCI (idProducenta,nazwa_producenta,idDaneKontaktowe)
	values (1,'Umbrella Corporation',28); 
	Insert into PRODUCENCI (idProducenta,nazwa_producenta,idDaneKontaktowe)
	values (2,'CRUELA DEVIL LIMITED',29);
	Insert into PRODUCENCI (idProducenta,nazwa_producenta,idDaneKontaktowe)
	values (3,'SHELBY LIMITED COMPANY',30);
	Insert into PRODUCENCI (idProducenta,nazwa_producenta,idDaneKontaktowe)
	values (4,'CERBERUS',31);
	Insert into PRODUCENCI (idProducenta,nazwa_producenta,idDaneKontaktowe)
	values (5,'Vault-Tec',32);
	Insert into PRODUCENCI (idProducenta,nazwa_producenta,idDaneKontaktowe)
	values (6,'POLITECHNIKA WROCŁAWSKA',33);

	---Wypelnienie PRODUKTY
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (1,'Gin',120.50,30,1,3);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (2,'Whisky',130.75,30,1,3);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (3,'Skora dalmatynczyka',1200.50,101,2,2);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (4,'Plaszcze w kropki',3500.00,102,2,2);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (5,'Waglik',30500.00,2,3,1);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (6,'Zombie-virus',40500.00,2,3,1);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (7,'Materia poza-kosmiczna',3500.00,10,4,4);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (8,'Scigacz kosmiczny',35000.00,5,4,4);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (9,'Agregat prado-tworczy',5000.00,30,5,5);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (10,'Filtry wody',5000.00,50,5,5);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (11,'Student elektroniki', 50.00,300,6,6);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (12,'Rzutnik', 50.00,30,6,6);
	Insert into PRODUKTY(idProduktu,nazwa_produktu,cena,ilosc,idBudynku,idProducenta)
	values (13,'Czesci zapasowe', 10.00,30,7,5);
	
	---WYPEŁNIENIE KLIENCI
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (1,'Kowalski',34);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (2,'BLONSKI',35);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (3,'CYTERA',36);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (4,'PIZZA',37);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (5,'BANAN',38);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (6,'KWIATKOWSKI',39);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (7,'NAZIEMSKI',40);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (8,'PILSUDZKI',41);
	Insert into KLIENCI(idKlienta,nazwiskoKlienta,idDaneKontaktowe)
	values (9,'KORWIN',42);
	
	---WYPELNIENIE ZAMOWIENIA
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(1,1,'2018-07-18',1,1,8);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(2,1,'2018-07-19',2,2,9);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(3,1,'2018-07-21',3,1,8);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(4,1,'2018-07-28',4,2,9);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(5,1,'2018-06-23',4,6,10);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(6,1,'2018-07-17',5,5,17);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(7,1,'2018-09-27',1,5,10);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(8,1,'2018-08-22',2,6,17);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(9,1,'2018-07-23',3,3,9);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(10,1,'2018-07-23',4,4,16);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(11,1,'2018-07-23',6,3,9);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(12,1,'2018-07-15',2,3,16);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(13,1,'2018-07-15',6,3,9);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(14,1,'2018-07-13',3,4,16);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(15,1,'2018-07-23',4,7,11);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(16,1,'2018-07-25',5,8,18);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(17,1,'2018-07-24',2,7,11);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(18,1,'2018-07-21',3,8,18);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(19,1,'2018-07-19',1,7,11);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(20,1,'2018-07-01',6,8,18);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(21,1,'2018-07-03',4,7,11);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(22,1,'2018-07-30',3,8,11);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(23,1,'2018-05-23',2,9,12);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(24,1,'2018-06-23',1,10,19);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(25,1,'2018-05-23',1,9,12);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(26,1,'2018-08-23',2,10,19);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(27,1,'2018-09-23',4,9,12);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(28,1,'2018-10-23',3,10,19);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(29,1,'2018-11-23',5,11,13);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(30,1,'2018-12-23',7,12,20);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(31,1,'2018-09-23',1,11,13);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(32,1,'2018-07-24',2,12,20);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(33,1,'2018-07-26',5,11,13);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(34,1,'2018-07-23',3,12,20);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(35,1,'2018-07-23',4,13,21);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(36,1,'2018-07-23',5,13,14);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(37,1,'2018-07-23',7,13,21);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(38,1,'2018-07-23',6,13,14);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(39,1,'2018-07-23',5,13,21);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(40,1,'2018-07-23',1,13,14);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(41,1,'2018-07-23',2,13,21);
	Insert into ZAMOWIENIA(idZamowienia,ilosc,data_Zamowienia,idKlienta,idProduktu,idPracownika)
	values(42,1,'2018-07-23',4,13,14);
	
	
	
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
