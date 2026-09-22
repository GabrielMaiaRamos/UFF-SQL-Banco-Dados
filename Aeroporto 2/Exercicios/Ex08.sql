-- 8. Repita a consulta anterior, mas agora retornando o AirportCode ao invés do AirportID. Os nomes das colunas do código do aeroporto devem ser Origem e Destino, respectivamente. O resultado deve estar ordenado pelo nome do passageiro.
SELECT p.PaxName, p.FlightDate, a1.AirportCode, a2.AirportCode
FROM pax p, flight f, route r, airport a1, airport a2
WHERE
	p.FlightID = f.FlightID AND
    f.RouteID = r.RouteID AND
    a1.AirportID = r.Origin AND
    a2.AirportID = r.Destination
ORDER BY p.PaxName