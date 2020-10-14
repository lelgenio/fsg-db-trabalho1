-- Selecionar todos os EMPREGADOS (primeiro e último nome) juntamente com o nome do gerente, que tenham como gerente a “Karen Partners”, relacionando a tabela empregados com ela mesma.

SELECT * FROM EMPREGADOS;

SELECT
    PRIMEIRO_NOME, ULTIMO_NOME, GERENTE_ID
FROM
    EMPREGADOS
WHERE
    GERENTE_ID = 146
    ;
