-- 9. Dê um aumento de salário de 1000 para o funcionário que tem o maior número de dependentes.
UPDATE EMPREGADO
SET SALARIO = SALARIO + 1000
WHERE CPF IN (
    SELECT EMP_CPF
    FROM DEPENDENTE
    GROUP BY EMP_CPF
    HAVING COUNT(*) = (
        SELECT MAX(quant)
        FROM (
            SELECT COUNT(*) AS quant
            FROM DEPENDENTE
            GROUP BY EMP_CPF)));