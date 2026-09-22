-- 2. Faça uma consulta que retorna o código e nome dos aeroportos da Espanha (countryCode = 'ES'), ordenado pelo código do aeroporto.
SELECT a.AirportID, a.AirportName
FROM airport a
WHERE a.CountryCode = 'ES'
ORDER BY a.AirportID