-- 10. Faça uma consulta que retorne o nome e o ano de lançamento do filme mais antigo (menor ano de lançamento).
SELECT m.name, m.year
FROM movies m
WHERE m.year = (SELECT MIN(m2.year)
                FROM movies m2);