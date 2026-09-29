-- 15. Faça uma consulta que retorne a soma do rank dos filmes lançados em 1994. A coluna com a soma deve se chamar soma.
SELECT SUM(m.rank) AS soma
FROM movies m
WHERE m.year = 1994;