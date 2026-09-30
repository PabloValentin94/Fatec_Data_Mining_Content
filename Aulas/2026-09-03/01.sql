-- 01 | Listagem de clientes únicos (Destinatários).

SELECT DISTINCT rec.CPF AS CPF, rec.xNome AS Nome, rec.xMun AS Cidade, rec.UF AS UF

FROM Recipients rec

ORDER BY rec.xNome ASC;