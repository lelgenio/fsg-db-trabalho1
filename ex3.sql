-- O departamento de TI deixou de existir, precisamos deletar o mesmo, mas antes, temos que transferir todos os funcionários alocados nele para o departamento SUPORTE DE TI (210), efetuar os updates e deletes necessários.

SELECT * FROM DEPARTAMENTOS;

UPDATE EMPREGADOS
SET EMPREGADOS.DEPARTAMENTO_ID ='210'
WHERE EMPREGADOS.EMPREGADO_ID = '107';

DELETE FROM DEPARTAMENTOS
WHERE DEPARTAMENTOS.DEPARTAMENTO_ID = '60';

SELECT * FROM DEPARTAMENTOS;
