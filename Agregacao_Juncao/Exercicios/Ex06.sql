-- 6. Faça uma consulta que selecione o FlightID de voos que não operam no domingo (DepDay = 1 na tabela flightdep). O retorno deve estar ordenado por FlightID.
SELECT f.FlightID
FROM flight f
WHERE NOT EXISTS (SELECT *
                  FROM flightdep fd
                  WHERE f.FlightID = fd.FlightID AND
                  		fd.DepDay = 1
                 )
ORDER BY f.FlightID;