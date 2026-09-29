-- 4. Faça uma consulta que retorne o AirportCode dos aeroportos e a quantidade de rotas que usam esse aeroporto como ponto de partida, apenas para aeroportos que são origem de mais de 2 rotas.
SELECT ap.AirportCode, COUNT(r.RouteID)
FROM airport ap INNER JOIN route r ON ap.AirportID = r.Origin
GROUP BY ap.AirportCode
HAVING COUNT(r.RouteID)>2;