-- 4. Faça uma consulta que retorna o nome do empregado que mais trabalha em projetos (maior número de horas).
SELECT e.NOME
FROM EMPREGADO e
JOIN TRABALHA_EM t ON t.CPF = e.CPF
GROUP BY e.CPF, e.NOME
HAVING SUM(t.HORAS) = (
      SELECT MAX(total_horas)
      FROM (
            SELECT SUM(HORAS) AS total_horas
            FROM TRABALHA_EM
            GROUP BY CPF));