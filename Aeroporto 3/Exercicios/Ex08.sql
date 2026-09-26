-- 8. Faça uma consulta que retorne o FlightID dos vôos para os quais não existe reserva (use EXCEPT).
SELECT f.FlightID
FROM flight f
EXCEPT
SELECT p.FlightID
FROM pax p