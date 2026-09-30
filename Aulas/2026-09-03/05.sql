-- 05 | Listagem do produto mais vendido.

SELECT prod.cProd AS "Código", prod.xProd AS Produto, SUM(prod.qCom) AS "Quantidade Vendida", ROUND(SUM(prod.vProd), 2) AS "Valor Total"

FROM Items prod

GROUP BY prod.cProd

ORDER BY SUM(prod.vProd) DESC, SUM(prod.qCom) DESC

LIMIT 1;