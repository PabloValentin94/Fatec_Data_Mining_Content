-- 08 | Ranqueamento do dia que mais vende, considerando o mês e a semana.

SELECT DAY(TN.dhEmi) AS "Dia do Mês", DAYNAME(TN.dhEmi) AS "Dia da Semana", COUNT(TN.cNF) AS "Vendas Realizadas"

FROM Tax_Notes TN

GROUP BY DAY(TN.dhEmi), DAYNAME(TN.dhEmi)

ORDER BY COUNT(TN.cNF) DESC;

-- 08.1 | Ranqueamento do dia que mais vende, levando em conta apenas o mês.

SELECT DAY(TN.dhEmi) AS "Dia do Mês", COUNT(TN.cNF) AS "Vendas Realizadas"

FROM Tax_Notes TN

GROUP BY DAY(TN.dhEmi)

ORDER BY COUNT(TN.cNF) DESC;

-- 08.2 | Ranqueamento do dia que mais vende, levando em conta apenas a semana.

SELECT DAYNAME(TN.dhEmi) AS "Dia da Semana", COUNT(TN.cNF) AS "Vendas Realizadas"

FROM Tax_Notes TN

GROUP BY DAYNAME(TN.dhEmi)

ORDER BY COUNT(TN.cNF) DESC;