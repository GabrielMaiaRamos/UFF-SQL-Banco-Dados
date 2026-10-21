-- 3. Atualizar CurrSeats, somando 2, da tabela stats para o voo 652, de '2009-01-20', classe 3.
UPDATE stats
SET CurrSeats = CurrSeats + 2
WHERE FlightID = 652
    AND FlightDate = '2009-01-20'
    AND ClassID = 3;