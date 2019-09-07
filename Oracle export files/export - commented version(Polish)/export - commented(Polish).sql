--------------------------------------------------------
--  File created - ?roda-maja-09-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ID_ODBICIA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ID_ODBICIA_SEQ"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_PRACOWNIKA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ID_PRACOWNIKA_SEQ"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ODBICIA
--------------------------------------------------------

  CREATE TABLE "ODBICIA" 
   (	"ID_ODBICIA" NUMBER, 
	"DATA" TIMESTAMP (6), 
	"ID_PRACOWNIKA" NUMBER, 
	"KIERUNEK" VARCHAR2(2) DEFAULT 'WE'
   ) ;

   COMMENT ON COLUMN "ODBICIA"."ID_ODBICIA" IS 'Numer odbicia';
   COMMENT ON COLUMN "ODBICIA"."DATA" IS 'Data odbicia';
   COMMENT ON COLUMN "ODBICIA"."ID_PRACOWNIKA" IS 'Indywidualny numer pracownika';
   COMMENT ON COLUMN "ODBICIA"."KIERUNEK" IS 'Wej?cie lub wyj?cie pracownika';
--------------------------------------------------------
--  DDL for Table PRACOWNICY
--------------------------------------------------------

  CREATE TABLE "PRACOWNICY" 
   (	"ID_PRACOWNIKA" NUMBER, 
	"IMIE" VARCHAR2(20), 
	"NAZWISKO" VARCHAR2(20), 
	"ID_STANOWISKA" NUMBER, 
	"DZIAL" VARCHAR2(20)
   ) ;

   COMMENT ON COLUMN "PRACOWNICY"."ID_PRACOWNIKA" IS 'Indywidualny numer pracownika';
   COMMENT ON COLUMN "PRACOWNICY"."IMIE" IS 'Imi? pracownika';
   COMMENT ON COLUMN "PRACOWNICY"."NAZWISKO" IS 'Nazwisko pracownika';
   COMMENT ON COLUMN "PRACOWNICY"."ID_STANOWISKA" IS 'Numer stanowiska';
   COMMENT ON COLUMN "PRACOWNICY"."DZIAL" IS 'Nazwa dzia?u w firmie';
--------------------------------------------------------
--  DDL for Table STANOWISKO
--------------------------------------------------------

  CREATE TABLE "STANOWISKO" 
   (	"ID_STANOWISKA" NUMBER, 
	"STANOWISKO" VARCHAR2(20), 
	"GODZ_WE" NUMBER DEFAULT 0, 
	"GODZ_WY" NUMBER DEFAULT 24
   ) ;

   COMMENT ON COLUMN "STANOWISKO"."ID_STANOWISKA" IS 'Numer stanowiska';
   COMMENT ON COLUMN "STANOWISKO"."STANOWISKO" IS 'Stanowisko pracownika';
   COMMENT ON COLUMN "STANOWISKO"."GODZ_WE" IS 'Od kt?rej godziny danego dnia pracownikowi nalicza si? czas pracy';
   COMMENT ON COLUMN "STANOWISKO"."GODZ_WY" IS 'Do kt?rej godziny danego dnia pracownikowi nalicza si? czas pracy';
