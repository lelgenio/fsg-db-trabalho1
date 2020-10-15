 -- Acrescentar um EMPREGADO novo, ele é o Pablo Escobar, com e-mail PESCOBAR, telefone 516699998888, Data de contratação 15/08/2007, Função Gerente de Logistica (Criar função com salários entre 10000 e 12000), Salario atual dele 10945, sem comissão e seu gerente é o Presidente da empresa, trabalhando no departamento de Logistica (criar departamento), que está localizado na COLOMBIA, Na av. Calle 116, cep 93882, Bogotá, sem estado.

-- PAIS
INSERT IGNORE INTO PAISES
    (PAIS_ID, PAIS_NOME, REGIAO_ID)
VALUES
    ('CO', 'COLOMBIA', (
            SELECT REGIAO_ID
            FROM REGIOES
            WHERE REGIAO_NAME LIKE '%america%'
    ))
    ;

-- LOCAL
INSERT IGNORE INTO LOCAIS
    (LOCAL_ID,RUA,CEP,CIDADE,PAIS_ID)
VALUES
    (4000, "av. Calle 116", "93882", "Bogotá", (
            SELECT REGIAO_ID
            FROM REGIOES
            WHERE REGIAO_NAME LIKE '%COLOMBIA%'
    ))
    ;

-- FUNCAO GERENTE DE LOGISTICA
INSERT IGNORE INTO FUNCOES
    (FUNCAO_NOME, MIN_SALARIO, MAX_SALARIO)
VALUES
    ("Gerente de Logistica", 10000, 12000)
    ;

-- DEPARTAMENTO LOGISTICA
INSERT IGNORE INTO DEPARTAMENTOS
    (DEPARTAMENTO_NOME, GERENTE_ID, LOCAL_ID)
VALUES
    ("Logistica", NULL ,(
        SELECT LOCAL_ID
        FROM LOCAIS
        WHERE CIDADE LIKE '%Bogotá%'
    )
)
;

-- FUNCIONARIO PABLO
INSERT IGNORE INTO EMPREGADOS
(
    PRIMEIRO_NOME,
    ULTIMO_NOME,
    EMAIL,
    TELEFONE,
    DATA_CONTRATACAO,
    FUNCAO_ID,
    SALARIO,
    PCT_COMISSAO,
    GERENTE_ID,
    DEPARTAMENTO_ID,
    SITUACAO
)
VALUES
(
    'Pablo',
    'Escobar',
    'PESCOBAR',
    516699998888,
    '15/08/2007',
    (
        SELECT FUNCAO_ID
        FROM FUNCOES
        WHERE FUNCAO_NOME LIKE '%GERENTE DE LOGISTICA%'
    ),
    10945,
    NULL,
    (
        SELECT EMPREGADO_ID
        FROM EMPREGADOS
        WHERE FUNCAO_ID = 'AD_PRES'
    ),
    (
        SELECT DEPARTAMENTO_ID
        FROM DEPARTAMENTOS
        WHERE DEPARTAMENTO_NOME like "Logistica"
    ),
    'A'
)
;

-- DEFINE O PABLO COMO GERENTE
UPDATE DEPARTAMENTOS
SET GERENTE_ID = (
    SELECT EMPREGADO_ID
    FROM EMPREGADOS
    WHERE PRIMEIRO_NOME LIKE '%Pablo%'
    AND   ULTIMO_NOME   LIKE '%Escobar%'
)
WHERE
    DEPARTAMENTO_NOME like "%Logistica%"
;
