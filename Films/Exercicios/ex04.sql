--Faça uma consulta que retorna os nomes dos filmes (numa coluna chamada titulo) e os nomes dos seus gêneros (numa coluna chamada genero), mas apenas para os filmes do gênero Romance e Comedy. Títulos dos filmes podem aparecer duplicados para filmes que são de ambos os gêneros.
SELECT m.name, g.name
FROM movies m, genres g, movies_genres mg
WHERE (g.name = 'Romance' OR g.name = 'Comedy')
	AND mg.movie_id = m.movie_id
    AND mg.genre_id = g.genre_id