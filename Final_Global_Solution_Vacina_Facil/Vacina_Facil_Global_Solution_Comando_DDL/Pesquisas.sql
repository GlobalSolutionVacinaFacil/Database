CREATE OR REPLACE PROCEDURE PesquisaDados (
    p_usuario_id IN NUMBER,
    p_vacina_tipo IN CHAR
) IS
    CURSOR cur_usuario_dependentes IS
        SELECT id_dep, nm_dep
        FROM t_dependente
        WHERE id_usuario = p_usuario_id;

    CURSOR cur_vacina_tipo IS
        SELECT id_vacina, nm_vacina
        FROM t_vacina
        WHERE sg_tipo = p_vacina_tipo;

    v_dep_id t_dependente.id_dep%TYPE;
    v_dep_nome t_dependente.nm_dep%TYPE;
    v_vac_id t_vacina.id_vacina%TYPE;
    v_vac_nome t_vacina.nm_vacina%TYPE;
BEGIN
   
    OPEN cur_usuario_dependentes;
    LOOP
        FETCH cur_usuario_dependentes INTO v_dep_id, v_dep_nome;
        EXIT WHEN cur_usuario_dependentes%NOTFOUND;
       
        IF v_dep_id IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('Dependente Encontrado: ID=' || v_dep_id || ', Nome=' || v_dep_nome);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Nenhum Dependente Encontrado.');
        END IF;
    END LOOP;
    CLOSE cur_usuario_dependentes;

    
    OPEN cur_vacina_tipo;
    LOOP
        FETCH cur_vacina_tipo INTO v_vac_id, v_vac_nome;
        EXIT WHEN cur_vacina_tipo%NOTFOUND;
        
        IF v_vac_id IS NOT NULL THEN
            DBMS_OUTPUT.PUT_LINE('Vacina Encontrada: ID=' || v_vac_id || ', Nome=' || v_vac_nome);
        ELSE
            DBMS_OUTPUT.PUT_LINE('Nenhuma Vacina Encontrada.');
        END IF;
    END LOOP;
    CLOSE cur_vacina_tipo;
END PesquisaDados;
/
