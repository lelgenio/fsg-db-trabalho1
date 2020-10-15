-- Adicionar 3 novos países (PARAGUAI, CHILE, VENEZUELA)

select * FROM PAISES;

INSERT IGNORE INTO PAISES values ('PR', 'Paraguai', '2');
INSERT IGNORE INTO PAISES values ('CL', 'Chile', '2');
INSERT IGNORE INTO PAISES values ('VE', 'Venezuela', '2');

select * FROM PAISES;
