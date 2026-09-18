--Faça uma consulta que retorna os nomes dos filmes e o rank dos filmes que possuem rank maior do que 8, juntamente com o primeiro nome e sobrenome de seus diretores, ordenado pelo rank.
SELECT m.name, m.rank, d.first_name, d.last_name
FROM movies m, directors d, movies_directors md
WHERE m.rank > 8
	AND md.director_id = d.director_id
    AND md.movie_id = m.movie_id
ORDER BY m.rank;