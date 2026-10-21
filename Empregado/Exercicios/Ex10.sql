-- 10. Altere o sobrenome dos dependentes do empregado John para 'Smith-Oneal'.
UPDATE DEPENDENTE
SET sobrenome = 'Smith-Oneal'
WHERE emp_cpf = (SELECT e.cpf
               	 FROM EMPREGADO e
                 WHERE e.nome = 'John');