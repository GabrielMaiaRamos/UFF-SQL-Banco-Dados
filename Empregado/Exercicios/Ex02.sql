-- 2. Insira um departamento na tabela de departamentos. O departamento deve se chamar Finanças, ter código 7. Depois, atualize esse departamento para incluir a informação do gerente. O departamento deve ser gerenciado pelo empregado Franklin. Faça a atualização do CPF do gerente na tabela de departamento usando uma subconsulta na tabela de empregado. A data de início do gerente no departamento é '2024-11-05'.
PRAGMA foreign_keys = ON;
INSERT INTO DEPARTAMENTO VALUES (7, 'Financas', NULL, NULL);
UPDATE DEPARTAMENTO
set cpf_gerente = (SELECT CPF
                   FROM EMPREGADO
                   WHERE NOME = 'Franklin'),
	DATA_INICIO_GERENTE = '2024-11-05'
WHERE COD_DEPTO = 7;