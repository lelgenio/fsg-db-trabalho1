
-- O EMPREGADO Mauro Andre, passou a ser gerente do departamento 210       Suport de TI, ajustar nas tabelas de departamentos e empregados que trabalham neste departamento.


UPDATE DEPARTAMENTOS
SET GERENTE_ID = (
    SELECT EMPREGADO_ID
    FROM EMPREGADOS
    WHERE
        PRIMEIRO_NOME   like '%Mauro%'
        and ULTIMO_NOME like '%Andre%'
)
WHERE
    DEPARTAMENTO_ID = 210
    ;


UPDATE EMPREGADOS
SET GERENTE_ID = (
    SELECT GERENTE_ID
    FROM DEPARTAMENTOS
    WHERE
        DEPARTAMENTO_ID = 210
)
WHERE
    DEPARTAMENTO_ID = 210
    ;


