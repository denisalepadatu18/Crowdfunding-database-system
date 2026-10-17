-- 1. Inserare CATEGORII (5 înregistrări) 

INSERT INTO CATEGORIE (id_categorie, denumire) VALUES (1, 'Sănătate și Tratamente'); 

INSERT INTO CATEGORIE (id_categorie, denumire) VALUES (2, 'Sprijin Comunitar și Urgențe'); 

INSERT INTO CATEGORIE (id_categorie, denumire) VALUES (3, 'Protecția Animalelor'); 

INSERT INTO CATEGORIE (id_categorie, denumire) VALUES (4, 'Educație și Copii'); 

INSERT INTO CATEGORIE (id_categorie, denumire) VALUES (5, 'Mediu și Ecologie'); 

 

-- 2. Inserare UTILIZATORI (10 înregistrări) 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (1, 'Popescu Ion', 'ion.popescu@email.com', TO_DATE('2025-01-10', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (2, 'Ionescu Maria', 'maria.ionescu@email.com', TO_DATE('2025-01-15', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (3, 'Radu Andrei', 'andrei.radu@email.com', TO_DATE('2025-02-01', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (4, 'Stan Elena', 'elena.stan@email.com', TO_DATE('2025-02-12', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (5, 'Marin George', 'george.marin@email.com', TO_DATE('2025-03-05', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (6, 'Dinu Alina', 'alina.dinu@email.com', TO_DATE('2025-03-20', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (7, 'Vasile Florin', 'florin.vasile@email.com', TO_DATE('2025-04-02', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (8, 'Nita Carmen', 'carmen.nita@email.com', TO_DATE('2025-04-18', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (9, 'Toma Cristian', 'cristian.toma@email.com', TO_DATE('2025-05-10', 'YYYY-MM-DD')); 

INSERT INTO UTILIZATOR (id_utilizator, nume, email, data_inregistrare) VALUES (10, 'Sava Diana', 'diana.sava@email.com', TO_DATE('2025-06-01', 'YYYY-MM-DD')); 

 

-- 3. Inserare DETALII_PLATA (10 înregistrări) 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (1, 1, 'RO12INGB1234567890123456', 'ING Bank'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (2, 2, 'RO34BTRL1234567890123456', 'Banca Transilvania'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (3, 3, 'RO56BCR01234567890123456', 'BCR'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (4, 4, 'RO78BRDE1234567890123456', 'BRD'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (5, 5, 'RO90RZBR1234567890123456', 'Raiffeisen Bank'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (6, 6, 'RO12INGB9876543210987654', 'ING Bank'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (7, 7, 'RO34BTRL9876543210987654', 'Banca Transilvania'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (8, 8, 'RO56BCR09876543210987654', 'BCR'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (9, 9, 'RO78BRDE9876543210987654', 'BRD'); 

INSERT INTO DETALII_PLATA (id_plata, id_utilizator, iban, banca) VALUES (10, 10, 'RO90RZBR9876543210987654', 'Raiffeisen Bank'); 

 

-- 4. Inserare FONDATOR (5 înregistrări extrase din UTILIZATORI) 

INSERT INTO FONDATOR (id_fondator, biografie, telefon) VALUES (1, 'Medic voluntar, implicat în strângeri de fonduri pentru spitale.', '0722111222'); 

INSERT INTO FONDATOR (id_fondator, biografie, telefon) VALUES (3, 'Coordonator ONG pentru sprijin în situații de urgență.', '0733111222'); 

INSERT INTO FONDATOR (id_fondator, biografie, telefon) VALUES (5, 'Iubitor de animale și fondator de adăposturi.', '0744111222'); 

INSERT INTO FONDATOR (id_fondator, biografie, telefon) VALUES (7, 'Profesor dedicat accesului la educație în mediul rural.', '0755111222'); 

INSERT INTO FONDATOR (id_fondator, biografie, telefon) VALUES (9, 'Activist de mediu implicat în reîmpăduriri.', '0766111222'); 

 

-- 5. Inserare PROIECTE (8 înregistrări cu focus caritabil) 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (1, 1, 1, 'Operație salvatoare pentru micuțul Alex', 'Strângere de fonduri pentru intervenția chirurgicală a lui Alex, 3 ani.', 50000, 'ACTIV'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (2, 3, 2, 'Reconstrucție case după inundații', 'Ajutor pentru 10 familii rămase fără adăpost în județul Galați.', 150000, 'ACTIV'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (3, 5, 3, 'Hrană și adăpost pentru cățeii nimănui', 'Extinderea capacității adăpostului Speranța.', 25000, 'ACTIV'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (4, 7, 4, 'Ghiozdane pentru copii din sate izolate', 'Rechizite complete pentru 200 de elevi.', 10000, 'INCHEIAT'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (5, 9, 5, 'Plantează o pădure, donează aer', 'Acțiune de reîmpădurire în zonele afectate de tăieri ilegale.', 30000, 'ACTIV'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (6, 1, 1, 'Echipamente pentru secția de prematuri', 'Achiziționarea a două incubatoare performante.', 80000, 'ACTIV'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (7, 3, 2, 'Mese calde pentru bunicii singuri', 'Livrarea de pachete cu hrană caldă pe timpul iernii.', 15000, 'ACTIV'); 

INSERT INTO PROIECT (id_proiect, id_fondator, id_categorie, titlu, descriere, obiectiv_financiar, stare)  

VALUES (8, 7, 4, 'Microbuz școlar pentru comuna X', 'Copiii merg 5km pe jos. Haideți să le luăm un microbuz!', 120000, 'INCHEIAT'); 

 

-- 6. Inserare TAG-uri (8 înregistrări) 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (1, 'Sănătate Copii'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (2, 'Urgență'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (3, 'Animale'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (4, 'Voluntariat'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (5, 'Ecologie'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (6, 'Educație'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (7, 'Spitale'); 

INSERT INTO TAG (id_tag, denumire_tag) VALUES (8, 'Vârstnici'); 

 

-- 7. Inserare PROIECT_TAGS (Tabel asociativ - 12 înregistrări) 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (1, 1); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (1, 2); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (2, 2); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (2, 4); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (3, 3); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (4, 6); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (5, 4); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (5, 5); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (6, 1); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (6, 7); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (7, 4); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (7, 8); 

INSERT INTO PROIECT_TAGS (id_proiect, id_tag) VALUES (8, 6); 

 

-- 8. Inserare DONATII (Tabel asociativ - 12 înregistrări) 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (1, 2, 1, 500, TO_DATE('2025-06-15', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (2, 4, 1, 200, TO_DATE('2025-06-16', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (3, 6, 2, 1000, TO_DATE('2025-06-20', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (4, 8, 3, 150, TO_DATE('2025-07-01', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (5, 10, 4, 50, TO_DATE('2025-07-15', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (6, 2, 5, 300, TO_DATE('2025-08-01', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (7, 4, 6, 800, TO_DATE('2025-08-10', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (8, 6, 7, 250, TO_DATE('2025-08-20', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (9, 8, 8, 400, TO_DATE('2025-09-05', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (10, 10, 1, 150, TO_DATE('2025-09-10', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (11, 2, 2, 350, TO_DATE('2025-09-15', 'YYYY-MM-DD')); 

INSERT INTO DONATIE (id_donatie, id_utilizator, id_proiect, suma, data_donatie) VALUES (12, 6, 5, 100, TO_DATE('2025-09-20', 'YYYY-MM-DD')); 

 

-- 9. Inserare SPONSOR (5 înregistrări) 

INSERT INTO SPONSOR (id_sponsor, nume_companie, cui) VALUES (1, 'Fundația Speranța SRL', 'RO12345678'); 

INSERT INTO SPONSOR (id_sponsor, nume_companie, cui) VALUES (2, 'Clinica Medicală Sanitas', 'RO87654321'); 

INSERT INTO SPONSOR (id_sponsor, nume_companie, cui) VALUES (3, 'EduRomânia Asociație', 'RO11223344'); 

INSERT INTO SPONSOR (id_sponsor, nume_companie, cui) VALUES (4, 'GreenPlanet ONG', 'RO44332211'); 

INSERT INTO SPONSOR (id_sponsor, nume_companie, cui) VALUES (5, 'Banca Locală SA', 'RO99887766'); 

 

-- 10. Inserare SPONSORIZARE (Tabel asociativ - 10 înregistrări) 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (1, 2, 1, 15000, TO_DATE('2025-06-10', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (2, 2, 6, 20000, TO_DATE('2025-07-05', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (3, 1, 2, 30000, TO_DATE('2025-06-25', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (4, 5, 2, 50000, TO_DATE('2025-08-15', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (5, 3, 4, 5000, TO_DATE('2025-07-10', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (6, 5, 8, 45000, TO_DATE('2025-08-01', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (7, 4, 5, 10000, TO_DATE('2025-08-25', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (8, 1, 7, 5000, TO_DATE('2025-09-01', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (9, 3, 8, 15000, TO_DATE('2025-09-10', 'YYYY-MM-DD')); 

INSERT INTO SPONSORIZARE (id_sponsorizare, id_sponsor, id_proiect, suma, data_contract) VALUES (10, 4, 3, 8000, TO_DATE('2025-09-20', 'YYYY-MM-DD')); 

 

-- 11. Inserare COMENTARIU (8 înregistrări) 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (1, 1, 1, 'Am programat intervenția pentru luna viitoare! Vă mulțumesc din suflet.', TO_DATE('2025-06-20', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (2, 3, 2, 'Materialele de construcție au ajuns la primele 3 familii afectate.', TO_DATE('2025-07-05', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (3, 5, 3, 'Am montat primele padocuri izolate pentru iarnă. Cățeii vă sunt recunoscători.', TO_DATE('2025-08-01', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (4, 7, 4, 'Toate cele 200 de ghiozdane au fost distribuite chiar înainte de prima zi de școală!', TO_DATE('2025-08-10', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (5, 9, 5, 'Sâmbătă plantăm primii 1000 de puieți. Vă așteptăm să ne fiți alături!', TO_DATE('2025-09-01', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (6, 1, 6, 'Incubatoarele au fost comandate, termenul de livrare este de o lună.', TO_DATE('2025-09-10', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (7, 3, 7, 'Săptămâna aceasta am dus mese calde pentru 50 de bunici din satele izolate.', TO_DATE('2025-09-25', 'YYYY-MM-DD')); 

INSERT INTO COMENTARIU (id_comentariu, id_fondator, id_proiect, text_comentariu, data_postare) VALUES (8, 7, 8, 'Microbuzul școlar a fost înmatriculat și face prima cursă luni dimineață.', TO_DATE('2025-10-01', 'YYYY-MM-DD')); 

 

-- 12. Inserare RETRAGERE_FONDURI (6 înregistrări) 

INSERT INTO RETRAGERE_FONDURI (id_retragere, id_proiect, suma_retrasa, data_retragere, status) VALUES (1, 4, 10000, TO_DATE('2025-08-05', 'YYYY-MM-DD'), 'FINALIZAT'); 

INSERT INTO RETRAGERE_FONDURI (id_retragere, id_proiect, suma_retrasa, data_retragere, status) VALUES (2, 8, 120000, TO_DATE('2025-10-05', 'YYYY-MM-DD'), 'FINALIZAT'); 

INSERT INTO RETRAGERE_FONDURI (id_retragere, id_proiect, suma_retrasa, data_retragere, status) VALUES (3, 1, 15000, TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'FINALIZAT'); 

INSERT INTO RETRAGERE_FONDURI (id_retragere, id_proiect, suma_retrasa, data_retragere, status) VALUES (4, 2, 30000, TO_DATE('2025-08-01', 'YYYY-MM-DD'), 'PROCESARE'); 

INSERT INTO RETRAGERE_FONDURI (id_retragere, id_proiect, suma_retrasa, data_retragere, status) VALUES (5, 5, 10000, TO_DATE('2025-09-15', 'YYYY-MM-DD'), 'FINALIZAT'); 

INSERT INTO RETRAGERE_FONDURI (id_retragere, id_proiect, suma_retrasa, data_retragere, status) VALUES (6, 7, 5000, TO_DATE('2025-10-10', 'YYYY-MM-DD'), 'PROCESARE'); 

 

COMMIT; 