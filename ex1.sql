-- Selecionar todos os EMPREGADOS (primeiro e último nome) juntamente com o nome do gerente, que tenham como gerente a “Karen Partners”, relacionando a tabela empregados com ela mesma.

SELECT
    empregado.PRIMEIRO_NOME, empregado.ULTIMO_NOME, gerente.PRIMEIRO_NOME AS 'NOME DO GERENTE', gerente.ULTIMO_NOME AS 'SOBRENOME'
FROM
    EMPREGADOS as empregado,
    EMPREGADOS as gerente
WHERE
    empregado.GERENTE_ID = 146 AND empregado.GERENTE_ID = gerente.EMPREGADO_ID
    
;
