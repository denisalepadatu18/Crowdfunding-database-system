
CREATE INDEX idx_donatie_proiect ON DONATIE(id_proiect);

CREATE OR REPLACE TRIGGER trg_inchide_proiect
AFTER INSERT ON DONATIE
FOR EACH ROW
DECLARE
    v_total NUMBER;
    v_obiectiv NUMBER;
BEGIN
    SELECT NVL(SUM(suma), 0) INTO v_total
    FROM DONATIE
    WHERE id_proiect = :NEW.id_proiect;

    SELECT obiectiv_financiar INTO v_obiectiv
    FROM PROIECT
    WHERE id_proiect = :NEW.id_proiect;

    IF v_total >= v_obiectiv THEN
        UPDATE PROIECT
        SET stare = 'INCHEIAT'
        WHERE id_proiect = :NEW.id_proiect;
    END IF;
END;
/