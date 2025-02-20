--SELECT * FROM pf1788.PAIS INNER JOIN PF1788.ESTADO B 

SELECT 
    a.nom_pais pais,
    B.nom_ESTADO ESTADO,
    COUNT(nom_estado) "QTE CIDADE"
FROM 
    pf1788.pais a     
    LEFT JOIN pf1788.estado b on ( a.cod_pais = b.cod_pais )
    INNER JOIN pf1788.CIDADE C on ( B.cod_pais = C.cod_ESTADO )
    --WHERE A.NOM_PAIS = 'Brazil'
GROUP BY
     a.nom_pais,
      B.NOM_ESTADO
     HAVING COUNT(nom_estado) >0
ORDER BY 3;
