-- Atualizar o salário de todos os EMPREGADOS que tem a função de PROGRAMADO, acrescendo 15% ao salário atual.
USE DB_LEUGENIO;

UPDATE
    EMPREGADOS
SET
    EMPREGADOS.SALARIO = EMPREGADOS.SALARIO * 1.15
WHERE
    EMPREGADOS.FUNCAO_ID = 'IT_PROG'
    ;

