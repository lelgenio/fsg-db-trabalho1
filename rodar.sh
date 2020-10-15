#!/bin/bash

# Parar se der erro
set -e

CMD="mariadb -h34.95.201.6 -P3306 -ulelgenio -ppuredebatata DB_LEUGENIO"

rodaSQL(){
    echo ==== $i ====
    $CMD -v < ex$i.sql | tee ex$i.out
}

echo ==== carregando dump ====
$CMD -v < dump.sql
echo ==== dump carregado  ====
for i in $(seq 1 10)
do
    rodaSQL $i
done

