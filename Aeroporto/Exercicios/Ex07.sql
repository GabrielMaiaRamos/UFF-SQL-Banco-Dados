-- Faça uma consulta que retorne os dias (DepDay) e horários (DepTime) de partida do voo 896.
SELECT DepDay, DepTime
FROM flightdep
WHERE flightID = 896