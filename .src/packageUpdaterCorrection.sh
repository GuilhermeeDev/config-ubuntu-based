#!/bin/bash

echo "Executando script de correção do package updater..."

sudo autoclean
sudo autoremove
sudo rm -rf /var/lib/dpkg/info/*
sudo rm -f /var/lib/dpkg/lock*
sudo rm -f /var/lib/apt/lists/lock
sudo rm -f /var/cache/apt/archives/lock
sudo apt update && sudo apt install -f

echo "Correção do package updater concluída!"
echo "Reinicie o sistema e rode `sudo apt update && sudo apt upgrade` novamente."