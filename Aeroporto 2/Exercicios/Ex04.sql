-- 4. Faça uma consulta que retorna o código dos aeroportos de origem (Origin) e destino (Destination) de cada rota. A consulta deve retornar o ID da rota, o código do aeroporto origem e o código do aeroporto destino (coluna AirportCode). O retorno deve estar ordenado pelo código do aeroporto de origem e, logo após, pelo código do aeroporto de destino.
SELECT r.RouteID, a1.AirportCode, a2.AirportCode
FROM airport a1, airport a2, route r
WHERE
	a1.AirportID = r.Origin AND
    a2.AirportID = r.Destination
ORDER BY a1.AirportCode, a2.AirportCode;