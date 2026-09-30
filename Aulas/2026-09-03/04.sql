-- 04 | Listagem de quanto é vendido por mês de cada ano (Quantidades).

SELECT YEAR(TN.dhEmi) AS Ano, MONTH(TN.dhEmi) AS "Mês", ROUND(SUM(prod.vProd), 2) AS "Valor Total Vendido"

FROM Items prod

JOIN Tax_Notes TN ON (TN.fileName = prod.fileName)

GROUP BY MONTH(TN.dhEmi), YEAR(TN.dhEmi)

ORDER BY YEAR(TN.dhEmi) ASC, MONTH(TN.dhEmi) ASC;