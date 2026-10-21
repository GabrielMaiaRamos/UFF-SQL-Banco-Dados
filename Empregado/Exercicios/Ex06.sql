-- 6. Aumente o salário dos empregados do departamento de Pesquisa em 20%.
UPDATE EMPREGADO
SET SALARIO = SALARIO * 1.2
WHERE COD_DEPTO = (
    SELECT COD_DEPTO
    FROM DEPARTAMENTO
    WHERE NOME = 'Pesquisa');