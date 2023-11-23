CREATE OR REPLACE PROCEDURE CARGA_DADOS IS
BEGIN

    BEGIN
        INSERT INTO t_usuario (id_usuario, nm_usuario, ds_email, nr_telefone) VALUES (SEQ_T_USUARIO.NEXTVAL, 'João Silva', 'joao.silva@gmail.com', '123456789');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_usuario');
       
    END;

    BEGIN
        INSERT INTO t_usuario (id_usuario, nm_usuario, ds_email, nr_telefone) VALUES (SEQ_T_USUARIO.NEXTVAL, 'Maria Santos', 'maria.santos@gmail.com', '987654321');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_usuario');
			
	END;
           

    BEGIN
        INSERT INTO t_usuario (id_usuario, nm_usuario, ds_email, nr_telefone) VALUES (SEQ_T_USUARIO.NEXTVAL, 'Carlos Pereira', 'carlos.pereira@gmail.com', '456789123');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_usuario');
            
    END;

    BEGIN
        INSERT INTO t_usuario (id_usuario, nm_usuario, ds_email, nr_telefone) VALUES (SEQ_T_USUARIO.NEXTVAL, 'Ana Costa', 'ana.costa@gmail.com', '789123456');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_usuario');
            
    END;

    BEGIN
        INSERT INTO t_usuario (id_usuario, nm_usuario, ds_email, nr_telefone) VALUES (SEQ_T_USUARIO.NEXTVAL, 'Pedro Rocha', 'pedro.rocha@gmail.com', '321654987');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_usuario');
            
    END;

    
    BEGIN
        INSERT INTO t_endereco (id_end, ds_logradouro, nr_log, ds_estado, ds_bairro, nr_cep, ds_cidade, id_usuario, id_ubs) VALUES (SEQ_T_ENDERECO.NEXTVAL, 'Rua das Flores', 123, 'São Paulo', 'Vila Mariana', '04015-000', 'São Paulo', 1, 1);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_endereco');
            
    END;
	
	
	BEGIN
        INSERT INTO t_endereco (id_end, ds_logradouro, nr_log, ds_estado, ds_bairro, nr_cep, ds_cidade, id_usuario, id_ubs) VALUES (SEQ_T_ENDERECO.NEXTVAL, 'Avenida Paulista', 456, 'São Paulo', 'Bela Vista', '01311-000', 'São Paulo', 2, 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_endereco');
            
    END;
	
	BEGIN
        INSERT INTO t_endereco (id_end, ds_logradouro, nr_log, ds_estado, ds_bairro, nr_cep, ds_cidade, id_usuario, id_ubs) VALUES (SEQ_T_ENDERECO.NEXTVAL, 'Rua Augusta', 789, 'São Paulo', 'Consolação', '01305-000', 'São Paulo', 3, 3);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_endereco');
            
    END;
	
	BEGIN
        INSERT INTO t_endereco (id_end, ds_logradouro, nr_log, ds_estado, ds_bairro, nr_cep, ds_cidade, id_usuario, id_ubs) VALUES (SEQ_T_ENDERECO.NEXTVAL, 'Rua Oscar Freire', 321, 'São Paulo', 'Jardins', '01426-001', 'São Paulo', 4, 4);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_endereco');
            
    END;
	
	BEGIN
        INSERT INTO t_endereco (id_end, ds_logradouro, nr_log, ds_estado, ds_bairro, nr_cep, ds_cidade, id_usuario, id_ubs) VALUES (SEQ_T_ENDERECO.NEXTVAL, 'Avenida Brigadeiro Faria Lima', 654, 'São Paulo', 'Itaim Bibi', '01452-001', 'São Paulo', 5, 5);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_endereco');
            
    END;
	
	BEGIN
        INSERT INTO t_dependente (id_dep, nm_dep, dt_nascimento, id_usuario) VALUES (SEQ_T_DEPENDENTE.NEXTVAL, 'Lucas Silva', TO_DATE('2023-05-15','YYYY-MM-DD'), 1);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_dependente');
            
    END;
	
	BEGIN
        INSERT INTO t_dependente (id_dep, nm_dep, dt_nascimento, id_usuario) VALUES (SEQ_T_DEPENDENTE.NEXTVAL, 'Julia Santos', TO_DATE('2023-08-20','YYYY-MM-DD'), 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_dependente');
            
    END;
	
	BEGIN
        INSERT INTO t_dependente (id_dep, nm_dep, dt_nascimento, id_usuario) VALUES (SEQ_T_DEPENDENTE.NEXTVAL, 'Gabriel Pereira', TO_DATE('2023-11-30','YYYY-MM-DD'), 3);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_dependente');
            
    END;
	
	BEGIN
        INSERT INTO t_dependente (id_dep, nm_dep, dt_nascimento, id_usuario) VALUES (SEQ_T_DEPENDENTE.NEXTVAL, 'Laura Costa', TO_DATE('2023-02-25','YYYY-MM-DD'), 4);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_dependente');
            
    END;
	
	BEGIN
        INSERT INTO t_dependente (id_dep, nm_dep, dt_nascimento, id_usuario) VALUES (SEQ_T_DEPENDENTE.NEXTVAL, 'Rafael Rocha', TO_DATE('2023-07-10','YYYY-MM-DD'), 5);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_dependente');
            
    END;
	
	BEGIN
        INSERT INTO t_fabricante (id_fabricante, nm_fabricante, cnpj_fabricante) VALUES (1, 'Butantan', '12345678912345');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_fabricante');
            
    END;
	
	BEGIN
        INSERT INTO t_fabricante (id_fabricante, nm_fabricante, cnpj_fabricante) VALUES (2, 'BioNTech', '23456789123456');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_fabricante');
            
    END;
	
	BEGIN
        INSERT INTO t_fabricante (id_fabricante, nm_fabricante, cnpj_fabricante) VALUES (3, 'Eurofarma', '34567891234567');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_fabricante');
            
    END;
	
	BEGIN
        INSERT INTO t_fabricante (id_fabricante, nm_fabricante, cnpj_fabricante) VALUES (4, 'Pfizer', '45678912345678');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_fabricante');
            
    END;
	
	BEGIN
        INSERT INTO t_fabricante (id_fabricante, nm_fabricante, cnpj_fabricante) VALUES (5, 'Fiocruz', '56789123456789');
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_fabricante');
            
    END;
	
	BEGIN
        INSERT INTO t_vacina (id_vacina, id_fabricante, sg_tipo, nm_vacina, dt_inicial, int_vacina) VALUES (SEQ_T_VACINA.NEXTVAL, 1, 'D', 'Butantan', 2023, 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_vacina');
            
    END;
	
	BEGIN
        INSERT INTO t_vacina (id_vacina, id_fabricante, sg_tipo, nm_vacina, dt_inicial, int_vacina) VALUES (SEQ_T_VACINA.NEXTVAL, 2, 'D', 'BioNTech', 2023, 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_vacina');
            
    END;
	
	BEGIN
        INSERT INTO t_vacina (id_vacina, id_fabricante, sg_tipo, nm_vacina, dt_inicial, int_vacina) VALUES (SEQ_T_VACINA.NEXTVAL, 3, 'U', 'Eurofarma', 2023, 1);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_vacina');
            
    END;
	
	BEGIN
        INSERT INTO t_vacina (id_vacina, id_fabricante, sg_tipo, nm_vacina, dt_inicial, int_vacina) VALUES (SEQ_T_VACINA.NEXTVAL, 4, 'D', 'Pfizer', 2023, 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_vacina');
            
    END;
	
	BEGIN
        INSERT INTO t_vacina (id_vacina, id_fabricante, sg_tipo, nm_vacina, dt_inicial, int_vacina) VALUES (SEQ_T_VACINA.NEXTVAL, 5, 'D', 'Fiocruz', 2023, 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_vacina');
            
    END;
	
	BEGIN
        INSERT INTO t_aviso (id_aviso, id_dep, id_usuario, id_vacina) VALUES (SEQ_T_AVISO.NEXTVAL, 1, 1, 1);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_aviso');
            
    END;
	
	BEGIN
        INSERT INTO t_aviso (id_aviso, id_dep, id_usuario, id_vacina) VALUES (SEQ_T_AVISO.NEXTVAL, 1, 1, 1);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_aviso');
            
    END;
	
	BEGIN
        INSERT INTO t_aviso (id_aviso, id_dep, id_usuario, id_vacina) VALUES (SEQ_T_AVISO.NEXTVAL, 2, 2, 2);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_aviso');
            
    END;
	
	BEGIN
        INSERT INTO t_aviso (id_aviso, id_dep, id_usuario, id_vacina) VALUES (SEQ_T_AVISO.NEXTVAL, 3, 3, 3);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_aviso');
            
    END;
	
	BEGIN
        INSERT INTO t_aviso (id_aviso, id_dep, id_usuario, id_vacina) VALUES (SEQ_T_AVISO.NEXTVAL, 4, 4, 4);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_aviso');
            
    END;
	
	BEGIN
        INSERT INTO t_aviso (id_aviso, id_dep, id_usuario, id_vacina) VALUES (SEQ_T_AVISO.NEXTVAL, 5, 5, 5);
    EXCEPTION
		WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Violação de chave única.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Erro ao inserir dados na tabela t_aviso');
            
    END;	
	
		COMMIT;
	EXCEPTION
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Ocorreu uma exceção não tratada.');

    
END CARGA_DADOS;
/
