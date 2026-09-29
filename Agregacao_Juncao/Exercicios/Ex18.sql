-- 18. Faça uma consulta que retorne o primeiro nome mais popular entre os atores, ou seja, o que aparece mais vezes na tabela actors.
SELECT a.first_name
FROM actors a
GROUP BY a.first_name
HAVING COUNT(a.first_name) = (SELECT MAX(quant)
                              FROM (
                                	SELECT COUNT(a.first_name) AS quant
                                	FROM actors a
                                	GROUP BY a.first_name));