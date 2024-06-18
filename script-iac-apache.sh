#!/bin/bash

echo "Atualizando o servidor ."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Entra diretorio"
cd /tmp

echo "Baixa arquivos do git"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o zip"
unzip main.zip
cd linux-site-dio-main

echo "Copiando os arquivos pro diretorio do Apache"
cp -R * /var/www/html/

