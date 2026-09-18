--Faça uma consulta que retorna os nomes dos filmes e o ano de lançamento, dos filmes lançados na década de 1960 (year), ordenado pelo ano de lançamento.
SELECT name, year 
From movies
WHERE year LIKE '196_'
ORDER BY year ASC;