REM INSERTING into ODBICIA
SET DEFINE OFF;
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('82',to_timestamp('2018-01-20 19:12:00','YYYY-MM-DD HH24:MI:SS'),'3','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('81',to_timestamp('2018-01-20 09:12:00','YYYY-MM-DD HH24:MI:SS'),'2','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('86',to_timestamp('2018-01-22 06:04:00','YYYY-MM-DD HH24:MI:SS'),'3','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('84',to_timestamp('2018-01-21 06:31:00','YYYY-MM-DD HH24:MI:SS'),'3','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('67',to_timestamp('2018-01-20 16:22:07','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('68',to_timestamp('2018-01-20 22:12:07','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('85',to_timestamp('2018-01-21 21:25:00','YYYY-MM-DD HH24:MI:SS'),'3','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('87',to_timestamp('2018-01-23 20:12:00','YYYY-MM-DD HH24:MI:SS'),'3','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('88',to_timestamp('2018-01-24 05:52:00','YYYY-MM-DD HH24:MI:SS'),'3','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('319',to_timestamp('2018-05-05 05:42:34','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('320',to_timestamp('2018-05-05 05:44:48','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('321',to_timestamp('2018-05-05 05:48:23','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('322',to_timestamp('2018-05-05 05:48:27','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('323',to_timestamp('2018-05-05 05:49:29','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('324',to_timestamp('2018-05-05 05:50:17','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('317',to_timestamp('2018-05-05 05:37:06','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('325',to_timestamp('2018-05-05 05:57:09','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('326',to_timestamp('2018-05-05 05:58:10','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('318',to_timestamp('2018-05-05 05:42:27','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('327',to_timestamp('2018-05-05 06:01:00','YYYY-MM-DD HH24:MI:SS'),'2','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('328',to_timestamp('2018-05-05 06:01:10','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('329',to_timestamp('2018-05-05 06:03:20','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('330',to_timestamp('2018-05-05 06:04:07','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('331',to_timestamp('2018-05-05 06:04:12','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('332',to_timestamp('2018-05-05 06:04:54','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('333',to_timestamp('2018-05-05 06:05:52','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('334',to_timestamp('2018-05-05 06:11:49','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('335',to_timestamp('2018-05-05 06:11:59','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('336',to_timestamp('2018-05-05 06:13:46','YYYY-MM-DD HH24:MI:SS'),'1','WE');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('337',to_timestamp('2018-05-05 06:38:05','YYYY-MM-DD HH24:MI:SS'),'1','WY');
Insert into ODBICIA (ID_ODBICIA,DATA,ID_PRACOWNIKA,KIERUNEK) values ('338',to_timestamp('2018-05-05 06:41:51','YYYY-MM-DD HH24:MI:SS'),'1','WE');
REM INSERTING into PRACOWNICY
SET DEFINE OFF;
Insert into PRACOWNICY (ID_PRACOWNIKA,IMIE,NAZWISKO,ID_STANOWISKA,DZIAL) values ('1','Marek','Kowal','1','Administracja');
Insert into PRACOWNICY (ID_PRACOWNIKA,IMIE,NAZWISKO,ID_STANOWISKA,DZIAL) values ('2','Piotr','Trzeci','2','Logistyka');
Insert into PRACOWNICY (ID_PRACOWNIKA,IMIE,NAZWISKO,ID_STANOWISKA,DZIAL) values ('3','Michal','Kowalski','3','Produkcja');
REM INSERTING into STANOWISKO
SET DEFINE OFF;
Insert into STANOWISKO (ID_STANOWISKA,STANOWISKO,GODZ_WE,GODZ_WY) values ('1','Ksiegowy','8','18');
Insert into STANOWISKO (ID_STANOWISKA,STANOWISKO,GODZ_WE,GODZ_WY) values ('2','Kierowca','0','0');
Insert into STANOWISKO (ID_STANOWISKA,STANOWISKO,GODZ_WE,GODZ_WY) values ('3','Magazynier','20','6');
--------------------------------------------------------
--  DDL for Index ODBICIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ODBICIA_PK" ON "ODBICIA" ("ID_ODBICIA") 
  ;
--------------------------------------------------------
--  DDL for Index PRACOWNICY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRACOWNICY_PK" ON "PRACOWNICY" ("ID_PRACOWNIKA") 
  ;
--------------------------------------------------------
--  DDL for Index STANOWISKO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STANOWISKO_PK" ON "STANOWISKO" ("ID_STANOWISKA") 
  ;
--------------------------------------------------------
--  DDL for Procedure DODAJ_PRACOWNIKA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DODAJ_PRACOWNIKA" 
(
--  ID_PRACOWNIKA IN NUMBER DEFAULT (ID_PRACOWNIKA_SEQ.NEXTVAL)
  IMIE IN VARCHAR2
, NAZWISKO IN VARCHAR2 
, ID_STANOWISKA IN NUMBER 
, DZIAL IN VARCHAR2 DEFAULT 'Produkcja'
) AS 
BEGIN
  INSERT INTO PRACOWNICY (
   ID_PRACOWNIKA,
   IMIE,
   NAZWISKO,
   ID_STANOWISKA,
   DZIAL
)
VALUES (
  ID_PRACOWNIKA_SEQ.NEXTVAL, --DODAJ_PRACOWNIKA.ID_PRACOWNIKA
  IMIE,
  NAZWISKO,
  ID_STANOWISKA,
  DZIAL
);
END DODAJ_PRACOWNIKA;

/
--------------------------------------------------------
--  DDL for Procedure ODBICIE_PRACOWNIKA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ODBICIE_PRACOWNIKA" 
(
  data_odbicia IN TIMESTAMP
, id_prac IN NUMBER 
) AS 

-- Kierunek ma typ "VARCHAR2(2 BYTE)" (2 BYTE bo 2 litery, WE albo WY), uzylem wiec innego sposobu
-- na deklaracje zmiennej "kier" - jest to zmienna o takim samym typie co kolumna KIERUNEK w tabeli ODBICIA
kier ODBICIA.KIERUNEK%TYPE;

--Dwa razy BEGIN, bojezeli wystapi EXCEPTION, to automatycznie wyrzuca za END
--A z jednym BEGIN, mam tylko jedno END, ktore jest koncem calego programu,
--Potrzebuje wiec "sztucznego" END w polowie programu i po to jest drugie BEGIN
BEGIN
    BEGIN
--Sprawdzamy czy istnieje, i jezeli tak to wczytujemy wartosc z tabeli ODBICIA, kolumny KIERUNEK, 
--do zmiennej kier, musimy miec tylko 1 wartosc (sprawdzamy co bylo ostatnie), dlatego dodajemy
--ROWNUM <= 1 (to samo co TOP 1, albo LIMIT 1, ktorych oracle nie obsluguje... -.-), czyli pierwsza wartosc
--a skoro segregujemy ORDER BY ID_ODBICIA DESC (descending - od najwiekszego) to dostajemy wartosc z 
--najwiekszym ID_ODBICIA danego pracownika, czyli w skorcie najpozniejszym odbiciem danego pracownika
        SELECT KIERUNEK INTO kier
        FROM ODBICIA
        WHERE ID_PRACOWNIKA = id_prac AND ROWNUM <= 1
        ORDER BY ID_ODBICIA DESC;   
    
--Wyjatek NO_DATA_FOUND jest predefiniowany, wiec nie musimy go sami deklarowac, mozemy od razu
--wziac sie za jego obsluge.
--Zmienna kierunek jest tutaj dla nas wiadomoscia czy przy jego ostatnim odbiciu, dany pracownik wchodzil
--czy wychodzil z zakladu. Jezeli ostanie zarejestrowane jest jego wyjscie to oznacza ze odbicie ktore teraz
--wykonuje jest jego wejsciem do zakladu. Analogicznie, jezeli mamy zapisane wejscie, oznacza ze kolejne 
--odbicie bedzie wyjsciem. Nie moze przeciez wejsc ani wyjsc dwa razy pod rzad.

--W tym wypadku, jezeli nie znalezlismy zadnego poprzedniego odbicia pracownika, czyli pracownik
--dostal inne ID albo rozpoczyna prace, musimy jego pierwsze odbicie potraktowac jako wejscie
--ten wyjatek ma to symulowac
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        kier := 'WY';

    END;
--END specjalnie dla powyzszego wyjatku, jezeli wyrzuci exception, to nie ominie on reszty programu
--czyli przypisania ponizej, ktore jest konieczne zeby procedura dzialala, tylko co najwyzej
--skoczy sobie wlasnie za ten END, ktory i tak zostalby pominiety.

--Jezeli kierunek ktory wczytalismy z bazy byl wyjsciem, to teraz kierunek jest wejsciem, analogicznie na odwrot
CASE kier
    WHEN 'WE' THEN kier := 'WY';
    WHEN 'WY' THEN kier := 'WE';
    ELSE kier := 'WE';
END CASE;


  INSERT INTO ODBICIA (
   ID_ODBICIA,
   DATA,
   ID_PRACOWNIKA,
   KIERUNEK
)
VALUES (
  ID_ODBICIA_SEQ.NEXTVAL,
  TO_CHAR(ODBICIE_PRACOWNIKA.data_odbicia, 'YYYY-MM-DD hh24:mi:ss'),
  ODBICIE_PRACOWNIKA.id_prac,
  ODBICIE_PRACOWNIKA.kier
);

END ODBICIE_PRACOWNIKA;

/
--------------------------------------------------------
--  DDL for Procedure ODBICIE_PRACOWNIKA_APEX
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ODBICIE_PRACOWNIKA_APEX" 
(
 id_prac IN NUMBER 
) AS 

-- Kierunek ma typ "VARCHAR2(2 BYTE)" (2 BYTE bo 2 litery, WE albo WY), uzylem wiec innego sposobu
-- na deklaracje zmiennej "kier" - jest to zmienna o takim samym typie co kolumna KIERUNEK w tabeli ODBICIA
kier ODBICIA.KIERUNEK%TYPE;

--Dwa razy BEGIN, bojezeli wystapi EXCEPTION, to automatycznie wywalia za END
--A z jednym BEGIN, mam tylko jedno END, ktore jest koncem calego programu,
--Potrzebuje wiec "sztucznego" END w polowie programu i po to jest drugie BEGIN
BEGIN
    BEGIN
--Sprawdzamy czy istnieje, i jezeli tak to wczytujemy wartosc z tabeli ODBICIA, kolumny KIERUNEK, 
--do zmiennej kier, musimy miec tylko 1 wartosc (sprawdzamy co bylo ostatnie), dlatego dodajemy
--ROWNUM <= 1 (to samo co TOP 1, albo LIMIT 1, ktorych oracle nie obsluguje... -.-), czyli pierwsza wartosc
--a skoro segregujemy ORDER BY ID_ODBICIA DESC (descending - od najwiekszego) to dostajemy wartosc z 
--najwiekszym ID_ODBICIA danego pracownika, czyli w skorcie najpozniejszym odbiciem danego pracownika
        SELECT KIERUNEK INTO kier
        FROM ODBICIA
        WHERE ID_PRACOWNIKA = id_prac AND ROWNUM <= 1
        ORDER BY ID_ODBICIA DESC;   
    
--Wyjatek NO_DATA_FOUND jest predefiniowany, wiec nie musimy go sami deklarowac, mozemy od razu
--wziac sie za jego obsluge.
--Zmienna kierunek jest tutaj dla nas wiadomoscia czy przy jego ostatnim odbiciu, dany pracownik wchodzil
--czy wychodzil z zakladu. Jezeli ostanie zarejestrowane jest jego wyjscie to oznacza ze odbicie ktore teraz
--wykonuje jest jego wejsciem do zakladu. Analogicznie, jezeli mamy zapisane wejscie, oznacza ze kolejne 
--odbicie bedzie wyjsciem. Nie moze przeciez wejsc ani wyjsc dwa razy pod rzad.

--W tym wypadku, jezeli nie znalezlismy zadnego poprzedniego odbicia pracownika, czyli pracownik
--dostal inne ID albo rozpoczyna prace, musimy jego pierwsze odbicie potraktowac jako wejscie
--ten wyjatek ma to symulowac
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        kier := 'WY';

    END;
--END specjalnie dla powyzszego wyjatku, jezeli wyrzuci exception, to nie ominie on reszty programu
--czyli przypisania ponizej, ktore jest konieczne zeby procedura dzialala, tylko co najwyzej
--skoczy sobie wlasnie za ten END, ktory i tak zostalby pominiety.

--Jezeli kierunek ktory wczytalismy z bazy byl wyjsciem, to teraz kierunek jest wejsciem, analogicznie na odwrot
CASE kier
    WHEN 'WE' THEN kier := 'WY';
    WHEN 'WY' THEN kier := 'WE';
    ELSE kier := 'WE';
END CASE;

--TO_DATE('01/31/2012', 'MM/DD/YYYY');
--(to_date('18/01/20 16:22:07,000000000', 'YY-MM-DD hh24:mi')

  INSERT INTO ODBICIA (
   ID_ODBICIA,
   DATA,
   ID_PRACOWNIKA,
   KIERUNEK
)
VALUES (
  ID_ODBICIA_SEQ.NEXTVAL,
--  TO_CHAR(SYSTIMESTAMP, 'YYYY-MM-DD hh24:mi'),
  SYSTIMESTAMP,
  id_prac,
  kier
);

END ODBICIE_PRACOWNIKA_APEX;

/
--------------------------------------------------------
--  DDL for Function EWALUACJA_NA_RECORDACH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EWALUACJA_NA_RECORDACH" 
(
  id_prac IN NUMBER 

) RETURN NUMBER AS 


TYPE prac_record IS RECORD (
    wejscie TIMESTAMP,
    wyjscie TIMESTAMP,
    godz_we NUMBER,
    godz_wy NUMBER,
    czas_pracy_pracownika NUMBER,
    calkowity_czas_pracy NUMBER);

prac_info prac_record;

CURSOR cursor_we IS 
    SELECT ID_ODBICIA, DATA, KIERUNEK
    FROM ODBICIA
    WHERE KIERUNEK = 'WE' AND ID_PRACOWNIKA = id_prac
    ORDER BY ID_ODBICIA ASC;

record_we cursor_we%ROWTYPE;

CURSOR cursor_wy IS 
    SELECT ID_ODBICIA, DATA, KIERUNEK
    FROM ODBICIA
    WHERE KIERUNEK = 'WY' AND ID_PRACOWNIKA = id_prac
    ORDER BY ID_ODBICIA ASC;

record_wy cursor_wy%ROWTYPE;

BEGIN

    -- WCZYTANIE "WIDELEK" CZYLI PRZEDZIALU DOZWOLONYCH GODZIN WEJSCIA I WYJSCIA PRACOWNIKA
    SELECT STANOWISKO.GODZ_WE INTO prac_info.godz_we
    FROM STANOWISKO
    INNER JOIN PRACOWNICY ON STANOWISKO.ID_STANOWISKA=PRACOWNICY.ID_STANOWISKA
    WHERE ID_PRACOWNIKA = id_prac;

    SELECT STANOWISKO.GODZ_WY INTO prac_info.godz_wy
    FROM STANOWISKO
    INNER JOIN PRACOWNICY ON STANOWISKO.ID_STANOWISKA=PRACOWNICY.ID_STANOWISKA
    WHERE ID_PRACOWNIKA = id_prac;


--Potrzebna defninicja, inaczej zwroci NULL
prac_info.czas_pracy_pracownika := 0;
prac_info.calkowity_czas_pracy := 0;

OPEN cursor_we;
OPEN cursor_wy;

LOOP
    FETCH cursor_we INTO record_we;
    FETCH cursor_wy INTO record_wy;
    EXIT WHEN cursor_we%NOTFOUND OR cursor_wy%NOTFOUND;
    
        IF (EXTRACT(HOUR FROM record_we.DATA) < prac_info.godz_we) THEN
    -- ucinamy czas pracy bo wszedl za wczesnie
    -- (wyjscie pracownika - wejscie pracownika) - (od kiedy nalicza - wejscie pracownika)
        prac_info.czas_pracy_pracownika := TIMESTAMP_DIFF(record_wy.DATA, record_we.DATA)
                                 - (prac_info.godz_we*60*60 - TIMESTAMP_TO_NUMBER(record_we.DATA));
    ELSE
        prac_info.czas_pracy_pracownika := TIMESTAMP_DIFF(record_wy.DATA, record_we.DATA);
    END IF;

    IF (EXTRACT(HOUR FROM record_wy.DATA) >= prac_info.godz_wy) THEN
    -- ucinamy czas pracy bo wyszedl za pozno
        prac_info.czas_pracy_pracownika := (prac_info.czas_pracy_pracownika
                                 - (TIMESTAMP_TO_NUMBER(record_wy.DATA) - prac_info.godz_wy*60*60));
--    ELSE
--        czas_pracy_pracownika := TIMESTAMP_DIFF(wyjscie, wejscie);
    END IF;    
      
    prac_info.calkowity_czas_pracy := prac_info.calkowity_czas_pracy + prac_info.czas_pracy_pracownika;

  END LOOP;




    RETURN  prac_info.calkowity_czas_pracy;

--  RETURN 24 * (to_date(wyjscie, 'YYYY-MM-DD hh24:mi') 
--             - to_date(wejscie, 'YYYY-MM-DD hh24:mi'));-- diff_hours 
--       from dual;
END EWALUACJA_NA_RECORDACH;

/
--------------------------------------------------------
--  DDL for Function EWALUACJA_PRACOWNIKA
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EWALUACJA_PRACOWNIKA" 
(
  id_prac IN NUMBER 

) RETURN NUMBER AS 

wejscie TIMESTAMP;
wyjscie TIMESTAMP;
godz_we NUMBER;
godz_wy NUMBER;
czas_pracy_pracownika NUMBER;
calkowity_czas_pracy NUMBER;

-- Cursor pozwala mi zwrocic caly "wiersz" z danymi czyli tutaj - ID_ODBICIA, DATA, KIERUNEK
-- ORDER BY ID_ODBICIA, poniewaz musze miec wszytkie wejscia pracownika po kolei
-- Dzialanie procedury polega na tym, ze biore PARAMI WEJSCIE I WYJSCIE i obliczam ich roznice
-- Czyli wejscie 1 i wyjscie 1, wejscie 2 i wyjscie 2, ORDER_BY ID_ODBICIA  gwarantuje ze kolejnosc bedzie ok
CURSOR cursor_we IS 
    SELECT ID_ODBICIA, DATA, KIERUNEK
    FROM ODBICIA
    WHERE KIERUNEK = 'WE' AND ID_PRACOWNIKA = id_prac
    ORDER BY ID_ODBICIA ASC;

--Potrzebuje typ danych ktory jest w stanie przechowac ten kursor
--Tak jak mamy struktury w C++, deklaruje zmienna record_we o typie danych cursor_we
--Czyli jakby kontener na te wlasnie kursory

record_we cursor_we%ROWTYPE;
--Taki zapis powoduje tez, ze przy zmianie kursora, record sam sie do niego dopasowuje
--dzieki czemu nie trzeba zmieniac calego programu (analogicznie uzywa sie tego do pojedynczych
--typow np. zamiast "wejscie TIMESTAMP", to wejscie ODBICIA.DATA%TYPE

CURSOR cursor_wy IS 
    SELECT ID_ODBICIA, DATA, KIERUNEK
    FROM ODBICIA
    WHERE KIERUNEK = 'WY' AND ID_PRACOWNIKA = id_prac
    ORDER BY ID_ODBICIA ASC;

--To samo co u gory, moglbym uzyc cursor_we%ROWTYPE i tez byloby dobrze
record_wy cursor_wy%ROWTYPE;



BEGIN
    --wczytanie danych do moich zmiennych, te akurat sa stale, czyli nie musze korzystac z kursorow
    --wczytam je tylko raz, sa to "widelki", czyli dopuszczalne godziny pracy pracownika
    SELECT STANOWISKO.GODZ_WE INTO godz_we
    FROM STANOWISKO
    INNER JOIN PRACOWNICY ON STANOWISKO.ID_STANOWISKA=PRACOWNICY.ID_STANOWISKA
    WHERE ID_PRACOWNIKA = id_prac;

    SELECT STANOWISKO.GODZ_WY INTO godz_wy
    FROM STANOWISKO
    INNER JOIN PRACOWNICY ON STANOWISKO.ID_STANOWISKA=PRACOWNICY.ID_STANOWISKA
    WHERE ID_PRACOWNIKA = id_prac;


--Potrzebna defninicja, inaczej zwroci NULL (do null nic nie moge dodawac tzn. NULL + x = NULL)  
czas_pracy_pracownika := 0;
calkowity_czas_pracy := 0;
    
--otwieram wczesniej utworzone za pomoca SELECT kursory, tylko po OPEN moge na nich pracowac
--taka skladnia i tyle
OPEN cursor_we;
OPEN cursor_wy;

LOOP
-- Za pomoca FETCH mozemy z naszego kursora wydobyc JEDEN wiersz z danymi 
--(np. dla cursor_we bedzie to 
-- Mamy na te dane specjalna strukture (record), i tam przekierowujemy JEDEN (na poczatku pierwszy!) wiersz kursora
-- KOLEJNE polecenia FETCH (sa w petli LOOP), wczytuja kolejne wiersze, tzn. wczytuje wiersz i
-- wskaznik na drugi wiersz, itd.

    FETCH cursor_we INTO record_we;
    FETCH cursor_wy INTO record_wy;
-- EXIT WHEN moze byc gdziekolwiek, wazne zeby byl przed koncem END LOOP
    EXIT WHEN cursor_we%NOTFOUND OR cursor_wy%NOTFOUND;
    
        IF (EXTRACT(HOUR FROM record_we.DATA) < godz_we) THEN
    -- ucinamy czas pracy bo wszedl za wczesnie
    -- (wyjscie pracownika - wejscie pracownika) - (od kiedy nalicza - wejscie pracownika)
        czas_pracy_pracownika := TIMESTAMP_DIFF(record_wy.DATA, record_we.DATA)
                                 - (godz_we*60*60 - TIMESTAMP_TO_NUMBER(record_we.DATA));
    ELSE --Nie wszedl za wczesnie, czyli czas pracy liczymy od momentu wejscia do wyjscia
        czas_pracy_pracownika := TIMESTAMP_DIFF(record_wy.DATA, record_we.DATA);
    END IF;

    IF (EXTRACT(HOUR FROM record_wy.DATA) >= godz_wy) THEN
    -- ucinamy czas pracy bo wyszedl za pozno
        czas_pracy_pracownika := (czas_pracy_pracownika
                                 - (TIMESTAMP_TO_NUMBER(record_wy.DATA) - godz_wy*60*60));

    END IF;    
      
    calkowity_czas_pracy := calkowity_czas_pracy + czas_pracy_pracownika;

  END LOOP;

CLOSE cursor_we;
CLOSE cursor_wy;


    RETURN ROUND(calkowity_czas_pracy / (60*60),1);

--  RETURN 24 * (to_date(wyjscie, 'YYYY-MM-DD hh24:mi') 
--             - to_date(wejscie, 'YYYY-MM-DD hh24:mi'));-- diff_hours 
--       from dual;
END EWALUACJA_PRACOWNIKA;

/
--------------------------------------------------------
--  DDL for Function TIMESTAMP_DIFF
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TIMESTAMP_DIFF" (a IN timestamp, b IN timestamp) 
return number as 
begin
  return extract (day    from (a-b))*24*60*60 +
         extract (hour   from (a-b))*60*60+
         extract (minute from (a-b))*60+
         extract (second from (a-b));
end;

/
--------------------------------------------------------
--  DDL for Function TIMESTAMP_TO_NUMBER
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "TIMESTAMP_TO_NUMBER" 
(
  a IN TIMESTAMP 
) RETURN NUMBER AS 
BEGIN
  RETURN-- extract (day    from (a-b))*24*60*60 +
         extract (hour   from a)*60*60+
         extract (minute from a)*60+
         extract (second from a);
END TIMESTAMP_TO_NUMBER;

/
--------------------------------------------------------
--  Constraints for Table ODBICIA
--------------------------------------------------------

  ALTER TABLE "ODBICIA" ADD CONSTRAINT "ODBICIA_PK" PRIMARY KEY ("ID_ODBICIA") ENABLE;
  ALTER TABLE "ODBICIA" MODIFY ("KIERUNEK" NOT NULL ENABLE);
  ALTER TABLE "ODBICIA" MODIFY ("ID_PRACOWNIKA" NOT NULL ENABLE);
  ALTER TABLE "ODBICIA" MODIFY ("DATA" NOT NULL ENABLE);
  ALTER TABLE "ODBICIA" MODIFY ("ID_ODBICIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "PRACOWNICY" ADD CONSTRAINT "PRACOWNICY_PK" PRIMARY KEY ("ID_PRACOWNIKA") ENABLE;
  ALTER TABLE "PRACOWNICY" MODIFY ("ID_STANOWISKA" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNICY" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNICY" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNICY" MODIFY ("ID_PRACOWNIKA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STANOWISKO
--------------------------------------------------------

  ALTER TABLE "STANOWISKO" ADD CONSTRAINT "STANOWISKO_PK" PRIMARY KEY ("ID_STANOWISKA") ENABLE;
  ALTER TABLE "STANOWISKO" MODIFY ("STANOWISKO" NOT NULL ENABLE);
  ALTER TABLE "STANOWISKO" MODIFY ("ID_STANOWISKA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ODBICIA
--------------------------------------------------------

  ALTER TABLE "ODBICIA" ADD CONSTRAINT "ODBICIA_FK1" FOREIGN KEY ("ID_PRACOWNIKA")
	  REFERENCES "PRACOWNICY" ("ID_PRACOWNIKA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRACOWNICY
--------------------------------------------------------

  ALTER TABLE "PRACOWNICY" ADD CONSTRAINT "PRACOWNICY_FK1" FOREIGN KEY ("ID_STANOWISKA")
	  REFERENCES "STANOWISKO" ("ID_STANOWISKA") ENABLE;
