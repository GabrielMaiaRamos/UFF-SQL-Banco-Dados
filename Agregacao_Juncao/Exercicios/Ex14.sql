-- 14. Faça uma consulta que retorne a média do rank dos filmes por ano de lançamento, com a média renomeada para media e o resultado ordenado de forma decrescente pela média.
SELECT m.year, AVG(m.rank) AS media
FROM movies m
GROUP BY m.year
ORDER BY AVG(m.rank) DESC;