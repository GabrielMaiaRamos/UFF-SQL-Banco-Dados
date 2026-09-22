-- 7. Faça uma consulta que retorna o nome do passageiro, a data do voo (FlightDate), e o AirportID da Origem e Destino dos voos de cada passageiro. Os nomes das colunas do ID do aeroporto devem ser Origem e Destino, respectivamente.
SELECT p.paxname, p.FlightDate, r.Origin, r.Destination
FROM pax p, flight f, route r
WHERE
	p.FlightID = f.FlightID AND
    f.RouteID = r.RouteID