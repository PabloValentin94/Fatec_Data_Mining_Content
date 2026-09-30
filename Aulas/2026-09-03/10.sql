-- 10 | Listagem da média de itens de cada nota fiscal.

SELECT i.fileName AS "Nota Fiscal", FLOOR(AVG(i.qCom)) AS "Média de Itens Vendidos"

FROM Items i

GROUP BY i.fileName

ORDER BY AVG(i.qCom) DESC;