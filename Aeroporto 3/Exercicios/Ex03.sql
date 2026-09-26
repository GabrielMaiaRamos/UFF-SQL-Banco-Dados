-- 3. Faça uma consulta que retorna o código dos aeroportos de origem e destino de cada rota. A consulta deve retornar o código da rota, o código do aeroporto origem (renomeado para Origem) e o código do aeroporto destino (coluna AirportCode) renomeado como Destino. O retorno deve estar ordenado pelo código do aeroporto de origem e logo após, pelo código do aeroporto de destino. Use o comando de JOIN apropriado.
SELECT r.RouteID, a1.AirportCode AS Origem, a2.AirportCode AS Destino
FROM route r 
        INNER JOIN airport a1 ON r.Origin = a1.AirportID
        INNER JOIN airport a2 ON r.Destination = a2.AirportID
ORDER BY a1.AirportCode, a2.AirportCode