#!/bin/bash

function repos_oficiais(){
    sudo add-apt-repository main -y
    sudo add-apt-repository universe -y
    sudo add-apt-repository multiverse -y
    sudo add-apt-repository restricted -y
    sudo apt update -y
}

function repos_unoficiais(){
    sudo add-apt-repository ppa:deadsnakes/ppa -y
    sudo add-apt-repository ppa:graphics-drivers/ppa -y
    sudo add-apt-repository ppa:libreoffice/ppa -y
    sudo add-apt-repository ppa:obsproject/obs-studio -y
    sudo add-apt-repository ppa:ondrej/php -y
    sudo apt update -y
}

sudo apt update && sudo apt upgrade

repos_oficiais
repos_unoficiais
sudo apt upgrade

sudo apt install build-essential linux-headers-generic mesa-vulkan-drivers net-tools network-manager neofetch openssh-client fzf rar unrar zip unzip htop wget curl git git-lfs make cmake ffmpeg vlc gimp python3.10 python3-pip python3.10-venv

cd ..
mkdir Apps