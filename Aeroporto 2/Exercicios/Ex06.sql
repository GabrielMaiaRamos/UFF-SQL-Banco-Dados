-- 6. Faça uma consulta que retorne todos os voos (número do voo e nome da aeronave) que operam num avião da Airbus (tabela aircrafttype).
SELECT f.FlightID, at.AircraftName
FROM flight f, aircraft a, aircrafttype at
WHERE at.AircraftName LIKE 'Airbus%' AND
	f.AircraftID = a.AircraftID AND
	a.AircraftTypeID = at.AircraftTypeID;