-- Adicionar a coluna SITUACAO na tabela EMPREGADOS, atualizando a mesma para “A” de ATIVO, para todos os funcionários, e após atualize para “D” de DESLIGADO os empregados 105, 107, 163 e 165, por fim, liste todos os funcionários “A” ATIVOS.


ALTER TABLE EMPREGADOS ADD COLUMN SITUACAO VARCHAR(1);

UPDATE
    EMPREGADOS
SET
    SITUACAO = 'A'
    ;

UPDATE
    EMPREGADOS
SET
    SITUACAO = 'D'
WHERE
       EMPREGADO_ID = 105
    or EMPREGADO_ID = 107
    or EMPREGADO_ID = 163
    or EMPREGADO_ID = 165
    ;


SELECT
    *
FROM
    EMPREGADOS
WHERE
    SITUACAO = 'A'
    ;
