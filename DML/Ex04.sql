-- 4. Atualizar CurrSeats, somando 5, e CurrPrice, aumentando em 20%, da tabela stats para o voo 652, de '2009-01-20', classe 2.
UPDATE stats
SET CurrSeats = CurrSeats + 5,
    CurrPrice = CurrPrice * 1.20
WHERE FlightID = 652
    AND FlightDate = '2009-01-20'
    AND ClassID = 2;