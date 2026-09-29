-- 9. Faça uma consulta que retorne o nome do gênero e a quantidade de filmes de cada gênero. A coluna de quantidade deve se chamar quant.
SELECT g.name, COUNT(m.movie_id) AS quant
FROM genres g INNER JOIN movies_genres mg ON mg.genre_id = g.genre_id
			  LEFT JOIN movies m ON mg.movie_id = m.movie_id
GROUP BY g.name;