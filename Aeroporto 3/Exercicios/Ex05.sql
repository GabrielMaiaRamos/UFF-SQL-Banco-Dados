-- 5. Faça uma consulta que retorna os vôos (FlightID) e os IDs das classes que esse vôo opera. Caso um vôo não tenha registro de classe, mesmo assim ele deve aparecer no resultado.
SELECT f.FlightID
FROM flight f LEFT OUTER JOIN flightclass fc ON f.FlightID = fc.FlightID