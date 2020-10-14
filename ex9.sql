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

-- +-------------------+---------+
-- | DEPARTAMENTO_NOME | CIDADE  |
-- +-------------------+---------+
-- | Financeiro        | Toronto |
-- +-------------------+---------+
-- 1 row in set (0.033 sec)
