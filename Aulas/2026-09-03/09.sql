-- 09 | Ranqueamento das vendas com mais itens adicionados.

SELECT i.fileName AS "Nota Fiscal", SUM(i.qCom) AS "Quantidade de Itens Vendidos"

FROM Items i

GROUP BY i.fileName

ORDER BY SUM(i.qCom) DESC;