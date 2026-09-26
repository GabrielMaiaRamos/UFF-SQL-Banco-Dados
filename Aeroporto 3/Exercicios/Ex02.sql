-- 2. Repita a consulta anterior, agora usando UNION para produzir a resposta.
SELECT r.RouteID, r.Origin, r.Destination
FROM route r INNER JOIN airport a ON r.Origin = a.AirportID
WHERE a.AirportCode = 'LHR'
UNION
SELECT r.RouteID, r.Origin, r.Destination
FROM route r INNER JOIN airport a ON r.Origin = a.AirportID
WHERE a.AirportCode = 'AMS';