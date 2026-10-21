-- 6. Alterar para 0 o RouteStatus de todas as rotas que partem do aeroporto ORY (AirportCode).
UPDATE route
SET RouteStatus = 0
WHERE Origin IN (SELECT AirportID
                 FROM airport
                 WHERE AirportCode = 'ORY');