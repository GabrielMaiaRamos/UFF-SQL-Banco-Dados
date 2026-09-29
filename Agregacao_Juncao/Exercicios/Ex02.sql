-- 2. Faça uma consulta SQL que mostre os tipos de aeronaves que não possuem aeronaves registradas no banco. Retorne AircraftID da tabela aircraft com valores nulos e AircraftName da tabela aircrafttype.
SELECT a.AircraftID, at.AircraftName
FROM aircrafttype at LEFT JOIN aircraft a ON a.AircraftTypeID = at.AircraftTypeID
WHERE a.AircraftID IS NULL;