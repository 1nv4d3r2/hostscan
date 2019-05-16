#!/bin/bash
if [ "$1" == "" ]
then
echo "SCAN DE HOSTS: ESTE SCRIPT IRA PROCURAR POR HOSTS ATIVOS NA REDE"
echo "Exemplo de uso: $0 192.168.0"
else
for host in {1..254};do
ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$/  Host ativo (up)/'
done
fi 
