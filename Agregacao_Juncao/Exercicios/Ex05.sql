-- 5. Faça uma consulta que retorne, nesta ordem, RouteID, os códigos dos aeroportos de origem e destino (FromAirport e ToAirport), FlightID, DepTime e DepDay.
SELECT r.RouteID, ap1.AirportCode as FromAirport, ap2.AirportCode AS ToAirport, fd.FlightID, fd.DepTime, fd.DepDay
FROM route r INNER JOIN airport ap1 ON r.Origin = ap1.AirportID 
			INNER JOIN airport ap2 ON r.Destination = ap2.AirportID
            INNER JOIN flight f ON r.RouteID = f.RouteID
            INNER JOIN flightdep fd ON fd.FlightID = f.FlightID;