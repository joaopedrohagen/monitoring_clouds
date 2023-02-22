#!/bin/bash

##################################################################
#----------------------------------------------------------------#
# Script Name: monitoring_clouds.sh                              #
#----------------------------------------------------------------#
# Description: Este script permite que você verifique se vários  #
# servidores estão ativos, sem ter que inseri-los um por um.     #                                             #
#----------------------------------------------------------------#
# Site: https://hagen.dev.br                                     #
#----------------------------------------------------------------#
# Author: João Pedro Hagen <joaopedro@hagen.dev.br>              #
# ---------------------------------------------------------------#
# History:                                                       #
#   V1.0.1 2022-12-11                                            #
#       -Initial release.                                        #
#----------------------------------------------------------------#
##################################################################

#Insira os IPs na variável "ips"

# Defina uma lista de IPs a serem monitorados
ips=("")

# Loop através da lista de IPs
for ip in "${ips[@]}"
do
  # Ping o endereço IP
  if ping -c 1 "$ip" &> /dev/null
  then
    # Se o ping for bem-sucedido, exiba uma mensagem de sucesso
    echo "$ip está ativo."
  else
    # Se o ping falhar, exiba uma mensagem de erro
    echo "$ip está inativo."
  fi
done
