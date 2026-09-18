--Faça uma consulta que retorne os sobrenomes dos atores que atuaram em um papel que contém a palavra "soldier". Retorne também o papel.
SELECT a.last_name, r.role
FROM actors a, roles r
WHERE a.actor_id = r.actor_id AND r.role LIKE '%soldier%';
