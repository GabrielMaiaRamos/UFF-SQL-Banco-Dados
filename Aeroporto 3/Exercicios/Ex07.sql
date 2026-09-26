-- 7. Faça uma consulta que retorna o número do vôo e o nome do passageiro que reservou o vôo (tabela pax). O número do vôo deve aparecer no resultado mesmo se não houver nenhuma reserva para ele. A resposta deve estar ordenada pelo número do vôo e pelo nome do passageiro.
SELECT f.FlightID, p.PaxName
FROM flight f LEFT OUTER JOIN pax p ON f.FlightID = p.FlightID
ORDER BY f.FlightID, p.PaxName;