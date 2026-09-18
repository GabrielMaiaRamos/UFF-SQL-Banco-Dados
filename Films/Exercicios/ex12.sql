--Faça uma consulta que liste as pessoas que interpretaram a si mesmas (papel começando com "Himself" ou "Herself") em filmes do gênero documentário. Mostre o nome e o sobrenome da pessoa, o papel, o título e o ano do filme, o nome e o sobrenome do diretor e a probabilidade de esse diretor dirigir documentários.
SELECT a.first_name AS 'Fname_actor', a.last_name AS 'Lname_actor',
    r.role, m.name AS 'title', m.year,
    d.first_name AS 'Fname_director', d.last_name AS 'Lname_director', dg.prob
FROM actors a, roles r, movies m, directors d, directors_genres dg, genres g, movies_directors md, movies_genres mg
WHERE r.role LIKE 'H__self%'
    AND g.name = 'Documentary'
    AND a.actor_id = r.actor_id
    AND r.movie_id = m.movie_id
    AND md.movie_id = m.movie_id
    AND md.director_id = d.director_id
    AND mg.movie_id = m.movie_id
    AND mg.genre_id = g.genre_id
    AND dg.genre_id = g.genre_id
    AND dg.director_id = d.director_id;
