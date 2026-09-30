-- 07 | Ranqueamento dos dias com mais vendas.

SELECT DAY(TN.dhEmi) AS Dia, COUNT(TN.cNF) AS "Vendas Realizadas"

FROM Tax_Notes TN

GROUP BY DAY(TN.dhEmi)

ORDER BY COUNT(TN.dhEmi) DESC;