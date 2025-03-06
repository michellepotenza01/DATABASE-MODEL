set serveroutput on;

DECLARE 
	V_CONTADOR NUMBER(2):= 1; 
BEGIN 
LOOP 	
	DBMS_OUTPUT.PUT_LINE(V_CONTADOR); 
	V_CONTADOR := V_CONTADOR + 1; 
	EXIT WHEN V_CONTADOR > 20; 
END LOOP; 
END;

-------------------
DECLARE 
    V_CONTADOR NUMBER(2):= 1; 
BEGIN 
    WHILE V_CONTADOR <= 20 LOOP 	
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR); 
        V_CONTADOR := V_CONTADOR + 1; 
    END LOOP; 
END;



--------------------------------------------------------

BEGIN 
    FOR V_CONTADOR IN 1..20 LOOP 
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
    END LOOP; 
END;
------------------
set serveroutput on;

BEGIN 
    FOR x IN 1..10 LOOP 
        DBMS_OUTPUT.PUT_LINE(x * 5);
    END LOOP; 
END;
-----------
set serveroutput on;

DECLARE
    impar NUMBER := 0;
    par   NUMBER := 0;
BEGIN
    FOR x IN 1..&valor LOOP
        IF MOD(x, 2) = 0 THEN
            par := par + 1;
        ELSE
            impar := impar+ 1;
        END IF;
    END LOOP;

    dbms_output.put_line('Quantidade de números pares: ' || par);
    dbms_output.put_line('Quantidade de números pares: ' ||impar);
END;


---

DECLARE
    impar NUMBER := 0;
    qnt_par   NUMBER := 0;
    pares NUMBER := 0;
BEGIN
    FOR intervalo in 1..&valor LOOP
        IF MOD(intervalo, 2) = 0 THEN
            qnt_par := qnt_par + 1;
            pares := pares + intervalo;
        ELSE
            impar := impar + intervalo;
        END IF;
    END LOOP;

    dbms_output.put_line('Quantidade de números pares: ' || par );
    dbms_output.put_line('Quantidade de números pares: ' ||impar);
END;
--------------------------------
@ 'C:\Users\labsfiap\Desktop\oracle\SCRIPT_MODELO_PEDIDO.SQL';

insert into pais select * from pf1788.pais;
commit;
 
insert into estado select * from pf1788.estado;
commit;
 
alter table cidade modify nom_cidade varchar2(30);
insert into cidade select * from pf1788.cidade;
commit;
 
insert into produto select * from pf1788.produto;
commit;
 
insert into produto_composto select * from pf1788.produto_composto;
commit;
 
insert into cliente select * from pf1788.cliente;
commit;
 
insert into usuario select * from pf1788.usuario;
commit;
 
insert into vendedor select * from pf1788.vendedor;
commit;
 
insert into cliente_vendedor select * from pf1788.cliente_vendedor;
commit;
 
insert into estoque select * from pf1788.estoque;
commit;
 
alter table pedido add status varchar2(30);
insert into pedido select * from pf1788.pedido;
commit;
 
insert into item_pedido select * from pf1788.item_pedido;
commit;
 
insert into historico_pedido select * from pf1788.historico_pedido;
commit;
 
insert into tipo_endereco select * from pf1788.tipo_endereco;
commit;
 
insert into endereco_cliente select * from pf1788.endereco_cliente;
commit;
 
insert into tipo_movimento_estoque select * from pf1788.tipo_movimento_estoque;
commit;
 
insert into movimento_estoque select * from pf1788.movimento_estoque;
commit;
 
insert into estoque_produto select * from pf1788.estoque_produto;
commit;