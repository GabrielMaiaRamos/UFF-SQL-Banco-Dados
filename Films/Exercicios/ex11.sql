--Faça uma consulta que retorna os nomes, sobrenomes e papéis dos atores que atuaram em filmes dirigidos por diretores cujo sobrenome é Cameron. Não use mais tabelas do que o necessário.
SELECT a.first_name, a.last_name, r.role
FROM actors a, roles r, movies_directors md, directors d
WHERE a.actor_id = r.actor_id
    AND r.movie_id = md.movie_id
    AND md.director_id = d.director_id
    AND d.last_name = 'Cameron';
