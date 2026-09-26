-- 6. Faça uma consulta que retorna os dados dos vôos para os quais existe alguma reserva (tabela pax). Use o comando JOIN.
SELECT DISTINCT f.*
FROM flight f INNER JOIN pax p ON f.FlightID = p.FlightID;