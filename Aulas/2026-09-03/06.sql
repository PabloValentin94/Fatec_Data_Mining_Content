-- 06 | Ranqueamento de clientes com base no consumo.

SELECT DISTINCT rec.CPF AS CPF, rec.xNome AS Cliente, SUM(prod.qCom) AS "Quantidade de Itens Comprados", ROUND(SUM(prod.vProd), 2) AS "Valor Total Gasto"

FROM Recipients rec

JOIN Items prod ON (prod.fileName = rec.fileName)

GROUP BY rec.CPF, prod.cProd

ORDER BY SUM(prod.vProd) DESC, SUM(prod.qCom) DESC;