use otel;

DELIMITER //
create trigger kayitlimusteri after insert
on musteribilgileri for each row
BEGIN
UPDATE sayac SET sayac= sayac+1; 
end //
DELIMITER ;


DELIMITER //
create trigger RezDurSayi after insert
on rezervasyonbilgileri for each row
BEGIN
UPDATE rds SET rds= rds+1; 
end //
DELIMITER ;

DELIMITER $$
CREATE TRIGGER  odaGuncelle AFTER UPDATE
ON OdaTipleri for each row
BEGIN
IF NEW.OdaDurumu != OLD.OdaDurumu THEN
    INSERT INTO  musaitGuncelle(
        OdaID,
        OdaNumarasi,
        OdaTipID,
        OdaDurumu)
    VALUES(OLD.OdaID,OLD.OdaNumarasi,OLD.OdaTipID,NEW.OdaDurumu);
END IF
END $$ 
DELIMITER ;






