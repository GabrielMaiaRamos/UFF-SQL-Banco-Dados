-- 3. Use COUNT() para calcular quantos aviões de cada tipo a companhia possui. Retorne AircraftName e o número de aeronaves de cada tipo, mostrando 0 para tipos sem aeronaves.
SELECT at.AircraftName, COUNT(a.AircraftID)
FROM aircrafttype at LEFT JOIN aircraft a ON a.AircraftTypeID = at.AircraftTypeID
GROUP BY at.AircraftName;