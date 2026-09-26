-- 9. Repita a consulta anterior, agora retornando, além do FlightID, o AirportCode de Origem e Destino dos vôos.
SELECT f.FlightID, a1.AirportCode AS Origem, a2.AirportCode as Destion
FROM flight f
	INNER JOIN route r ON f.RouteID = r.RouteID
    INNER JOIN airport a1 ON r.Origin = a1.AirportID
    INNER JOIN airport a2 ON r.Destination = a2.AirportID

EXCEPT

SELECT f.FlightID, a1.AirportCode AS Origem, a2.AirportCode AS Destino
FROM flight f 
	INNER JOIN pax p ON f.FlightID = p.FlightID
    INNER JOIN route r ON r.RouteID = f.RouteID
    INNER JOIN airport a1 ON a1.AirportID = f.FlightID
    INNER JOIN airport a2 ON a2.AirportID = f.FlightID
ORDER BY f.FlightID;