create table Team
(
 teamname varchar(60),
 photo varchar(90),
 president varchar(60),
 coach varchar(60),
 field varchar(90),
 address varchar(90),
 telephone varchar(60),
 primary key ( teamname )
 );

 
//Integer – number(10) - NUMBER range is -2,147,483,647 to 2,147,483,647



create table SPlayer
(
playername varchar(60),
photo varchar(90),
height numeric(3,2),
born_date varchar(60),
nationality varchar(50),
positition varchar(45),
pnumber number(10),
id_splayer varchar(60),
primary key (id_splayer)
);


create table JoinTeamPlayer
(
teamname varchar(60),
id_splayer varchar(60),
id_jtp varchar(60),
primary key (id_jtp)
);



create table JoinPlayer
(
id_splayer varchar(60),
id_dplayer  varchar(60),
id_jp varchar(60),
primary key (id_jp)
);












create table DPlayer
(
gamename varchar(60),
minutes numeric(4,2),
points number(10),
fg2 numeric(5,3),
fg3 numeric(5,3),
ft numeric(7,4),
reboundo number(10),
reboundd number(10),
reboundt number(10),
Assist number(10),
steals number(10),
wrongs number(10),
fv number(10),
ag number(10),
cm number(10),
rv number(10),
rip number(10),
id_dplayer varchar(60),
primary key (id_dplayer)
);







create table SGame
(
date_time varchar(60),
field varchar(60),
visitors number(10),
hname varchar(40),
fname varchar(40),
id_sgame varchar(80),
primary key (id_sgame)
HPoints number(20),
FPoints number(20)
);



create table JoinTeamGame
(
teamname varchar(60),
id_sgame varchar(60),
id_jtg varchar(60),
primary key (id_jtg)
);

 
create table JoinGame
(
id_sgame varchar(60),
id_dgame varchar(60),
id_jg varchar(60),
primary key (id_jg)
);
create table DGame
(
teamname varchar(60),
playername varchar(60),
minutes numeric(4,2),
points number(10),
fg2 numeric(5,3),
fg3 numeric(5,3),
ft numeric(7,4),
reboundo number(10),
reboundd number(10),
reboundt number(10),
Assist number(10),
steals number(10),
wrongs number(10),
fv number(10),
ag number(10),
cm number(10),
rv number(10),
rip number(10),
id_dgame varchar(60),
primary key (id_dgame)
);






