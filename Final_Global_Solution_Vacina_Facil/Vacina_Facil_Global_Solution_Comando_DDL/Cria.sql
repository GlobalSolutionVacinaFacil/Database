CREATE TABLE t_usuario (
    id_usuario  NUMBER(9) NOT NULL,
    nm_usuario  VARCHAR2(50) NOT NULL,
    ds_email    VARCHAR2(50) NOT NULL,
    nr_telefone VARCHAR2(9) NOT NULL
);

ALTER TABLE t_usuario ADD CONSTRAINT pk_t_usuario PRIMARY KEY ( id_usuario );

ALTER TABLE t_usuario ADD CONSTRAINT uk_ds_email UNIQUE ( ds_email );

CREATE TABLE t_endereco (
    id_end        NUMBER(9) NOT NULL,
    ds_logradouro VARCHAR2(50) NOT NULL,
    nr_log        NUMBER(9),
    ds_estado     VARCHAR2(30) NOT NULL,
    ds_bairro     VARCHAR2(50) NOT NULL,
    nr_cep        VARCHAR2(9) NOT NULL,
    ds_cidade     VARCHAR2(30) NOT NULL,
    id_usuario    NUMBER(9) NOT NULL,
    id_ubs        NUMBER(9) NOT NULL
);

ALTER TABLE t_endereco ADD CONSTRAINT pk_t_endereco PRIMARY KEY ( id_end );

CREATE TABLE t_dependente (
    id_dep        NUMBER(9) NOT NULL,
    nm_dep        VARCHAR2(50) NOT NULL,
    dt_nascimento DATE NOT NULL,
    id_usuario    NUMBER(9) NOT NULL
);

ALTER TABLE t_dependente ADD CONSTRAINT pk_t_dependente PRIMARY KEY ( id_dep );

CREATE TABLE t_fabricante (
    id_fabricante   NUMBER(9) NOT NULL,
    nm_fabricante   VARCHAR2(50) NOT NULL,
    cnpj_fabricante VARCHAR2(15) NOT NULL
);

ALTER TABLE t_fabricante ADD CONSTRAINT pk_t_fabricante PRIMARY KEY ( id_fabricante );


CREATE TABLE t_vacina (
    id_vacina     NUMBER(9) NOT NULL,
    id_fabricante NUMBER(9) NOT NULL,
    sg_tipo       CHAR(1) DEFAULT 'U' NOT NULL,
    nm_vacina     VARCHAR2(100) NOT NULL,
    dt_inicial    NUMBER NOT NULL,
    int_vacina    NUMBER NOT NULL
);

ALTER TABLE t_vacina
    ADD CONSTRAINT "DOSE VACINA" CHECK ( sg_tipo IN ( 'D', 'T', 'U' ) );

ALTER TABLE t_vacina ADD CONSTRAINT pk_t_vacina PRIMARY KEY ( id_vacina );


CREATE TABLE t_aviso (
    id_aviso   NUMBER(9) NOT NULL,
    id_dep     NUMBER(9) NOT NULL,
    id_usuario NUMBER(9) NOT NULL,
    id_vacina  NUMBER(9) NOT NULL
);

ALTER TABLE t_aviso ADD CONSTRAINT pk_t_avisov1 PRIMARY KEY ( id_aviso );





ALTER TABLE t_aviso
    ADD CONSTRAINT fk_dep_avi FOREIGN KEY ( id_dep )
        REFERENCES t_dependente ( id_dep );

ALTER TABLE t_vacina
    ADD CONSTRAINT fk_fab_vac FOREIGN KEY ( id_fabricante )
        REFERENCES t_fabricante ( id_fabricante );

ALTER TABLE t_aviso
    ADD CONSTRAINT fk_usu_avi FOREIGN KEY ( id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_dependente
    ADD CONSTRAINT fk_usu_dep FOREIGN KEY ( id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_endereco
    ADD CONSTRAINT fk_usu_end FOREIGN KEY ( id_usuario )
        REFERENCES t_usuario ( id_usuario );

ALTER TABLE t_aviso
    ADD CONSTRAINT fk_vac_avi FOREIGN KEY ( id_vacina )
        REFERENCES t_vacina ( id_vacina );


CREATE SEQUENCE SEQ_T_AVISO START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE SEQ_T_DEPENDENTE START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE SEQ_T_ENDERECO START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE SEQ_T_USUARIO START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE SEQ_T_VACINA START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE SEQ_T_FABRICANTE START WITH 1 INCREMENT BY 1 NOCACHE;