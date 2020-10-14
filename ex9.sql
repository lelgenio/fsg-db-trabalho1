-- O Departamento Financeiro foi transferido para Toronto, ajustar no banco de dados.
USE DB_LEUGENIO;

UPDATE DEPARTAMENTOS
SET LOCAL_ID = (
    SELECT LOCAL_ID
    FROM LOCAIS WHERE
        CIDADE like '%Toronto%'
)
WHERE
    DEPARTAMENTO_NOME like '%Financeiro%'
    ;

SELECT
    DEPARTAMENTO_NOME, LOCAIS.CIDADE
FROM
    DEPARTAMENTOS, LOCAIS
WHERE
    DEPARTAMENTO_NOME like '%Financeiro%'
    and
    DEPARTAMENTOS.LOCAL_ID = LOCAIS.LOCAL_ID
    ;
