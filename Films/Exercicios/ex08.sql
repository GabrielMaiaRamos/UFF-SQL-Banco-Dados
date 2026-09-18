--Faça uma consulta que retorna o primeiro nome e sobrenome dos atores cujo sobrenome inicia-se com a letra M.
SELECT a.first_name, a.last_name
FROM actors a
WHERE a.last_name LIKE 'M%';
