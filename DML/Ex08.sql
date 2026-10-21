-- 8. Excluir as informações da tabela stats para o voo 876 do dia '2009-04-01'.
DELETE FROM stats
WHERE FlightID = 876
    AND FlightDate = '2009-04-01';