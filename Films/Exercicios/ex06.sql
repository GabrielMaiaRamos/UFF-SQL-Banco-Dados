--Faça uma consulta que retorna primeiro nome, sobrenome e gênero dos atores que atuaram em algum filme com papel de ‘Kid’.
SELECT a.first_name, a.last_name, a.gender
FROM actors a, roles r
WHERE a.actor_id = r.actor_id AND r.role = 'Kid';
