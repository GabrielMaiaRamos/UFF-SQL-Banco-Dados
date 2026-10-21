-- 5. Atualize a tabela de Projetos, transferindo todos os projetos do departamento 1 para o departamento 6.
UPDATE PROJETO
SET COD_DEPTO = 6
WHERE COD_DEPTO = 1;