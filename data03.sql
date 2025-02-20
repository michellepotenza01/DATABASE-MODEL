SET SERVEROUTPUT ON;

DECLARE
    CARRO NUMBER := 10000;

BEGIN

    dbms_output.put_line('VALOR DO CARRO A VISTA R$:' || CARRO);
    dbms_output.put_line('VALOR DAS PARCELAS EM 6X R$:' || (CARRO * 1.10)/10);
    dbms_output.put_line('VALOR DAS PARCELAS EM 12X R$:' || (CARRO * 1.15)/10);
    dbms_output.put_line('VALOR DAS PARCELAS EM 18X R$:' || (CARRO * 1.20)/10);
    

    dbms_output.put_line('VALOR TOTAL FINANCIADO R$:' || (CARRO - 1.20)/10);

END;

