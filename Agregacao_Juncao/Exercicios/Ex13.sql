-- 13. Faça uma consulta que retorne os títulos dos filmes para os quais não há nenhum papel registrado na tabela roles.
SELECT m.name
FROM movies m
WHERE NOT EXISTS (SELECT *
                  FROM roles r
                  WHERE m.movie_id = r.movie_id);