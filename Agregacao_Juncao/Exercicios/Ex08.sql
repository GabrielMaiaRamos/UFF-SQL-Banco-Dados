-- 8. Faça uma consulta que selecione o nome do aeroporto de origem (FromAirport), o nome do aeroporto de destino (ToAirport), a data de partida (FlightDate) e o nome da classe do vôo que tem o preço atual mais caro (CurrPrice da tabela stats).
SELECT ap1.AirportName AS FromAirport, ap2.AirportName AS ToAirport, s.FlightDate, c.ClassName
FROm route r INNER JOIN airport ap1 ON r.Origin = ap1.AirportID
			 INNER JOIN airport ap2 ON r.Destination = ap2.AirportID
             INNER JOIN flight f ON r.RouteID = f.RouteID
             INNER JOIN stats s ON s.FlightID = f.FlightID
             INNER JOIN class c ON s.ClassID = c.ClassID
WHERE s.CurrPrice = (SELECT MAX(s2.CurrPrice)
                     FROM stats s2
                     WHERE s2.FlightID = s.FlightID
                       AND s2.FlightDate = s.FlightDate);