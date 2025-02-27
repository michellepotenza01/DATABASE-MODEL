SELECT * FROM VENDAS;

-- CRIE UM BLOCO ANÔNIMO PARA CONTAR A QUANTIDADE DE PEDIDOS POR UM DETERMINADO PAIS;
SET SERVEROUTPUT ON;

DECLARE
    V_PAIS VARCHAR2(30) := '&VALOR';
    TOTAL NUMBER;
BEGIN
    SELECT 
        COUNT(1), 
        COUNTRY 
    INTO 
        TOTAL, 
        V_PAIS 
    FROM 
        vendas
    WHERE 
        COUNTRY = V_PAIS
    GROUP BY 
        COUNTRY;
    dbms_output.put_line('A QUANTIDADE DE PEDIDOS PARA O PAIS INFORMADO QUE É: ' 
                            || ' SÃO '
                            || TOTAL 
                            || 'PEDIDOS');
END;