-- 9. Faça uma consulta que retorna o número do voo, o código do aeroporto de destino do voo (AirportCode) e a quantidade máxima de assentos (MaxSeats) da classe 3 (ClassID), ordenado de forma decrescente pela quantidade máxima de assentos.
SELECT f.FlightID, a.AirportCode, fc.MaxSeats
FROM flight f, route r, airport a, class c, flightclass fc
WHERE c.ClassID = '3' AND
	r.RouteID = f.RouteID AND
	fc.FlightID = f.FlightID AND
    fc.ClassID = c.ClassID AND
    r.Destination = a.AirportID
ORDER BY fc.MaxSeats DESC;