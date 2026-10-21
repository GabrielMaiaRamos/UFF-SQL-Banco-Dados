-- 8. A funcionária Jennifer foi demitida. Apague a tupla correspondente do banco de dados. Os funcionários que ela gerenciava devem agora ser gerenciados pelo funcionário Ramesh.
UPDATE EMPREGADO
SET CPF_SUPERVISOR = (
    SELECT CPF
    FROM EMPREGADO
    WHERE NOME = 'Ramesh')
WHERE CPF_SUPERVISOR = (
    SELECT CPF
    FROM EMPREGADO
    WHERE NOME = 'Jennifer');

DELETE FROM EMPREGADO
WHERE NOME = 'Jennifer';