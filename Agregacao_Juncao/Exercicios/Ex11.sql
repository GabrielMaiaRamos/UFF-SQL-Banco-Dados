-- 11. Faça uma consulta que retorne o primeiro nome e sobrenome do diretor do filme que possui o maior rank.
SELECT d.first_name, d.last_name
FROM directors d INNER JOIN movies_directors md ON md.director_id = d.director_id
				 INNER JOIN movies m ON md.movie_id = m.movie_id
WHERE m.rank = (SELECT MAX(m2.rank)
                FROM movies m2);