TEAMS
insert into Team values ( 'ANADOLU EFES ISTANBUL', '1.png', 'Tuncay Ozilhan', 'PERASOVIC VELIMIR', 'ABDI IPEKCI ARENA
10, Yil Caddesi Zeytinburnu, 34760 Istanbul', 'Bahcelievler Mah. Sehit Ibrahim Koparir Cad. No:4 Bahcelievler 34180 Istanbul Turkey', '+90 212 449 3876'  );

insert into Team values ( 'BASKONIA VITORIA GASTEIZ', '2.jpg', 'Jose Antonio Querejeta', 'ALONSO SITO', 'FERNANDO BUESA ARENA
Ctra. Zurbano s/n, 01013 Vitoria', 'Fernando Buesa Arena Ctra. Zurbano S/N 01013 Vitoria - Spain', '+34 945 273 400'  );

insert into Team values ( 'BROSE BAMBERG', '3.png', 'Norbet Sieben', 'TRINCHIERI ANDREA', 'BROSE ARENA
Forchheimer Str.15, Bamberg', 'Kornstrasse 20 96050 Bamberg Germany', '+ 49 951 91 51 90'  );

insert into Team values ( 'CRVENA ZVEZDA MTS BELGRADE', '4.png', 'Nebojsa Covic', 'RADONJIC DEJAN', 'KOMBANK ARENA
Blv. Arsenija Carnojevica, 58, Beograd', 'Mali Kalemegdan 2 11000 Beograd - Serbia', '+381 11 2570 199'  );

insert into Team values ( 'CSKA MOSCOW', '5.png', 'Andrey Vatutin', 'ITOUDIS DIMITRIS', 'MEGASPORT ARENA
3, Khodynskiy Blv., 125252 Moscow', 'Leningradsky Prospect, 39 125167 Moscow - Russia', '+ +7 495 225 2666'  );

insert into Team values ( 'DARUSSAFAKA DOGUS ISTANBUL', '6.png', 'Erman Yerdelen', 'BLATT DAVID', 'VOLKSWAGEN ARENA 
Huzur Mah. Maslak Ayazaga Cad. No 4A - Sariyer, 34396 Istanbul (Turkey)', 'Temporary empty-', 'Temporary empty-'  );

insert into Team values ( 'EA7 EMPORIO ARMANI MILAN', '7.png', 'Livio Proli', 'REPESA JASMIN', 'MEDIOLANUM FORUM
Via G. Di Vittorio 6, 20090 Assago', 'Via Borgonuovo, 11 20121 Milano, Italy', '+39 02 7000 16 15'  );

insert into Team values ( 'FC BARCELONA LASSA', '8.png', 'Josep Maria Bartomeu', 'BARTZOKAS GEORGIOS', 'PALAU BLAUGRANA
Aristides Maillol Av S/N, 08028 Barcelona', 'Aristides Maillol Av, S/N Access 11, 08028 Barcelona - Spain', '+34 93 496 3714'  );

insert into Team values ( 'FENERBAHCE ISTANBUL', '9.png', 'Aziz Yildirim', 'OBRADOVIC ZELJKO', 'FENERBAHCE ULKER SPORTS ARENA
Barbaros Mah. Ihlamur Sok. Bat? Atasehir, 34764 Istanbul', 'Barbaros Mah. Dereboyu Cad. Bat? Atasehir, 34764 Istanbul, Turkey', '+90 216 687 24 24'  );

insert into Team values ( 'GALATASARAY ODEABANK ISTANBUL', '10.png', 'Dursun Ozbek', 'ATAMAN ERGIN', 'ABDI IPEKCI ARENA
10, Yil Caddesi Zeytinburnu, 34760 Istanbul', 'Ali Semi Yen Spor Kompleksi Turk Telekom ArenaHuzur M.Seyrantepe 34415 Istanbul - Turkey', '+902 122 732 850'  );

insert into Team values ( 'MACCABI FOX TEL AVIV', '11.png', 'Shimon Mizrahi', 'BAGATSKIS AINARS', 'MENORA MIVTACHIM ARENA
51, Igal Alon, 67062 Tel Aviv', 'Hayarkon St. 293 63504 Tel Aviv - Israel', '+972 3 605 9333'  );

insert into Team values ( 'OLYMPIACOS PIRAEUS', '12.png', 'Panagiotis and Georgios Angelopoulos', 'SFAIROPOULOS IOANNIS', 'PEACE AND FRIENDSHIP STADIUM
Ethnarchou Makariou Av., Piraeus', 'Ethnarchou Makariou 1 Av., 18547 Neo Faliro / Piraeus - Greece', '+30 210 452 7600'  );

insert into Team values ( 'PANATHINAIKOS SUPERFOODS ATHENS', '13.png', 'Manos Papadopoulos', 'PASCUAL XAVI', 'OLYMPIC SPORTS CENTER ATHENS
37 Kifisias Avenue, 15123 Marousi', '14 Km, National Road Athinon-Lamias, 14564 Kifissia, Athens - Greece', ' +30 210 610 7160 / 1'  );

insert into Team values ( 'REAL MADRID', '14.png', 'Florentino Perez', 'LASO PABLO', 'WIZINK CENTER
Avenida de Felipe II s/n, Madrid', 'Av. Concha Espina 1, 28036 Madrid - Spain', '+34 91 398 43 32'  );

insert into Team values ( 'UNICS KAZAN', '15.png', 'Eugeny Bogachev', 'PASHUTIN EVGENY', 'BASKET HALL KAZAN
Spartakovskaya Street 1, 420107 Kazan', 'Jalil Str. 7, 420111 Kazan, Russia', '+7 8432 92 1655'  );








SPlayers

1)
insert into SPlayer values ( 'THOMAS DESHAUN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-1.jpg', 2.01, '29 AUGUST 1991', 'UNITED STATES OF AMERICA', 'FORWARD', 1, 'THOMAS DESHAUN 1' ) ;

insert into SPlayer values ( 'HONEYCUTT TYLER', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-2.jpg', 2.03, '15 JULY 1990', 'UNITED STATES OF AMERICA', 'FORWARD', 2, 'HONEYCUTT TYLER 2' ) ;

insert into SPlayer values ( 'BAYKAN OGULCAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-3.jpg', 1.96, '7 JANUARY 1996', 'TURKEY', 'GUARD', 3, 'BAYKAN OGULCAN 3' ) ;

insert into SPlayer values ( 'BALBAY DOGUS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-4.jpg', 1.85, '21 JANUARY 1989', 'TURKEY', 'GUARD', 4, 'BALBAY DOGUS 4' ) ;

insert into SPlayer values ( 'BROWN DERRICK', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-5.jpg', 2.03, '8 SEPTEMBER 1987', 'UNITED STATES OF AMERICA', 'FORWARD', 5, 'BROWN DERRICK 5' ) ;

insert into SPlayer values ( 'OSMAN CEDI', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-6.jpg', 2.04, '8 APRIL 1995', 'TURKEY', 'FORWARD', 6, 'OSMAN CEDI 6' ) ;

insert into SPlayer values ( 'GEYIK SAMET', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-7.jpg', 2.06, '12 JANUARY 1993', 'TURKEY', 'FORWARD', 9, 'GEYIK SAMET 9' ) ;

insert into SPlayer values ( 'DEMIR BERK', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-8.jpg', 2.04, '18 MAY 1995', 'TURKEY', 'FORWARD', 11, 'DEMIR BERK 11' ) ;

insert into SPlayer values ( 'GRANGER JAYSON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-9.jpg', 1.89, '15 SEPTEMBER 1989', 'URUGUAY', 'GUARD', 15, 'GRANGER JAYSON 15' ) ;

insert into SPlayer values ( 'OMIC ALEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-10.jpg', 2.16, '6 MAY 1992', 'SLOVENIA', 'CENTER', 23, 'OMIC ALEN 23' ) ;

insert into SPlayer values ( 'HEURTEL THOMAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-11.jpg', 1.89, '10 APRIL 1989', 'FRANCE', 'GUARD', 31, 'HEURTEL THOMAS 31' ) ;

insert into SPlayer values ( 'MUTAF MAXIM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-12.jpg', 1.93, '9 JANUARY 1991', 'TURKEY', 'GUARD', 32, 'MUTAF MAXIM 32' ) ;

insert into SPlayer values ( 'PAUL BRANDON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-13.jpg', 1.93, '30 APRIL 1991', 'UNITED STATES OF AMERICA', 'GUARD', 33, 'PAUL BRANDON 33' ) ;

insert into SPlayer values ( 'DUNSTON BRYANT', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\1-14.jpg', 2.03, '28 MAY 1986', 'UNITED STATES OF AMERICA', 'CENTER', 42, 'DUNSTON BRYANT 42' ) ;









2)
insert into SPlayer values ( 'LARKIN SHANE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-1.jpg', 1.80, ' 2 OCTOBER 1992', 'UNITED STATES OF AMERICA', 'GUARD', 0, 'LARKIN SHANE 0' ) ;

insert into SPlayer values ( 'BARGNANI ANDREA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-2.jpg', 2.13, '26 OCTOBER 1985', 'ITALY', 'CENTER', 1, 'BARGNANI ANDREA 1' ) ;

insert into SPlayer values ( 'PRIGIONI PABLO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-3.jpg', 1.93, '17 MAY 1977', 'ARGENTINA', 'GUARD', 5, 'PRIGIONI PABLO 5' ) ;

insert into SPlayer values ( 'VOIGTMANN JOHANNES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-4.jpg', 2.11, '30 SEPTEMBER 1992', 'GERMANY', 'CENTER', 7, 'VOIGTMANN JOHANNES 7' ) ;

insert into SPlayer values ( 'HANGA ADAM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-5.jpg', 2.01, '12 APRIL 1989', 'HUNGARY', 'FORWARD', 8, 'HANGA ADAM 8' ) ;

insert into SPlayer values ( 'SEDEKERSKIS TADAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-6.jpg', 2.00, '17 JANUARY 1998', 'LITHUANIA', 'FORWARD', 9, 'SEDEKERSKIS TADAS 9' ) ;

insert into SPlayer values ( 'BEAUBOIS RODRIGUE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-7.jpg', 1.88, '24 APRIL 1988', 'FRANCE', 'GUARD', 10, 'BEAUBOIS RODRIGUE 10' ) ;

insert into SPlayer values ( 'BLAZIC JAKA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-8.jpg', 1.96, '30 JUNE 1990', 'SLOVENIA', 'GUARD', 11, 'BLAZIC JAKA 11' ) ;

insert into SPlayer values ( 'DIOP ILIMANE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-9.jpg', 2.10, '4 APRIL 1995', 'SPAIN', 'CENTER', 12, 'DIOP ILIMANE 12' ) ;

insert into SPlayer values ( 'TILLIE KIM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-10.jpg', 2.10, '15 JULY 1988', 'FRANCE', 'FORWARD', 14, 'TILLIE KIM 14' ) ;

insert into SPlayer values ( 'KURUCS ARTURS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-11.jpg', 1.90, '19 JANUARY 2000', 'LATVIA', 'GUARD', 17, 'KURUCS ARTURS 17' ) ;

insert into SPlayer values ( 'SHENGELIA TORNIKE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-12.jpg', 2.06, '5 OCTOBER 1991', 'GEORGIA', 'FORWARD', 23, 'SHENGELIA TORNIKE 23' ) ;

insert into SPlayer values ( 'BUDINGER CHASE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-13.jpg', 2.01, '22 MAY 1988', 'UNITED STATES OF AMERICA', 'FORWARD', 34, 'BUDINGER CHASE 34' ) ;

insert into SPlayer values ( 'LUZ RAFA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\2-14.jpg', 1.88, '11 FEBRUARY 1992', 'SPAIN', 'GUARD', 55, 'LUZ RAFA 55' ) ;










3)
insert into SPlayer values ( 'CAUSEUR FABIEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-1.jpg', 1.96, '16 JUNE 1987', 'FRANCE', 'GUARD', 1, 'CAUSEUR FABIEN 1' ) ;

insert into SPlayer values ( 'MELLI NICOLO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-2.jpg', 2.05, '26 JANUARY 1991', 'ITALY', 'FORWARD', 4, 'MELLI NICOLO 4' ) ;

insert into SPlayer values ( 'ZISIS NIKOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-3.jpg', 1.97, '16 AUGUST 1983', 'GREECE', 'GUARD', 6, 'ZISIS NIKOS 6' ) ;

insert into SPlayer values ( 'NIKOLIC ALEKSEJ', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-4.jpg', 1.91, '21 FEBRUARY 1995', 'SLOVENIA', 'GUARD', 7, 'NIKOLIC ALEKSEJ 7' ) ;

insert into SPlayer values ( 'STAIGER LUCCA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-5.jpg', 1.96, '14 JUNE 1988', 'GERMANY', 'GUARD', 8, 'STAIGER LUCCA 8' ) ;

insert into SPlayer values ( 'THEIS DANIEL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-6.jpg', 2.04, '4 APRIL 1992', 'GERMANY', 'CENTER', 10, 'THEIS DANIEL 10' ) ;

insert into SPlayer values ( 'LO MAODO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-7.jpg', 1.91, '31 DECEMBER 1992', 'GERMANY', 'GUARD', 12, 'LO MAODO 12' ) ;

insert into SPlayer values ( 'STRELNIEKS JANIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-8.jpg', 1.91, '1 SEPTEMBER 1989', 'LATVIA', 'GUARD', 13, 'STRELNIEKS JANIS 13' ) ;

insert into SPlayer values ( 'VEREMEENKO VLADIMIR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-9.jpg', 2.11, '21 JULY 1984', 'RUSSIAN FEDERATION', 'CENTER', 14, 'VEREMEENKO VLADIMIR 14' ) ;

insert into SPlayer values ( 'OLINDE LOUIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-10.jpg', 2.05, '19 MARCH 1998', 'GERMANY', 'FORWARD', 16, 'OLINDE LOUIS 16' ) ;

insert into SPlayer values ( 'HARRIS ELIAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-11.jpg', 2.03, '6 JULY 1989', 'GERMANY', 'FORWARD', 20, 'HARRIS ELIAS 20' ) ;

insert into SPlayer values ( 'MILLER DARIUS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-12.jpg', 2.03, '21 MARCH 1990', ' UNITED STATES OF AMERICA', 'FORWARD', 21, 'MILLER DARIUS 21' ) ;

insert into SPlayer values ( 'McNEAL JEREL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-13.jpg', 1.91, '1 JUNE 1987', 'UNITED STATES OF AMERICA', 'GUARD', 22, 'McNEAL JEREL 22' ) ;

insert into SPlayer values ( 'KRATZER LEON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\3-14.jpg', 2.12, '4 FEBRUARY 1997', 'GERMANY', 'CENTER', 25, 'KRATZER LEON 25' ) ;











4)
insert into SPlayer values ( 'WOLTERS NATE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-1.jpg', 1.93, '15 MAY 1991', 'UNITED STATES OF AMERICA' , 'GUARD', 0, 'WOLTERS NATE 0' );

insert into SPlayer values ( 'THOMPSON DEON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-2.jpg', 2.03, '16 SEPTEMBER 1988', 'UNITED STATES OF AMERICA' , 'FORWARD', 2, 'THOMPSON DEON 2' );

insert into SPlayer values ( 'DANGUBIC NEMANJA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-3.jpg', 2.04, '13 APRIL 1993', 'SERBIA' , 'FORWARD', 6, 'DANGUBIC NEMANJA 6' );

insert into SPlayer values ( 'MITROVIC LUKA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-4.jpg', 2.04, '21 MARCH 1993', 'SERBIA' , 'FORWARD', 9, 'MITROVIC LUKA 9' );

insert into SPlayer values ( 'LAZIC BRANKO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-5.jpg', 1.94, '12 JANUARY 1989', 'SERBIA' , 'GUARD', 10, 'LAZIC BRANKO 10' );

insert into SPlayer values ( 'SIMANIC BORISA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-6.jpg', 2.09, '20 MARCH 1998', 'SERBIA' , 'FORWARD', 12, 'SIMANIC BORISA 12' );

insert into SPlayer values ( 'DOBRIC OGNJEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-7.jpg', 2.00, '27 OCTOBER 1994', 'SERBIA' , 'FORWARD', 13, 'DOBRIC OGNJEN 13' );

insert into SPlayer values ( 'SIMONOVIC MARKO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-8.jpg', 2.03, '30 MAY 1986', 'SERBIA' , 'FORWARD', 19, 'SIMONOVIC MARKO 19' );

insert into SPlayer values ( 'RAKICEVIC PETAR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-9.jpg', 2.04, '4 JUNE 1995', 'SERBIA' , 'GUARD', 20, 'RAKICEVIC PETAR 20' );

insert into SPlayer values ( 'JENKINS CHARLES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-10.jpg', 1.91, '28 FEBRUARY 1989', 'SERBIA' , 'GUARD', 22, 'JENKINS CHARLES 22' );

insert into SPlayer values ( 'GUDURIC MARKO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-11.jpg', 1.96, '8 MARCH 1995', 'SERBIA' , 'GUARD', 23, 'GUDURIC MARKO 23' );

insert into SPlayer values ( 'JOVIC STEFAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-12.jpg', 1.98, '3 NOVEMBER 1990', 'SERBIA' , 'GUARD', 24, 'JOVIC STEFAN 24' );

insert into SPlayer values ( 'KUZMIC OGNJEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-13.jpg', 2.14, '16 MAY 1990', 'SERBIA' , 'CENTER', 32, 'KUZMIC OGNJEN 32' );

insert into SPlayer values ( 'BJELICA MILKO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\4-14.jpg', 2.07, '4 JUNE 1984', 'SERBIA' , 'FORWARD', 51, 'BJELICA MILKO 51' );










5)
insert into SPlayer values ( 'DE COLO NANDO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-1.jpg', 1.96, '23 JUNE 1987', 'FRANCE' , 'GUARD', 1, 'DE COLO NANDO 1' );

insert into SPlayer values ( 'KULAGIN DMITRY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-2.jpg', 1.97, '1 JULY 1992', 'RUSSIAN FEDERATION' , 'GUARD', 3, 'KULAGIN DMITRY 3' );

insert into SPlayer values ( 'TEODOSIC MILOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-3.jpg', 1.95, '19 MARCH 1987', 'SERBIA' , 'GUARD', 4, 'TEODOSIC MILOS 4' );

insert into SPlayer values ( 'AUGUSTINE JAMES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-4.jpg', 2.08, '27 FEBRUARY 1984', 'UNITED STATES OF AMERICA' , 'FORWARD', 5, 'AUGUSTINE JAMES 5' );

insert into SPlayer values ( 'FRIDZON VITALY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-5.jpg', 1.95, '14 OCTOBER 1985', 'RUSSIAN FEDERATION' , 'GUARD', 7, 'FRIDZON VITALY 7' );

insert into SPlayer values ( 'JACKSON AARON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-6.jpg', 1.90, '6 MAY 1986', 'UNITED STATES OF AMERICA' , 'GUARD', 9, 'JACKSON AARON 9' );

insert into SPlayer values ( 'ANTONOV SEMEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-7.jpg', 2.02, '18 JULY 1989', 'RUSSIAN FEDERATION' , 'FORWARD', 11, 'ANTONOV SEMEN 11' );

insert into SPlayer values ( 'KOROBKOV PAVEL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-8.jpg', 2.06, '18 OCTOBER 1990', 'RUSSIAN FEDERATION' , 'FORWARD', 12, 'KOROBKOV PAVEL 12' );

insert into SPlayer values ( 'LAZAREV IVAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-9.jpg', 2.10, '31 JANUARY 1991', 'RUSSIAN FEDERATION' , 'CENTER', 13, 'LAZAREV IVAN 13' );

insert into SPlayer values ( 'FREELAND JOEL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-10.jpg', 2.10, '7 FEBRUARY 1987', 'UNITED KINGDOM' , 'CENTER', 19, 'FREELAND JOEL 19' );

insert into SPlayer values ( 'VORONTSEVICH ANDREY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-11.jpg', 2.07, '17 JULY 1987', 'RUSSIAN FEDERATION' , 'FORWARD', 20, 'VORONTSEVICH ANDREY 20' );

insert into SPlayer values ( 'HIGGINS CORY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-12.jpg', 1.96, '14 JUNE 1989', 'UNITED STATES OF AMERICA' , 'GUARD', 22, 'HIGGINS CORY 22' );

insert into SPlayer values ( 'KULAGIN MIKHAIL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-13.jpg', 1.91, '4 AUGUST 1994', 'RUSSIAN FEDERATION' , 'GUARD', 30, 'KULAGIN MIKHAIL 30' );

insert into SPlayer values ( 'KHRYAPA VICTOR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\5-14.jpg', 2.03, '3 AUGUST 1982', 'RUSSIAN FEDERATION' , 'FORWARD', 31, 'KHRYAPA VICTOR 31' );










6)
insert into SPlayer values ( 'WILBEKIN SCOTTIE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-1.jpg', 1.88, '5 APRIL 1993', 'UNITED STATES OF AMERICA', 'GUARD', 1, 'WILBEKIN SCOTTIE 1' );

insert into SPlayer values ( 'ARSLAN ENDER', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-2.jpg', 1.88, '13 JANUARY 1983', 'TURKEY', 'GUARD', 3, 'ARSLAN ENDER 3' );

insert into SPlayer values ( 'YAGMUR MEHMET', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-3.jpg', 1.88, '1 JULY 1987', 'TURKEY', 'GUARD', 4, 'YAGMUR MEHMET 4' );

insert into SPlayer values ( 'TUREN METIN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-4.jpg', 2.06, '2 MAY 1994', 'TURKEY', 'FORWARD', 7, 'TUREN METIN 7' );

insert into SPlayer values ( 'BATUK BIRKAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-5.jpg', 1.96, '30 JANUARY 1990', 'TURKEY', 'FORWARD', 8, 'BATUK BIRKAN 8' );

insert into SPlayer values ( 'ERDEN SEMIH', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-6.jpg', 2.10, '28 JULY 1986', 'TURKEY', 'CENTER', 9, 'ERDEN SEMIH 9' );

insert into SPlayer values ( 'WANAMAKER BRAD', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-7.jpg', 1.93, ' 25 JULY 1989', 'UNITED STATES OF AMERICA', 'GUARD', 11, 'WANAMAKER BRAD 11' );

insert into SPlayer values ( 'CLYBURN WILL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-8.jpg', 2.01, '17 MAY 1990', 'UNITED STATES OF AMERICA', 'FORWARD', 12, 'CLYBURN WILL 12' );

insert into SPlayer values ( 'MOERMAN ADRIEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-9.jpg', 2.01, '7 AUGUST, 1988', 'FRANCE', 'FORWARD', 18, 'MOERMAN ADRIEN 18' );

insert into SPlayer values ( 'ALDEMIR FURKAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-10.jpg', 2.07, '9 AUGUST 1991', 'TURKEY', 'CENTER', 19, 'ALDEMIR FURKAN 19' );

insert into SPlayer values ( 'SAVAS OGUZ', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-11.jpg', 2.13, '13 JULY 1987', 'TURKEY', 'CENTER', 21, 'SAVAS OGUZ 21' );

insert into SPlayer values ( 'ANDERSON JAMES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-12.jpg', 1.98, '25 MARCH 1989', 'UNITED STATES OF AMERICA', 'FORWARD', 23, 'ANDERSON JAMES 23' );

insert into SPlayer values ( 'ZIZIC ANTE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-13.jpg', 2.10, '4 JANUARY, 1997', 'CROATIA', 'CENTER', 41, 'ZIZIC ANTE 41' );

insert into SPlayer values ( 'SLAUGHTER MARCUS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\6-14.jpg', 2.04, '18 MARCH 1985', 'UNITED STATES OF AMERICA', 'FORWARD', 44, 'SLAUGHTER MARCUS 44');










7)
insert into SPlayer values ( 'MCLEAN JAMEL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-1.jpg', 2.03, '18 APRIL 1988', 'UNITED STATES OF AMERICA', 'FORWARD', 1, 'MCLEAN JAMEL 1' ) ;

insert into SPlayer values ( 'FONTECCHIO SIMONE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-2.jpg', 2.03, ' 9 DECEMBER 1995', 'ITALY', 'FORWARD', 2, 'FONTECCHIO SIMONE 2' ) ;

insert into SPlayer values ( 'HICKMAN RICKY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-3.jpg', 1.89, '1 SEPTEMBER 1985', 'UNITED STATES OF AMERICA', 'GUARD', 7, 'HICKMAN RICKY 7' ) ;

insert into SPlayer values ( 'KALNIETIS MANTAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-4.jpg', 1.95, '6 SEPTEMBER 1986', 'LITHUANIA', 'GUARD', 9, 'KALNIETIS MANTAS 9' ) ;

insert into SPlayer values ( 'RADULJICA MIROSLAV', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-5.jpg', 2.13, '5 JANUARY 1988', 'SERBIA', 'CENTER', 11, 'RADULJICA MIROSLAV 11' ) ;

insert into SPlayer values ( 'DRAGIC ZORAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-6.jpg', 1.96, '22 JUNE 1989', 'SLOVENIA', 'GUARD', 12, 'DRAGIC ZORAN 12' ) ;

insert into SPlayer values ( 'MACVAN MILAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-7.jpg', 2.06, '16 NOVEMBER 1989', 'SERBIA', 'CENTER', 13, 'MACVAN MILAN 13' ) ;

insert into SPlayer values ( 'PASCOLO DAVIDE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-8.jpg', 2.03, '14 DECEMBER 1990', 'ITALY', 'FORWARD', 14, 'PASCOLO DAVIDE 14' ) ;

insert into SPlayer values ( 'CINCIARINI ANDREA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-9.jpg', 1.90, '21 JUNE 1986', 'ITALY', 'GUARD', 20, 'CINCIARINI ANDREA 20' ) ;

insert into SPlayer values ( 'SANDERS RAKIM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-10.jpg', 1.93, '8 JULY 1989', 'UNITED STATES OF AMERICA', 'FORWARD', 21, 'SANDERS RAKIM 21' ) ;

insert into SPlayer values ( 'ABASS AWUDU', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-11.jpg', 2.00, '27 JANUARY 1993', 'ITALY', 'GUARD', 23, 'ABASS AWUDU 23' ) ;

insert into SPlayer values ( 'CERELLA BRUNO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-12.jpg', 1.94, '30 JULY 1986', 'ITALY', 'GUARD', 30, 'CERELLA BRUNO 30' ) ;

insert into SPlayer values ( 'SIMON KRUNOSLAV', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\7-13.jpg', 1.97, '24 JUNE 1985', 'CROATIA', 'FORWARD', 43, 'SIMON KRUNOSLAV 43' ) ;














8)
insert into SPlayer values ( 'RICE TYRESE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-1.jpg', 1.85, '15 MAY 1987', 'UNITED STATES OF AMERICA', 'GUARD', 2, 'RICE TYRESE 2' ) ;

insert into SPlayer values ( 'HOLMES JONATHAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-2.jpg', 2.04, '9 DECEMBER 1992', 'UNITED STATES OF AMERICA', 'FORWARD', 3, 'HOLMES JONATHAN 3' ) ;

insert into SPlayer values ( 'DOELLMAN JUSTIN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-3.jpg', 2.06, '3 FEBRUARY 1985', 'UNITED STATES OF AMERICA', 'FORWARD', 5, 'DOELLMAN JUSTIN 5' ) ;

insert into SPlayer values ( 'DORSEY JOEY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-4.jpg', 2.03, '16 DECEMBER 1983', 'UNITED STATES OF AMERICA', 'CENTER', 6, 'DORSEY JOEY 6' ) ;

insert into SPlayer values ( 'RIBAS PAU', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-5.jpg', 1.94, '2 MARCH 1987', 'SPAIN', 'GUARD', 8, 'RIBAS PAU 8' ) ;

insert into SPlayer values ( 'CLAVER VICTOR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-6.jpg', 2.07, ' 30 AUGUST 1988', 'SPAIN', 'FORWARD', 10, 'CLAVER VICTOR 10' ) ;

insert into SPlayer values ( 'NAVARRO JUAN CARLOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-7.jpg', 1.92, '13 JUNE 1980', 'SPAIN', 'GUARD', 11, 'NAVARRO JUAN CARLOS 11' ) ;

insert into SPlayer values ( 'VEZENKOV ALEKSANDAR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-8.jpg', 2.06, '6 AUGUST 1995', 'BULGARIA', 'FORWARD', 14, 'VEZENKOV ALEKSANDAR 14' ) ;

insert into SPlayer values ( 'PENO STEFAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-9.jpg', 1.94, '3 AUGUST 1997', 'SERBIA', 'GUARD', 16, 'PENO STEFAN 16' ) ;

insert into SPlayer values ( 'ERIKSSON MARCUS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-10.jpg', 2.01, '12 MAY 1993', 'SWEDEN', 'FORWARD', 20, 'ERIKSSON MARCUS 20' ) ;

insert into SPlayer values ( 'OLESON BRAD', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-11.jpg', 1.91, '11 APRIL 1983', 'SPAIN', 'GUARD', 24, 'OLESON BRAD 24' ) ;

insert into SPlayer values ( 'KOPONEN PETTERI', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-12.jpg', 1.94, '13 APRIL 1988', 'FINLAND', 'GUARD', 25, 'KOPONEN PETTERI 25' ) ;

insert into SPlayer values ( 'SENA WESLEY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-13.jpg', 2.08, '2 MAY 1996', 'BRAZIL', 'CENTER', 28, 'SENA WESLEY 28' ) ;

insert into SPlayer values ( 'RENFROE ALEX', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\8-14.jpg', 1.91, ' 23 MAY 1986', 'UNITED STATES OF AMERICA', 'GUARD', 32, 'RENFROE ALEX 32' ) ;










9)
insert into SPlayer values ( 'HERSEK BARIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-1.jpg', 2.07, '26 MARCH 1988', 'TURKEY', 'FORWARD', 5, 'HERSEK BARIS 5' ) ;

insert into SPlayer values ( 'UDOH EKPE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-2.jpg', 2.08, '20 MAY 1987', 'UNITED STATES OF AMERICA', 'CENTER', 8, 'UDOH EKPE 8' ) ;

insert into SPlayer values ( 'DURAN AHMET CAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-3.jpg', 2.06, '28 JANUARY 1999', 'TURKEY', 'CENTER', 9, 'DURAN AHMET CAN 9' ) ;

insert into SPlayer values ( 'MAHMUTOGLU MELIH', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-4.jpg', 1.91, '12 MAY 1990', 'TURKEY', 'GUARD', 10, 'MAHMUTOGLU MELIH 10' ) ;

insert into SPlayer values ( 'ANTIC PERO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-5.jpg', 2.11, '29 JULY 1982', 'THE FORMER YUGOSLAV REPUBLIC OF MACEDONIA', 'CENTER', 12, 'ANTIC PERO 12' ) ;

insert into SPlayer values ( 'BOGDANOVIC BOGDAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-6.jpg', 1.97, '18 AUGUST 1992', 'SERBIA', 'GUARD', 13, 'BOGDANOVIC BOGDAN 13' ) ;

insert into SPlayer values ( 'SLOUKAS KOSTAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-7.jpg', 1.90, '15 JANUARY 1990', 'GREECE', 'GUARD', 16, 'SLOUKAS KOSTAS 16' ) ;

insert into SPlayer values ( 'ARNA EGEHAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-8.jpg', 2.03, '5 JANUARY 1997', 'TURKEY', 'FORWARD', 18, 'ARNA EGEHAN 18' ) ;

insert into SPlayer values ( 'NUNNALLY JAMES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-9.jpg', 2.01, '14 JULY 1990', 'UNITED STATES OF AMERICA', 'FORWARD', 21, 'NUNNALLY JAMES 21' ) ;

insert into SPlayer values ( 'MINCHEV YORDAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-10.jpg', 2.02, '17 OCTOBER, 1998', 'BULGARIA', 'FORWARD', 22, 'MINCHEV YORDAN 22' ) ;

insert into SPlayer values ( 'UGURLU BERK', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-11.jpg', 1.92, '27 APRIL 1996', 'TURKEY', 'GUARD', 23, 'UGURLU BERK 23' ) ;

insert into SPlayer values ( 'VESELY JAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-12.jpg', 2.13, '24 APRIL 1990', 'CZECH REPUBLIC', 'FORWARD', 24, 'VESELY JAN 24' ) ;

insert into SPlayer values ( 'KALINIC NIKOLA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-13.jpg', 2.02, '8 NOVEMBER 1991', 'SERBIA', 'FORWARD', 33, 'KALINIC NIKOLA 33' ) ;

insert into SPlayer values ( 'DIXON BOBBY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\9-14.jpg', 1.78, '10 APRIL 1983', 'UNITED STATES OF AMERICA', 'GUARD', 35, 'DIXON BOBBY 35' ) ;










10)
insert into SPlayer values ( 'PRELDZIC EMIR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-1.jpg', 2.06, '6 SEPTEMBER 1987', 'TURKEY', 'FORWARD', 3, 'PRELDZIC EMIR 3' ) ;

insert into SPlayer values ( 'MICOV VLADIMIR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-2.jpg', 2.01, '16 APRIL 1985', 'SERBIA', 'FORWARD', 5, 'MICOV VLADIMIR 5' ) ;

insert into SPlayer values ( 'FITIPALDO BRUNO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-3.jpg', 1.84, '2 AUGUST 1991', 'ITALY', 'GUARD', 6, 'FITIPALDO BRUNO 6' ) ;

insert into SPlayer values ( 'TYUS ALEX', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-4.jpg', 2.03, '8 JANUARY 1988', ' UNITED STATES OF AMERICA', 'CENTER', 7, 'TYUS ALEX 7' ) ;

insert into SPlayer values ( 'KORKMAZ CAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-5.jpg', 1.87, ' 21 OCTOBER 1992', 'TURKEY', 'GUARD', 8, 'KORKMAZ CAN 8' ) ;

insert into SPlayer values ( 'SCHILB BLAKE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-6.jpg', 2.01, ' 23 DECEMBER 1983', 'UNITED STATES OF AMERICA', 'FORWARD', 10, 'SCHILB BLAKE 10' ) ;

insert into SPlayer values ( 'ARAR EGE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-7.jpg', 2.06, '2 SEPTEMBER 1996', 'TURKEY', 'FORWARD', 11, 'ARAR EGE 11' ) ;

insert into SPlayer values ( 'HACIYEVA ORHAN', 'Temporary empty-', 2.03, '1 OCTOBER 1989', 'TURKEY', 'FORWARD', 14, 'HACIYEVA ORHAN 14' ) ;

insert into SPlayer values ( 'PLEISS TIBOR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-9.jpg', 2.18, '2 NOVEMBER 1989', 'GERMANY', 'CENTER', 21, 'PLEISS TIBOR 21' ) ;

insert into SPlayer values ( 'DAYE AUSTIN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-10.jpg', 2.11, '5 JUNE 1988', 'UNITED STATES OF AMERICA', 'CENTER', 25, 'DAYE AUSTIN 25' ) ;

insert into SPlayer values ( 'GULER SINAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-11.jpg', 1.92, '8 NOVEMBER 1983', 'TURKEY', 'GUARD', 32, 'GULER SINAN 32' ) ;

insert into SPlayer values ( 'DIEBLER JON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-12.jpg', 1.98, '22 JUNE 1988', 'UNITED STATES OF AMERICA', 'GUARD', 33, 'DIEBLER JON 33' ) ;

insert into SPlayer values ( 'KOKSAL GOKSENIN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\10-13.jpg', 1.95, '8 JANUARY 1991', 'TURKEY', 'GUARD', 61, 'KOKSAL GOKSENIN 61' ) ;














11)
insert into SPlayer values ( 'GOUDELOCK ANDREW', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-1.jpg', 1.91, '12 JULY 1988', 'UNITED STATES OF AMERICA', 'GUARD', 0, 'GOUDELOCK ANDREW 0' ) ;

insert into SPlayer values ( 'RUDD VICTOR', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-2.jpg', 2.05, '18 MARCH 1991', 'UNITED STATES OF AMERICA', 'FORWARD', 3, 'RUDD VICTOR 3' ) ;

insert into SPlayer values ( 'SEELEY D.J.', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-3.jpg', 1.93, '28 NOVEMBER 1989', 'UNITED STATES OF AMERICA', 'GUARD', 4, 'SEELEY D.J. 4' ) ;

insert into SPlayer values ( 'SMITH DEVIN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-4.jpg', 1.98, '12 APRIL 1983', 'UNITED STATES OF AMERICA', 'FORWARD', 6, 'SMITH DEVIN 6' ) ;

insert into SPlayer values ( 'YIVZORI DAGAN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-5.jpg', 1.93, '15 OCTOBER 1985', 'ISRAEL', 'GUARD', 8, 'YIVZORI DAGAN 8' ) ;

insert into SPlayer values ( 'MEKEL GAL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-6.jpg', 1.92, '4 MARCH 1988', 'ISRAEL', 'GUARD', 9, 'MEKEL GAL 9' ) ;

insert into SPlayer values ( 'PNINI GUY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-7.jpg', 2.01, '4 SEPTEMBER 1983', 'ISRAEL', 'FORWARD', 10, 'PNINI GUY 10' ) ;

insert into SPlayer values ( 'SEGEV ITAY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-8.jpg', 2.04, '15 JUNE 1995', 'ISRAEL', 'FORWARD', 11, 'SEGEV ITAY 11' ) ;

insert into SPlayer values ( 'OHAYON YOGEV', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-9.jpg', 1.89, '24 APRIL 1987', 'ISRAEL', 'GUARD', 12, 'OHAYON YOGEV 12' ) ;

insert into SPlayer values ( 'WEEMS SONNY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-10.jpg', 1.98, '8 JULY 1986', 'UNITED STATES OF AMERICA', 'FORWARD', 13, 'WEEMS SONNY 13' ) ;

insert into SPlayer values ( 'LANDESBERG SYLVEN', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-11.jpg', 1.98, '10 APRIL 1990', 'ISRAEL', 'GUARD', 15, 'LANDESBERG SYLVEN 15' ) ;

insert into SPlayer values ( 'ALEXANDER JOE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-12.jpg', 2.03, '26 DECEMBER 1986', 'ISRAEL', 'FORWARD', 23, 'ALEXANDER JOE 23' ) ;

insert into SPlayer values ( 'IVERSON COLTON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-13.jpg', 2.13, '29 JUNE 1989', 'UNITED STATES OF AMERICA', 'CENTER', 24, 'IVERSON COLTON 24' ) ;

insert into SPlayer values ( 'MILLER QUINCY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\11-14.jpg', 2.06, '18 NOVEMBER 1992', 'UNITED STATES OF AMERICA', 'FORWARD', 30, 'MILLER QUINCY 30' ) ;










12)
insert into SPlayer values ( 'GREEN ERICK', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-1.jpg', 1.90, '9 MAY 1992', 'UNITED STATES OF AMERICA', 'GUARD', 1, 'GREEN ERICK 1' ) ;

insert into SPlayer values ( 'BIRCH KHEM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-2.jpg', 2.06, '28 SEPTEMBER 1992', 'CANADA', 'CENTER', 2, 'BIRCH KHEM 2' ) ;

insert into SPlayer values ( 'YOUNG PATRIC', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-3.jpg', 2.09, '1 FEBRUARY 1992', 'UNITED STATES OF AMERICA', 'CENTER', 4, 'YOUNG PATRIC 4' ) ;

insert into SPlayer values ( 'TOLIOPOULOS VASSILIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-4.jpg', 1.88, '15 JUNE 1996', 'GREECE', 'GUARD', 5, 'TOLIOPOULOS VASSILIS 5' ) ;

insert into SPlayer values ( 'PAPAPETROU IOANNIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-5.jpg', 2.07, '30 MARCH 1994', 'GREECE', 'FORWARD', 6, 'PAPAPETROU IOANNIS 6' ) ;

insert into SPlayer values ( 'SPANOULIS VASSILIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-6.jpg', 1.93, '7 AUGUST 1982', 'GREECE', 'GUARD', 7, 'SPANOULIS VASSILIS 7' ) ;

insert into SPlayer values ( 'WATERS DOMINIC', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-7.jpg', 1.85, '28 SEPTEMBER 1986', 'UNITED STATES OF AMERICA', 'GUARD', 9, 'WATERS DOMINIC 9' ) ;

insert into SPlayer values ( 'AGRAVANIS DIMITRIOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-8.jpg', 2.08, '20 DECEMBER 1994', 'GREECE', 'FORWARD', 10, 'AGRAVANIS DIMITRIOS 10' ) ;

insert into SPlayer values ( 'MILUTINOV NIKOLA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-9.jpg', 2.13, '30 DECEMBER 1994', 'SERBIA', 'CENTER', 11, 'MILUTINOV NIKOLA 11' ) ;

insert into SPlayer values ( 'PRINTEZIS GEORGIOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-10.jpg', 2.05, '22 FEBRUARY 1985', 'GREECE', 'FORWARD', 15, 'PRINTEZIS GEORGIOS 15' ) ;

insert into SPlayer values ( 'PAPANIKOLAOU KOSTAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-11.jpg', 2.04, '31 JULY 1990', 'GREECE', 'FORWARD', 16, 'PAPANIKOLAOU KOSTAS 16' ) ;

insert into SPlayer values ( 'MANTZARIS VANGELIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-12.jpg', 1.94, ' 16 APRIL 1990', 'GREECE', 'GUARD', 17, 'MANTZARIS VANGELIS 17' ) ;

insert into SPlayer values ( 'LOJESKI MATT', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-13.jpg', 1.98, '24 JULY 1985', 'UNITED STATES OF AMERICA', 'GUARD', 24, 'LOJESKI MATT 24' ) ;

insert into SPlayer values ( 'MARAGKOS PARIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\12-14.jpg', 2.06, '19 JANUARY 1994', 'GREECE', 'CENTER', 26, 'MARAGKOS PARIS 26' ) ;










13)
insert into SPlayer values ( 'SINGLETON CHRIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-1.jpg', 2.06, '21 NOVEMBER 1989', 'UNITED STATES OF AMERICA', 'CENTER', 0, 'SINGLETON CHRIS 0' ) ;

insert into SPlayer values ( 'NICHOLS DEMETRIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-2.jpg', 2.03, '4 SEPTEMBER 1984', 'UNITED STATES OF AMERICA', 'FORWARD', 2, 'NICHOLS DEMETRIS 2' ) ;

insert into SPlayer values ( 'RIVERS  K.C.', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-3.jpg', 1.96, '1 MARCH 1987', 'UNITED STATES OF AMERICA', 'FORWARD', 3, 'RIVERS K.C. 3' ) ;
 
insert into SPlayer values ( 'JAMES MIKE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-4.jpg', 1.85, '18 AUGUST 1990', 'UNITED STATES OF AMERICA', 'GUARD', 5, 'JAMES MIKE 5' ) ;

insert into SPlayer values ( 'BOCHORIDIS ELEFTHERIOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-5.jpg', 1.96, '18 APRIL 1994', 'GREECE', 'GUARD', 7, 'BOCHORIDIS ELEFTHERIOS 7' ) ;

insert into SPlayer values ( 'CALATHES PAT', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-6.jpg', 2.08, '12 DECEMBER 1985', 'GREECE', 'FORWARD', 8, 'CALATHES PAT 8' ) ;

insert into SPlayer values ( 'FOTSIS  ANTONIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-7.jpg', 2.09, '2 APRIL 1981', 'GREECE', 'FORWARD', 9, 'FOTSIS ANTONIS 9' ) ;

insert into SPlayer values ( 'PAPPAS NIKOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-8.jpg', 1.95, '11 JULY 1990', 'GREECE', 'GUARD', 11, 'PAPPAS NIKOS 11' ) ;

insert into SPlayer values ( 'FELDEINE JAMES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-9.jpg', 1.93, '26 JUNE 1988', 'UNITED STATES OF AMERICA', 'GUARD', 12, 'FELDEINE JAMES 12' ) ;

insert into SPlayer values ( 'GIST JAMES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-10.jpg', 2.07, '26 OCTOBER 1986', 'UNITED STATES OF AMERICA', 'FORWARD', 14, 'GIST JAMES 14' ) ;

insert into SPlayer values ( 'CHARALAMPOPOULOS VASILIS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-11.jpg', 2.02, '6 JANUARY 1997', 'GREECE', 'FORWARD', 15, 'CHARALAMPOPOULOS VASILIS 15' ) ;

insert into SPlayer values ( 'GONTIKAS KONSTANTINOS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-12.jpg', 2.06, '15 MARCH 1994', 'GREECE', 'CENTER', 17, 'GONTIKAS KONSTANTINOS 17' ) ;

insert into SPlayer values ( 'GABRIEL KENNY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-13.jpg', 2.03, '3 JULY 1989', 'UNITED STATES OF AMERICA', 'FORWARD', 21, 'GABRIEL KENNY 21' ) ;

insert into SPlayer values ( 'GENTILE ALESSANDRO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\13-14.jpg', 2.01, '12 NOVEMBER 1992', 'ITALY', 'GUARD', 25, 'GENTILE ALESSANDRO 25' ) ;









14)
insert into SPlayer values ( 'RANDOLPH ANTHONY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-1.jpg', 2.11, '15 JULY 1989', 'UNITED STATES OF AMERICA', 'FORWARD', 3, 'RANDOLPH ANTHONY 3' ) ;

insert into SPlayer values ( 'DRAPER DONTAYE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-2.jpg', 1.81, '10 AUGUST 1984', 'UNITED STATES OF AMERICA', 'GUARD', 4, 'DRAPER DONTAYE 4' ) ;

insert into SPlayer values ( 'FERNANDEZ RUDY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-3.jpg', 1.96, '4 APRIL 1985', 'SPAIN', 'FORWARD', 5, 'FERNANDEZ RUDY 5' ) ;
 
insert into SPlayer values ( 'NOCIONI ANDRES', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-4.jpg', 2.03, '30 NOVEMBER 1979', 'ITALY', 'FORWARD', 6, 'NOCIONI ANDRES 6' ) ;

insert into SPlayer values ( 'DONCIC LUKA', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-5.jpg', 2.01, '28 FEBRUARY 1999', 'SLOVENIA', 'GUARD', 7, 'DONCIC LUKA 7' ) ;

insert into SPlayer values ( 'MACIULIS JONAS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-6.jpg', 1.98, '10 FEBRUARY 1985', 'LITHUANIA', 'FORWARD', 8, 'MACIULIS JONAS 8' ) ;

insert into SPlayer values ( 'REYES FELIPE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-7.jpg', 2.04, '16 MARCH 1980', 'SPAIN', 'FORWARD', 9, 'REYES FELIPE 9' ) ;

insert into SPlayer values ( 'AYON GUSTAVO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-8.jpg', 2.07, '1 APRIL 1985', 'MEXICO', 'CENTER', 14, 'AYON GUSTAVO 14' ) ;

insert into SPlayer values ( 'RADONCIC DINO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-9.jpg', 2.02, '8 JANUARY 1999', 'MONTENEGRO', 'FORWARD', 17, 'RADONCIC DINO 17' ) ;

insert into SPlayer values ( 'CARROLL JAYCEE', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-10.jpg', 1.88, '16 APRIL 1983', 'UNITED STATES OF AMERICA', 'GUARD', 20, 'CARROLL JAYCEE 20' ) ;

insert into SPlayer values ( 'HUNTER OTHELLO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-11.jpg', 2.03, '28 MAY 1986', 'UNITED STATES OF AMERICA', 'CENTER', 21, 'HUNTER OTHELLO 21' ) ;

insert into SPlayer values ( 'LLULL SERGIO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-12.jpg', 1.90, '15 NOVEMBER 1987', 'SPAIN', 'GUARD', 23, 'LLULL SERGIO 23' ) ;

insert into SPlayer values ( 'THOMPKINS TREY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-13.jpg', 2.08, '29 MAY 1990', 'UNITED STATES OF AMERICA', 'FORWARD', 33, 'THOMPKINS TREY 33' ) ;

insert into SPlayer values ( 'SUAREZ ALEX', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\14-14.jpg', 2.06, '27 SEPTEMBER 1993', 'SPAIN', 'FORWARD', 36, 'SUAREZ ALEX 36' ) ;










15)
insert into SPlayer values ('JOHNSON ORLANDO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-1.jpg', 1.96, '11 MARCH 1989', 'UNITED STATES OF AMERICA', 'GUARD', 1, 'JOHNSON ORLANDO 1' ) ;

insert into SPlayer values ('ANTIPOV PAVEL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-2.jpg', 2.02, '19 SEPTEMBER 1991', 'RUSSIAN FEDERATION', 'FORWARD', 2, 'ANTIPOV PAVEL 2' ) ;

insert into SPlayer values ('CLARKE COTY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-3.jpg', 2.01, '4 JULY 1992', 'UNITED STATES OF AMERICA', ' FORWARD', 4, 'CLARKE COTY 4' ) ;

insert into SPlayer values ('LANGFORD KEITH', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-4.jpg', 1.93, '15 SEPTEMBER 1983', 'UNITED STATES OF AMERICA', 'GUARD', 5, 'LANGFORD KEITH 5' ) ;

insert into SPlayer values ('STOLL PAUL', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-5.jpg', 1.80, '14 DECEMBER 1985', 'MEXICO', 'GUARD', 6, 'STOLL PAUL 6' ) ;

insert into SPlayer values ('PONKRASHOV ANTON', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-6.jpg', 2.00, '23 APRIL 1986', 'RUSSIAN FEDERATION', 'GUARD', 7, 'PONKRASHOV ANTON 7' ) ;

insert into SPlayer values ('PARAKHOUSKI ARTSIOM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-7.jpg', 2.11, '6 OCTOBER 1987', 'BELARUS', 'CENTER', 9, 'PARAKHOUSKI ARTSIOM 9' ) ;

insert into SPlayer values ('COLOM QUINO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-8.jpg', 1.88, '1 NOVEMBER 1988', 'SPAIN', 'GUARD', 10, 'COLOM QUINO 10' ) ;

insert into SPlayer values ('KLIMENKO ARTEM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-9.jpg', 2.14, '10 JANUARY 1994', 'RUSSIAN FEDERATION', 'CENTER', 12, 'KLIMENKO ARTEM 12' ) ;

insert into SPlayer values ('BANIC MARKO', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-10.jpg', 2.04, '31 AUGUST 1984', 'CROATIA', 'CENTER', 13, 'BANIC MARKO 13' ) ;

insert into SPlayer values ('VORONOV EVGENY', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-11.jpg', 1.90, '7 MAY 1986', 'RUSSIAN FEDERATION', 'GUARD', 18, 'VORONOV EVGENY 18' ) ;

insert into SPlayer values ('PANIN VADIM', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-12.jpg', 2.03, '10 FEBRUARY 1984', 'RUSSIAN FEDERATION', 'GUARD', 20, 'PANIN VADIM 20' ) ;

insert into SPlayer values ('WILLIAMS LATAVIOUS', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-13.jpg', 2.03, '29 MARCH 1989', 'UNITED STATES OF AMERICA', 'FORWARD', 22, 'WILLIAMS LATAVIOUS 22' ) ;

insert into SPlayer values ('TUKMAKOV AZAT', 'C:\Users\LU$er\Desktop\My Folder\Locations\NetBeansProjects\Test_Project\web\15-14.jpg', 1.88, '23 FEBRUARY 1996', 'RUSSIAN FEDERATION', 'GUARD', 28, 'TUKMAKOV AZAT 28' ) ;










Διασύνδεση Ομάδας με Παίκτες
1η ομάδα)
insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'THOMAS DESHAUN 1', 'ANADOLU EFES ISTANBUL THOMAS DESHAUN 1' ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'HONEYCUTT TYLER 2', 'ANADOLU EFES ISTANBUL HONEYCUTT TYLER 2 '  ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'BAYKAN OGULCAN 3', 'ANADOLU EFES ISTANBUL BAYKAN OGULCAN 3') ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'BALBAY DOGU 4', 'ANADOLU EFES ISTANBUL BALBAY DOGU 4') ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'BROWN DERRICK 5', 'ANADOLU EFES ISTANBUL BROWN DERRICK 5') ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'OSMAN CEDI 6', 'ANADOLU EFES ISTANBUL OSMAN CEDI 6' ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'GEYIK SAMET 9', 'ANADOLU EFES ISTANBUL GEYIK SAMET 9' ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'DEMIR BERK 11', 'ANADOLU EFES ISTANBUL DEMIR BERK 11'  ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'GRANGER JAYSON 15', 'ANADOLU EFES ISTANBUL GRANGER JAYSON 15'  ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'OMIC ALEN 23', 'ANADOLU EFES ISTANBUL OMIC ALEN 23'   ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'HEURTEL THOMAS 31', 'ANADOLU EFES ISTANBUL HEURTEL THOMAS 31'  ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'MUTAF MAXIM 32', 'ANADOLU EFES ISTANBUL MUTAF MAXIM 32'   ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'PAUL BRANDON 33', 'ANADOLU EFES ISTANBUL PAUL BRANDON 33' ) ;

insert into JoinTeamPlayer values ( 'ANADOLU EFES ISTANBUL', 'DUNSTON BRYANT 42', 'ANADOLU EFES ISTANBUL DUNSTON BRYANT 42' ) ;




















2η ομάδα)
insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'LARKIN SHANE 0', 'BASKONIA VITORIA GASTEIZ LARKIN SHANE 0'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'BARGNANI ANDREA 1', 'BASKONIA VITORIA GASTEIZ BARGNANI ANDREA 1'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'PRIGIONI PABLO 5', 'BASKONIA VITORIA GASTEIZ PRIGIONI PABLO 5'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'VOIGTMANN JOHANNES 7', 'BASKONIA VITORIA GASTEIZ VOIGTMANN JOHANNES 7'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'HANGA ADAM 8', 'BASKONIA VITORIA GASTEIZ HANGA ADAM 8'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'SEDEKERSKIS TADAS 9', 'BASKONIA VITORIA GASTEIZ SEDEKERSKIS TADAS 9'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'BEAUBOIS RODRIGUE 10', 'BASKONIA VITORIA GASTEIZ BEAUBOIS RODRIGUE 10'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'BLAZIC JAKA 11', 'BASKONIA VITORIA GASTEIZ BLAZIC JAKA 11'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'DIOP ILIMANE 12', 'BASKONIA VITORIA GASTEIZ DIOP ILIMANE 12'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'TILLIE KIM 14', 'BASKONIA VITORIA GASTEIZ TILLIE KIM 14'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'KURUCS ARTURS 17', 'BASKONIA VITORIA GASTEIZ KURUCS ARTURS 17'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'SHENGELIA TORNIKE 23', 'BASKONIA VITORIA GASTEIZ SHENGELIA TORNIKE 23'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'BUDINGER CHASE 34', 'BASKONIA VITORIA GASTEIZ BUDINGER CHASE 34'  ) ;

insert into JoinTeamPlayer values ( 'BASKONIA VITORIA GASTEIZ', 'LUZ RAFA 55', 'BASKONIA VITORIA GASTEIZ LUZ RAFA 55'  ) ;








3η ομάδα)
insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'CAUSEUR FABIEN 1', 'BROSE BAMBERG CAUSEUR FABIEN 1'  ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'MELLI NICOLO 4', 'BROSE BAMBERG MELLI NICOLO 4'  ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'ZISIS NIKOS 6', 'BROSE BAMBERG ZISIS NIKOS 6' ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'NIKOLIC ALEKSEJ 7', 'BROSE BAMBERG NIKOLIC ALEKSEJ 7' ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'STAIGER LUCCA 8', 'BROSE BAMBERG STAIGER LUCCA 8' ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'THEIS DANIEL 10', 'BROSE BAMBERG THEIS DANIEL 10' ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'LO MAODO 12', 'BROSE BAMBERG LO MAODO 12'   ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'STRELNIEKS JANIS 13', 'BROSE BAMBERG STRELNIEKS JANIS 13'   ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'VEREMEENKO VLADIMIR 14', 'BROSE BAMBERG VEREMEENKO VLADIMIR 14'   ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'OLINDE LOUIS 16', 'BROSE BAMBERG OLINDE LOUIS 16'   ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'HARRIS ELIAS 20', 'BROSE BAMBERG HARRIS ELIAS 20'   ) ;

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'MILLER DARIUS 21', 'BROSE BAMBERG MILLER DARIUS 21'   ) ;

 insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'McNEAL JEREL 22', 'BROSE BAMBERG McNEAL JEREL 22'   ) ; 

insert into JoinTeamPlayer values ( 'BROSE BAMBERG', 'KRATZER LEON 25', 'BROSE BAMBERG KRATZER LEON 25'   ) ;





4η ομάδα)
insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'WOLTERS NATE 0', 'CRVENA ZVEZDA MTS BELGRADE WOLTERS NATE 0'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'THOMPSON DEON 2', 'CRVENA ZVEZDA MTS BELGRADE THOMPSON DEON 2'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'DANGUBIC NEMANJA 6', 'CRVENA ZVEZDA MTS BELGRADE DANGUBIC NEMANJA 6'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'MITROVIC LUKA 9', 'CRVENA ZVEZDA MTS BELGRADE MITROVIC LUKA 9'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'LAZIC BRANKO 10', 'CRVENA ZVEZDA MTS BELGRADE LAZIC BRANKO 10'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'SIMANIC BORISA 12', 'CRVENA ZVEZDA MTS BELGRADE SIMANIC BORISA 12'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'DOBRIC OGNJEN 13', 'CRVENA ZVEZDA MTS BELGRADE DOBRIC OGNJEN 13'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'SIMONOVIC MARKO 19', 'CRVENA ZVEZDA MTS BELGRADE SIMONOVIC MARKO 19'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'RAKICEVIC PETAR 20', 'CRVENA ZVEZDA MTS BELGRADE RAKICEVIC PETAR 20'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'JENKINS CHARLES 22', 'CRVENA ZVEZDA MTS BELGRADE JENKINS CHARLES 22'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'GUDURIC MARKO 23', 'CRVENA ZVEZDA MTS BELGRADE GUDURIC MARKO 23'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'JOVIC STEFAN 24', 'CRVENA ZVEZDA MTS BELGRADE JOVIC STEFAN 24'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'KUZMIC OGNJEN 32', 'CRVENA ZVEZDA MTS BELGRADE KUZMIC OGNJEN 32'  ) ;

insert into JoinTeamPlayer values ( 'CRVENA ZVEZDA MTS BELGRADE', 'BJELICA MILKO 51', 'CRVENA ZVEZDA MTS BELGRADE BJELICA MILKO 51'  ) ;







5η ομάδα)
insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'DE COLO NANDO 1', 'CSKA MOSCOW DE COLO NANDO 1'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'KULAGIN DMITRY 3', 'CSKA MOSCOW KULAGIN DMITRY 3'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'TEODOSIC MILOS 4', 'CSKA MOSCOW TEODOSIC MILOS 4'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'AUGUSTINE JAMES 5', 'CSKA MOSCOW AUGUSTINE JAMES 5'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'FRIDZON VITALY 7', 'CSKA MOSCOW FRIDZON VITALY 7'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'JACKSON AARON 9', 'CSKA MOSCOW JACKSON AARON 9'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'ANTONOV SEMEN 11', 'CSKA MOSCOW ANTONOV SEMEN 11'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'KOROBKOV PAVEL 12', 'CSKA MOSCOW KOROBKOV PAVEL 12'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'LAZAREV IVAN 13', 'CSKA MOSCOW LAZAREV IVAN 13'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'FREELAND JOEL 19', 'CSKA MOSCOW FREELAND JOEL 19'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'VORONTSEVICH ANDREY 20', 'CSKA MOSCOW VORONTSEVICH ANDREY 20'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'HIGGINS CORY 22', 'CSKA MOSCOW HIGGINS CORY 22'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'KULAGIN MIKHAIL 30', 'CSKA MOSCOW KULAGIN MIKHAIL 30'  ) ;

insert into JoinTeamPlayer values ( 'CSKA MOSCOW', 'KHRYAPA VICTOR 31', 'CSKA MOSCOW KHRYAPA, VICTOR 31'  ) ;






6η ομάδα)
insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'WILBEKIN SCOTTIE 1', 'DARUSSAFAKA DOGUS ISTANBUL WILBEKIN SCOTTIE 1'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'ARSLAN ENDER 3', 'DARUSSAFAKA DOGUS ISTANBUL ARSLAN ENDER 3'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'YAGMUR MEHMET 4', 'DARUSSAFAKA DOGUS ISTANBUL YAGMUR MEHMET 4'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'TUREN METIN 7', 'DARUSSAFAKA DOGUS ISTANBUL TUREN METIN 7'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'BATUK BIRKAN 8', 'DARUSSAFAKA DOGUS ISTANBUL BATUK BIRKAN 8'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'ERDEN SEMIH 9', 'DARUSSAFAKA DOGUS ISTANBUL ERDEN SEMIH 9'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'WANAMAKER BRAD 11', 'DARUSSAFAKA DOGUS ISTANBUL WANAMAKER BRAD 11'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'CLYBURN WILL 12', 'DARUSSAFAKA DOGUS ISTANBUL CLYBURN WILL 12'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'MOERMAN ADRIEN 18', 'DARUSSAFAKA DOGUS ISTANBUL MOERMAN ADRIEN 18'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'ALDEMIR FURKAN 19', 'DARUSSAFAKA DOGUS ISTANBUL ALDEMIR FURKAN 19'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'SAVAS OGUZ 21', 'DARUSSAFAKA DOGUS ISTANBUL SAVAS OGUZ 21'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'ANDERSON JAMES 23', 'DARUSSAFAKA DOGUS ISTANBUL ANDERSON JAMES 23'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'ZIZIC ANTE 41', 'DARUSSAFAKA DOGUS ISTANBUL ZIZIC ANTE 41'  ) ;

insert into JoinTeamPlayer values ( 'DARUSSAFAKA DOGUS ISTANBUL', 'SLAUGHTER MARCUS 44', 'DARUSSAFAKA DOGUS ISTANBUL SLAUGHTER MARCUS 44'  ) ;




7h omada)
insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'MCLEAN JAMEL 1', 'EA7 EMPORIO ARMANI MILAN MCLEAN JAMEL 1'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'FONTECCHIO SIMONE 2', 'EA7 EMPORIO ARMANI MILAN FONTECCHIO SIMONE 2'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'HICKMAN RICKY 7', 'EA7 EMPORIO ARMANI MILAN HICKMAN RICKY 7'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'KALNIETIS MANTAS 9', 'EA7 EMPORIO ARMANI MILAN KALNIETIS MANTAS 9'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'RADULJICA MIROSLAV 11', 'EA7 EMPORIO ARMANI MILAN RADULJICA MIROSLAV 11'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'DRAGIC ZORAN 12', 'EA7 EMPORIO ARMANI MILAN DRAGIC ZORAN 12'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'MACVAN MILAN 13', 'EA7 EMPORIO ARMANI MILAN MACVAN MILAN 13'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'PASCOLO DAVIDE 14', 'EA7 EMPORIO ARMANI MILAN PASCOLO DAVIDE 14'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'CINCIARINI ANDREA 20', 'EA7 EMPORIO ARMANI MILAN CINCIARINI ANDREA 20'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'SANDERS RAKIM 21', 'EA7 EMPORIO ARMANI MILAN SANDERS RAKIM 21'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'ABASS AWUDU 23', 'EA7 EMPORIO ARMANI MILAN ABASS AWUDU 23'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'CERELLA BRUNO 30', 'EA7 EMPORIO ARMANI MILAN CERELLA BRUNO 30'  ) ;

insert into JoinTeamPlayer ( 'EA7 EMPORIO ARMANI MILAN', 'SIMON KRUNOSLAV 43', 'EA7 EMPORIO ARMANI MILAN SIMON KRUNOSLAV 43'  ) ;











8η ομάδα )
insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'RICE TYRESE 2', 'FC BARCELONA LASSA RICE TYRESE 2'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'HOLMES JONATHAN 3', 'FC BARCELONA LASSA HOLMES JONATHAN 3'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'DOELLMAN JUSTIN 5', 'FC BARCELONA LASSA DOELLMAN JUSTIN 5'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'DORSEY JOEY 6', 'FC BARCELONA LASSA DORSEY JOEY 6'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'RIBAS PAU 8', 'FC BARCELONA LASSA RIBAS PAU 8'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'CLAVER VICTOR 10', 'FC BARCELONA LASSA CLAVER VICTOR 10'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'NAVARRO JUAN CARLOS 11', 'FC BARCELONA LASSA NAVARRO JUAN CARLOS 11'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'VEZENKOV ALEKSANDAR 14', 'FC BARCELONA LASSA VEZENKOV ALEKSANDAR 14'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'PENO STEFAN 16', 'FC BARCELONA LASSA PENO STEFAN 16'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'ERIKSSON MARCUS 20', 'FC BARCELONA LASSA ERIKSSON MARCUS 20'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'OLESON BRAD 24', 'FC BARCELONA LASSA OLESON BRAD 24'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'KOPONEN PETTERI 25', 'FC BARCELONA LASSA KOPONEN PETTERI 25'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'SENA WESLEY 28', 'FC BARCELONA LASSA SENA WESLEY 28'  ) ;

insert into JoinTeamPlayer ( 'FC BARCELONA LASSA', 'RENFROE ALEX 32', 'FC BARCELONA LASSA RENFROE ALEX 32'  ) ;



9h omada)
insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'HERSEK BARIS 5', 'FENERBAHCE ISTANBUL HERSEK BARIS 5'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'UDOH EKPE 8', 'FENERBAHCE ISTANBUL UDOH EKPE 8'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'DURAN AHMET CAN 9', 'FENERBAHCE ISTANBUL DURAN AHMET CAN 9'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'MAHMUTOGLU MELIH 10', 'FENERBAHCE ISTANBUL MAHMUTOGLU MELIH 10'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'ANTIC PERO 12', 'FENERBAHCE ISTANBUL ANTIC PERO 12'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'BOGDANOVIC BOGDAN 13', 'FENERBAHCE ISTANBUL BOGDANOVIC BOGDAN 13'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'SLOUKAS KOSTAS 16', 'FENERBAHCE ISTANBUL SLOUKAS KOSTAS 16'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'ARNA EGEHAN 18', 'FENERBAHCE ISTANBUL ARNA EGEHAN 18'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'NUNNALLY JAMES 21', 'FENERBAHCE ISTANBUL NUNNALLY JAMES 21'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'MINCHEV YORDAN 22', 'FENERBAHCE ISTANBUL MINCHEV YORDAN 22'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'UGURLU BERK 23', 'FENERBAHCE ISTANBUL UGURLU BERK 23'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'VESELY JAN 24', 'FENERBAHCE ISTANBUL VESELY JAN 24'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'KALINIC NIKOLA 33', 'FENERBAHCE ISTANBUL KALINIC NIKOLA 33'  ) ;

insert into JoinTeamPlayer ( 'FENERBAHCE ISTANBUL', 'DIXON BOBBY 35', 'FENERBAHCE ISTANBUL DIXON BOBBY 35'  ) ;











10h omada)
insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'PRELDZIC EMIR 3', 'GALATASARAY ODEABANK ISTANBUL PRELDZIC EMIR 3'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'MICOV VLADIMIR 5', 'GALATASARAY ODEABANK ISTANBUL MICOV VLADIMIR 5'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'FITIPALDO BRUNO 6', 'GALATASARAY ODEABANK ISTANBUL FITIPALDO BRUNO 6'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'TYUS ALEX 7', 'GALATASARAY ODEABANK ISTANBUL TYUS ALEX 7'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'KORKMAZ CAN 8', 'GALATASARAY ODEABANK ISTANBUL KORKMAZ CAN 8'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'SCHILB BLAKE 10', 'GALATASARAY ODEABANK ISTANBUL SCHILB BLAKE 10'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'ARAR EGE 11', 'GALATASARAY ODEABANK ISTANBUL ARAR EGE 11'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'HACIYEVA ORHAN 14', 'GALATASARAY ODEABANK ISTANBUL HACIYEVA ORHAN 14'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'PLEISS TIBOR 21', 'GALATASARAY ODEABANK ISTANBUL PLEISS TIBOR 21'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'DAYE AUSTIN 25', 'GALATASARAY ODEABANK ISTANBUL DAYE AUSTIN 25'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'GULER SINAN 32', 'GALATASARAY ODEABANK ISTANBUL GULER SINAN 32'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'DIEBLER JON 33', 'GALATASARAY ODEABANK ISTANBUL DIEBLER JON 33'  ) ;

insert into JoinTeamPlayer ( 'GALATASARAY ODEABANK ISTANBUL', 'KOKSAL GOKSENIN 61', 'GALATASARAY ODEABANK ISTANBUL KOKSAL GOKSENIN 61'  ) ;




11h omada)
insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'GOUDELOCK ANDREW 0', 'MACCABI FOX TEL AVIV GOUDELOCK ANDREW 0'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'RUDD VICTOR 3', 'MACCABI FOX TEL AVIV RUDD VICTOR 3'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'SEELEY D.J. 4', 'MACCABI FOX TEL AVIV SEELEY D.J. 4'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'SMITH DEVIN 6', 'MACCABI FOX TEL AVIV SMITH DEVIN 6'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'YIVZORI DAGAN 8', 'MACCABI FOX TEL AVIV YIVZORI DAGAN 8'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'MEKEL GAL 9', 'MACCABI FOX TEL AVIV MEKEL GAL 9'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'PNINI GUY 10', 'MACCABI FOX TEL AVIV PNINI GUY 10'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'SEGEV ITAY 11', 'MACCABI FOX TEL AVIV SEGEV ITAY 11'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'OHAYON YOGEV 12', 'MACCABI FOX TEL AVIV OHAYON YOGEV 12'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'WEEMS SONNY 13', 'MACCABI FOX TEL AVIV WEEMS SONNY 13'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'LANDESBERG SYLVEN 15', 'MACCABI FOX TEL AVIV LANDESBERG SYLVEN 15'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'ALEXANDER JOE 23', 'MACCABI FOX TEL AVIV ALEXANDER JOE 23'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'IVERSON COLTON 24', 'MACCABI FOX TEL AVIV IVERSON COLTON 24'  ) ;

insert into JoinTeamPlayer ( 'MACCABI FOX TEL AVIV', 'MILLER QUINCY 30', 'MACCABI FOX TEL AVIV MILLER QUINCY 30'  ) ;


12h omada)
insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'GREEN ERICK 1', 'OLYMPIACOS PIRAEUS GREEN ERICK 1'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'BIRCH KHEM 2', 'OLYMPIACOS PIRAEUS BIRCH KHEM 2'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'YOUNG PATRIC 4', 'OLYMPIACOS PIRAEUS YOUNG PATRIC 4'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'TOLIOPOULOS VASSILIS 5', 'OLYMPIACOS PIRAEUS TOLIOPOULOS VASSILIS 5'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'PAPAPETROU IOANNIS 6', 'OLYMPIACOS PIRAEUS PAPAPETROU IOANNIS 6'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'SPANOULIS VASSILIS 7', 'OLYMPIACOS PIRAEUS SPANOULIS VASSILIS 7'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'WATERS DOMINIC 9', 'OLYMPIACOS PIRAEUS WATERS DOMINIC 9'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'AGRAVANIS DIMITRIOS 10', 'OLYMPIACOS PIRAEUS AGRAVANIS DIMITRIOS 10'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'MILUTINOV NIKOLA 11', 'OLYMPIACOS PIRAEUS MILUTINOV NIKOLA 11'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'PRINTEZIS GEORGIOS 15', 'OLYMPIACOS PIRAEUS PRINTEZIS GEORGIOS 15'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'PAPANIKOLAOU KOSTAS 16', 'OLYMPIACOS PIRAEUS PAPANIKOLAOU KOSTAS 16'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'MANTZARIS VANGELIS 17', 'OLYMPIACOS PIRAEUS MANTZARIS VANGELIS 17'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'LOJESKI MATT 24', 'OLYMPIACOS PIRAEUS LOJESKI MATT 24'  ) ;

insert into JoinTeamPlayer ( 'OLYMPIACOS PIRAEUS', 'MARAGKOS PARIS 26', 'OLYMPIACOS PIRAEUS MARAGKOS PARIS 26'  ) ;

13h omada )
insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'SINGLETON CHRIS 0', 'PANATHINAIKOS SUPERFOODS ATHENS SINGLETON CHRIS 0'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'NICHOLS DEMETRIS 2', 'PANATHINAIKOS SUPERFOODS ATHENS NICHOLS DEMETRIS 2'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'RIVERS K.C. 3', 'PANATHINAIKOS SUPERFOODS ATHENS RIVERS K.C. 3'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'JAMES MIKE 5', 'PANATHINAIKOS SUPERFOODS ATHENS JAMES MIKE 5'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'BOCHORIDIS ELEFTHERIOS 7', 'PANATHINAIKOS SUPERFOODS ATHENS BOCHORIDIS ELEFTHERIOS 7'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'CALATHES PAT 8', 'PANATHINAIKOS SUPERFOODS ATHENS CALATHES PAT 8'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'FOTSIS ANTONIS 9', 'PANATHINAIKOS SUPERFOODS ATHENS FOTSIS ANTONIS 9'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'PAPPAS NIKOS 11', 'PANATHINAIKOS SUPERFOODS ATHENS PAPPAS NIKOS 11'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'FELDEINE JAMES 12', 'PANATHINAIKOS SUPERFOODS ATHENS FELDEINE JAMES 12'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'GIST JAMES 14', 'PANATHINAIKOS SUPERFOODS ATHENS GIST JAMES 14'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'CHARALAMPOPOULOS VASILIS 15', 'PANATHINAIKOS SUPERFOODS ATHENS CHARALAMPOPOULOS VASILIS 15'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'GONTIKAS KONSTANTINOS 17', 'PANATHINAIKOS SUPERFOODS ATHENS GONTIKAS KONSTANTINOS 17'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'GABRIEL KENNY 21', 'PANATHINAIKOS SUPERFOODS ATHENS GABRIEL KENNY 21'  ) ;

insert into JoinTeamPlayer ( 'PANATHINAIKOS SUPERFOODS ATHENS', 'GENTILE ALESSANDRO 25', 'PANATHINAIKOS SUPERFOODS ATHENS GENTILE ALESSANDRO 25'  ) ;



14h omada)
insert into JoinTeamPlayer values ( 'REAL MADRID', 'RANDOLPH ANTHONY 3', 'REAL MADRID RANDOLPH ANTHONY 3' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'DRAPER DONTAYE 4', 'REAL MADRID DRAPER DONTAYE 4' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'FERNANDEZ RUDY 5', 'REAL MADRID FERNANDEZ RUDY 5' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'NOCIONI ANDRES 6', 'REAL MADRID NOCIONI ANDRES 6' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'DONCIC LUKA 7', 'REAL MADRID DONCIC LUKA 7' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'MACIULIS JONAS 8', 'REAL MADRID MACIULIS JONAS 8' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'REYES FELIPE 9', 'REAL MADRID REYES FELIPE 9' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'AYON GUSTAVO 14', 'REAL MADRID AYON GUSTAVO 14' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'RADONCIC DINO 17', 'REAL MADRID RADONCIC DINO 17' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'CARROLL JAYCEE 20', 'REAL MADRID CARROLL JAYCEE 20' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'HUNTER OTHELLO 21', 'REAL MADRID HUNTER OTHELLO 21' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'LLULL SERGIO 23', 'REAL MADRID LLULL SERGIO 23' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'THOMPKINS TREY 33', 'REAL MADRID THOMPKINS TREY 33' ) ;

insert into JoinTeamPlayer values ( 'REAL MADRID', 'SUAREZ ALEX 36', 'REAL MADRID SUAREZ ALEX 36' ) ;






15h omada)
insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'JOHNSON ORLANDO 1', 'UNICS KAZAN JOHNSON ORLANDO 1' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'ANTIPOV PAVEL 2', 'UNICS KAZAN ANTIPOV PAVEL 2' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'CLARKE COTY 4', 'UNICS KAZAN CLARKE COTY 4' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'LANGFORD KEITH 5', 'UNICS KAZAN LANGFORD KEITH 5' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'STOLL PAUL 6', 'UNICS KAZAN STOLL PAUL 6' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'PONKRASHOV ANTON 7', 'UNICS KAZAN PONKRASHOV ANTON 7' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'PARAKHOUSKI ARTSIOM 9', 'UNICS KAZAN PARAKHOUSKI ARTSIOM 9' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'COLOM QUINO 10', 'UNICS KAZAN COLOM QUINO 10' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'KLIMENKO ARTEM 12', 'UNICS KAZAN KLIMENKO ARTEM 12' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'BANIC MARKO 13', 'UNICS KAZAN BANIC MARKO 13' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'VORONOV EVGENY 18', 'UNICS KAZAN VORONOV EVGENY 18' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'PANIN VADIM 20', 'UNICS KAZAN PANIN VADIM 20' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'WILLIAMS LATAVIOUS 22', 'UNICS KAZAN WILLIAMS LATAVIOUS 22' ) ;

insert into JoinTeamPlayer values ( 'UNICS KAZAN', 'TUKMAKOV AZAT 28', 'UNICS KAZAN TUKMAKOV AZAT 28' ) ;
