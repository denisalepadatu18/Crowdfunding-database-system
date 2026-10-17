CREATE SEQUENCE seq_pk_crowd  

START WITH 1 

INCREMENT BY 1  

NOCACHE  

NOCYCLE;  

CREATE TABLE UTILIZATOR ( 

    id_utilizator NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    nume VARCHAR2(100) NOT NULL, 

    email VARCHAR2(100) UNIQUE NOT NULL, 

    data_inregistrare DATE DEFAULT SYSDATE NOT NULL 

); 

 

CREATE TABLE DETALII_PLATA ( 

    id_plata NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    id_utilizator NUMBER UNIQUE NOT NULL, 

    iban VARCHAR2(34) NOT NULL, 

    banca VARCHAR2(50), 

    CONSTRAINT fk_plata_utilizator FOREIGN KEY (id_utilizator) REFERENCES UTILIZATOR(id_utilizator) 

); 

 

CREATE TABLE FONDATOR ( 

    id_fondator NUMBER PRIMARY KEY, 

    biografie VARCHAR2(500), 

    telefon VARCHAR2(15), 

    CONSTRAINT fk_fondator_utilizator FOREIGN KEY (id_fondator) REFERENCES UTILIZATOR(id_utilizator) 

); 

 

CREATE TABLE CATEGORIE ( 

    id_categorie NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    denumire VARCHAR2(50) UNIQUE NOT NULL 

); 

 

CREATE TABLE PROIECT ( 

    id_proiect NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    id_fondator NUMBER NOT NULL, 

    id_categorie NUMBER NOT NULL, 

    titlu VARCHAR2(150) NOT NULL, 

    descriere VARCHAR2(2000), 

    obiectiv_financiar NUMBER(12,2) NOT NULL CHECK (obiectiv_financiar > 0), 

    stare VARCHAR2(20) DEFAULT 'ACTIV', 

    CONSTRAINT fk_proiect_fondator FOREIGN KEY (id_fondator) REFERENCES FONDATOR(id_fondator), 

    CONSTRAINT fk_proiect_categorie FOREIGN KEY (id_categorie) REFERENCES CATEGORIE(id_categorie) 

); 

 

CREATE TABLE TAG ( 

    id_tag NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    denumire_tag VARCHAR2(30) UNIQUE NOT NULL 

); 

 

CREATE TABLE PROIECT_TAGS ( 

    id_proiect NUMBER NOT NULL, 

    id_tag NUMBER NOT NULL, 

    PRIMARY KEY (id_proiect, id_tag), 

    CONSTRAINT fk_pt_proiect FOREIGN KEY (id_proiect) REFERENCES PROIECT(id_proiect), 

    CONSTRAINT fk_pt_tag FOREIGN KEY (id_tag) REFERENCES TAG(id_tag) 

); 

 

CREATE TABLE DONATIE ( 

    id_donatie NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    id_utilizator NUMBER NOT NULL, 

    id_proiect NUMBER NOT NULL, 

    suma NUMBER(10,2) NOT NULL CHECK (suma > 0), 

    data_donatie DATE DEFAULT SYSDATE NOT NULL, 

    CONSTRAINT fk_donatie_utilizator FOREIGN KEY (id_utilizator) REFERENCES UTILIZATOR(id_utilizator), 

    CONSTRAINT fk_donatie_proiect FOREIGN KEY (id_proiect) REFERENCES PROIECT(id_proiect) 

); 

 

CREATE TABLE SPONSOR ( 

    id_sponsor NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    nume_companie VARCHAR2(100) NOT NULL, 

    cui VARCHAR2(20) UNIQUE NOT NULL 

); 

 

CREATE TABLE SPONSORIZARE ( 

    id_sponsorizare NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    id_sponsor NUMBER NOT NULL, 

    id_proiect NUMBER NOT NULL, 

    suma NUMBER(12,2) NOT NULL CHECK (suma > 0), 

    data_contract DATE DEFAULT SYSDATE NOT NULL, 

    CONSTRAINT fk_spons_sponsor FOREIGN KEY (id_sponsor) REFERENCES SPONSOR(id_sponsor), 

    CONSTRAINT fk_spons_proiect FOREIGN KEY (id_proiect) REFERENCES PROIECT(id_proiect) 

); 

 

 

 

CREATE TABLE COMENTARIU ( 

    id_comentariu NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    id_fondator NUMBER NOT NULL, 

    id_proiect NUMBER NOT NULL, 

    text_comentariu VARCHAR2(1000) NOT NULL, 

    data_postare DATE DEFAULT SYSDATE NOT NULL, 

    CONSTRAINT fk_com_fondator FOREIGN KEY (id_fondator) REFERENCES FONDATOR(id_fondator), 

    CONSTRAINT fk_com_proiect FOREIGN KEY (id_proiect) REFERENCES PROIECT(id_proiect) 

); 

 

CREATE TABLE RETRAGERE_FONDURI ( 

    id_retragere NUMBER DEFAULT seq_pk_crowd.NEXTVAL PRIMARY KEY, 

    id_proiect NUMBER NOT NULL, 

    suma_retrasa NUMBER(12,2) NOT NULL CHECK (suma_retrasa > 0), 

    data_retragere DATE DEFAULT SYSDATE NOT NULL, 

    status VARCHAR2(20) DEFAULT 'PROCESARE', 

    CONSTRAINT fk_retragere_proiect FOREIGN KEY (id_proiect) REFERENCES PROIECT(id_proiect) 

); 

 