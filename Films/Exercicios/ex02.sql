--Faça uma consulta que retorna o primeiro nome (first_name) e sobrenome (last_name) dos nomes dos atores do sexo feminino (gender = 'F'), e os papéis que eles desempenharam (role), ordenado pelo nome, sobrenome e papel.
SELECT a.first_name, a.last_name, r.role
FROM actors a, roles r
WHERE gender='F' and r.actor_id = a.actor_id
ORDER BY a.first_name, a.last_name, r.role ASC;
