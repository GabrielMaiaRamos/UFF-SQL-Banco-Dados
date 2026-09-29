-- 7. Faça uma consulta que selecione o nome do aeroporto de origem (FromAirport), o nome do aeroporto de destino (ToAirport) e o nome da classe do vôo que tem o preço base mais barato (BasePrice da tabela flightclass).
SELECT ap1.AirportName AS FromAirport, ap2.AirportName AS ToAirport, c.ClassName
FROM route r INNER JOIN airport ap1 ON r.Origin = ap1.AirportID
			 INNER JOIN airport ap2 ON r.Destination = ap2.AirportID
             INNER JOIN flight f ON r.RouteID = f.RouteID
             INNER JOIN flightclass fc ON fc.FlightID = f.FlightID
             INNER JOIN class c ON fc.ClassID = c.ClassID
WHERE fc.BasePrice = (SELECT MIN(fc2.BasePrice)
                      FROM flightclass fc2
                      WHERE f.FlightID = fc2.FlightID
                      );