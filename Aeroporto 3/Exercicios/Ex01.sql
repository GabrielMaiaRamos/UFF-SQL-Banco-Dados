-- 1. Faça uma consulta que retorna as rotas (RouteID, Origin, Destination) que possuem como origem o aeroporto LHR ou o aeroporto AMS. Use o comando de JOIN apropriado.
SELECT r.RouteID, r.Origin, r.Destination
FROM route r INNER JOIN airport a ON r.Origin = a.AirportID
WHERE a.AirportCode = 'LHR' OR
	a.AirportCode = 'AMS';