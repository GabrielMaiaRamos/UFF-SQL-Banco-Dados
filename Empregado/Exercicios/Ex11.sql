-- 11. Insira uma nova localização para o departamento de Pesquisa. Primeiro, faça uma consulta para descobrir qual o código do departamento de Pesquisa. Depois insira a localização 'Stadord' para esse departamento.
INSERT INTO DEPTO_LOCALIZACOES
VALUES ((SELECT cod_depto
		FROM DEPARTAMENTO
		WHERE nome = 'Pesquisa'), 'Stadord');
