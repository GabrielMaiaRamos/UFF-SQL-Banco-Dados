-- 4. Faça uma consulta que retorne todas as informações de vôo (flight) e os horários de partida desse vôo (tabela flightdep). Use o operador de junção apropriado. O resultado deve estar ordenado por FlightID.
SELECT f.*, fd.DepTime
FROM flight f INNER JOIN flightdep fd ON f.FlightID = fd.FlightID
ORDER BY f.FlightID