CREATE OR REPLACE FUNCTION calcular_idade_media_dependentes
RETURN NUMBER
IS
    total_dependentes NUMBER;
    soma_idades NUMBER := 0;
    idade_media NUMBER;
BEGIN
    SELECT COUNT(*) INTO total_dependentes FROM t_dependente;
    
    IF total_dependentes > 0 THEN
        SELECT SUM(TRUNC(MONTHS_BETWEEN(SYSDATE, dt_nascimento)) / 12) INTO soma_idades
        FROM t_dependente;
        
        idade_media := soma_idades / total_dependentes;
        RETURN idade_media;
    ELSE
        RETURN NULL; 
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RETURN NULL; 
END;
/
