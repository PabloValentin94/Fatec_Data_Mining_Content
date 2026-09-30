-- 02 | Listagem de produtos únicos.

SELECT DISTINCT prod.cProd AS "Código", prod.xProd AS Produto, prod.vUnCom AS "Valor Unitário"

FROM Items prod

ORDER BY prod.cProd ASC;