-- 17. Faça uma consulta que retorne a quantidade de atores de cada gênero. Retorne o gênero e a quantidade numa coluna chamada quant.
SELECT a.gender, COUNT(a.actor_id) AS quant
FROM actors a
GROUP BY a.gender;