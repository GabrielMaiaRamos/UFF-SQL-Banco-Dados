-- 3. Apague os dependentes do empregado chamado Franklin.
PRAGMA foreign_keys = ON;
DELETE FROM DEPENDENTE d
WHERE (d.emp_cpf = (SELECT emp_cpf
                    FROM EMPREGADO
                    WHERE nome = 'Franklin'));