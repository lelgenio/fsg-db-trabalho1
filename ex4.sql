-- Selecionar todos os funcionários que estão com o salário fora da faixa da sua função (MIN_SALARIO, MAX_SALARIO), listar o primeiro e último nome, matricula e salario.

SELECT
    PRIMEIRO_NOME AS 'NOME', ULTIMO_NOME AS 'SOBRENOME', SALARIO, EMPREGADO_ID AS 'MATRICULA'
FROM
    FUNCOES, EMPREGADOS
WHERE
    EMPREGADOS.FUNCAO_ID = FUNCOES.FUNCAO_ID
    and (EMPREGADOS.SALARIO >= FUNCOES.MAX_SALARIO
    OR EMPREGADOS.SALARIO <= FUNCOES.MIN_SALARIO)
    ;

