-- 7. Aumente o salário do funcionário que ganha menos do que todos os outros. O aumento deve ser de 500.
UPDATE EMPREGADO
SET SALARIO = SALARIO + 500
WHERE SALARIO = (
    SELECT MIN(SALARIO)
    FROM EMPREGADO);