-- 12. Faça uma consulta que retorne os nomes dos atores e a quantidade de papéis que eles desempenharam nos filmes, apenas para os que possuem mais de 2 papéis. A quantidade deve se chamar quant.
SELECT a.first_name, a.last_name, COUNT(m.movie_id) AS quant
FROM actors a INNER JOIN roles r ON a.actor_id = r.actor_id
			  LEFT JOIN movies m ON m.movie_id = r.movie_id
GROUP BY a.actor_id
HAVING COUNT(m.movie_id) > 2;