-- 1. Faça uma consulta que mostre o número de vôos por rota, mesmo que tal rota não possua vôos. A saída deverá possuir as colunas RouteID e Quant.
SELECT r.RouteID, COUNT(f.FlightID)
FROM route r LEFT JOIN flight f ON r.RouteID = f.RouteID
GROUP BY r.RouteID;