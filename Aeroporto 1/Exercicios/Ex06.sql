-- Faça uma consulta que retorne o código e nome dos aeroportos da Espanha (CountryCode = 'ES').
SELECT AirportCode, AirportName
FROM airport
WHERE CountryCode = 'ES'