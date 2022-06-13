use otel;

DELIMITER $$
CREATE PROCEDURE gosterOdaDolu()
BEGIN
SELECT * FROM OdaBilgileri WHERE OdaDurumu = "1";
END $$ 
DELIMITER ;

DELIMITER //
CREATE PROCEDURE rezervasyonSayisi()
BEGIN
SELECT COUNT(RezervasyonDurum) FROM rezervasyonbilgileri WHERE RezervasyonDurum=1;
END // 
DELIMITER ;

CALL rezervasyonSayisi();


DELIMITER $$
CREATE PROCEDURE gosterOda()
BEGIN
SELECT * FROM OdaBilgileri WHERE OdaDurumu = "0";
END $$ 
DELIMITER ;

CALL gosterOda();

DELIMITER $$
CREATE PROCEDURE gosterMusteri()
BEGIN
SELECT * FROM MusteriBilgileri;
END $$ 
DELIMITER ;

CALL gosterMusteri();

DELIMITER $$
CREATE PROCEDURE gosterOda()
BEGIN
SELECT * FROM OdaBilgileri;
END $$ 
DELIMITER ;

CALL gosterOda();

DELIMITER $$
CREATE PROCEDURE gosterOdaTip()
BEGIN
SELECT * FROM OdaTipleri;
END $$ 
DELIMITER ;

CALL gosterOdaTip();

DELIMITER $$
CREATE PROCEDURE gosterRezervasyon()
BEGIN
SELECT * FROM RezervasyonBilgileri;
END $$ 
DELIMITER ;

CALL gosterRezervasyon();

DELIMITER //
CREATE PROCEDURE rezervasyonSayisi()
BEGIN
SELECT COUNT(RezervasyonDurum) FROM rezervasyonbilgileri WHERE RezervasyonDurum=1;
END // 
DELIMITER ;

CALL rezervasyonSayisi();








