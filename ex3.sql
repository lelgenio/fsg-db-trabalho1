# Exercicio 3


SELECT * FROM DEPARTAMENTOS;
select * FROM FUNCOES;
select * FROM FUNCAO_HISTORICO;
select * FROM EMPREGADOS;

SELECT * FROM EMPREGADOS WHERE EMPREGADOS.DEPARTAMENTO_ID = '210';

update EMPREGADOS SET EMPREGADOS.DEPARTAMENTO_ID ='210' WHERE EMPREGADOS.EMPREGADO_ID = '107';

DELETE FROM DEPARTAMENTOS WHERE DEPARTAMENTOS.DEPARTAMENTO_ID = '60';

