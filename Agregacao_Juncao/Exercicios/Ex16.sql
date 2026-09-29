-- 16. Faça uma consulta que retorne o nome do diretor, o nome do gênero que esse diretor tem maior probabilidade (prob) de atuar e a probabilidade.
SELECT d.first_name, d.last_name, g.name, dg.prob
FROM directors d INNER JOIN directors_genres dg ON dg.director_id = d.director_id
				 INNER JOIN genres g ON dg.genre_id = g.genre_id
WHERE dg.prob = (SELECT MAX(dg2.prob)
                 FROM directors_genres dg2
                 WHERE dg2.director_id = d.director_id);