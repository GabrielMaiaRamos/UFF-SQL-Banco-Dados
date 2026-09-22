-- 3. Faça uma consulta que retorna as rotas que possuem como origem (Origin) o aeroporto LHR. A consulta deve retornar o ID da rota e a duração.
SELECT r.RouteID, r.Duration
FROM airport a, route r
WHERE a.AirportCode = 'LHR'
	AND r.Origin = a.AirportID