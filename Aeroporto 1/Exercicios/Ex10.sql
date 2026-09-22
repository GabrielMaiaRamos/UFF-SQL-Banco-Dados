-- Faça uma consulta que retorne o número de registro das aeronaves do tipo (AircraftTypeID) 617 e 50.
SELECT RegNum
FROM aircraft
WHERE AirCraftTypeID = 617 OR AirCraftTypeID = 503
