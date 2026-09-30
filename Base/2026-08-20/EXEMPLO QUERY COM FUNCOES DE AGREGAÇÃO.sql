SELECT DAY(c.dhEmi), ROUND(SUM(i.vProd), 2) AS total_diario
FROM cabecalho c
JOIN destinatario d ON (d.arquivo_xml = c.arquivo_xml)
JOIN item i ON (i.arquivo_xml = c.arquivo_xml)
WHERE MONTH(c.dhEmi) = 8
GROUP BY DAY(c.dhEmi)
ORDER BY DAY(c.dhEmi)