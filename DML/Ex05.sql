-- 5. Alterar o ID do voo 535, passando para 915. Esta operação deve acusar erro devido às restrições de integridade.
PRAGMA foreign_keys = ON;
UPDATE flight
SET FlightID = 915
WHERE FlightID = 535;