-- 03 | Listagem de emitentes únicos.

SELECT DISTINCT emit.CNPJ AS CNPJ, emit.xNome AS Nome, emit.xMun AS Cidade, emit.UF AS UF

FROM Emitters emit

ORDER BY emit.CNPJ ASC;