SELECT c.cNF, c.natOp, c.dhEmi,
       d.CPF, d.xNome,
       i.xProd,
       c.arquivo_xml
FROM cabecalho c
JOIN destinatario d ON (d.arquivo_xml = c.arquivo_xml)
JOIN item i ON (i.arquivo_xml = c.arquivo_xml)