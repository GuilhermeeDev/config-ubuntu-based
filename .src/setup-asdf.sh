#!/bin/bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.15.0
echo . "$HOME/.asdf/asdf.sh" | tee -a ~/.bashrc
echo . "$HOME/.asdf/completions/asdf.bash" | tee -a ~/.bashrc

# --- Instalando Plugins do ASDF - Java, NodeJS, Ruby, Python, PHP, Elixir, Golang, Rust, Crystal --- 

# Dependencias para NodeJS
sudo apt install -y python3 g++-12 gcc-12 python3-pip 
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

# Dependencias para Erlang
sudo apt install -y install build-essential autoconf m4 libwxgtk3.2-dev libwxgtk-webview3.2-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git


# Nao possui dependencias extras
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf plugin-add rust https://github.com/asdf-community/asdf-rust.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin add crystal https://github.com/asdf-community/asdf-crystal.git
asdf plugin-add php https://github.com/asdf-community/asdf-php.git
asdf plugin add python https://github.com/asdf-community/asdf-python.git
asdf plugin add bun

echo -p "Instalar versões realeses padrão do Script? (S/N)"; read op
op=$(echo "$op" | tr '[:upper:]' '[:lower:]')

if [[ $op == "sim" || $op == "s" ]]; then
    echo "Instalando versões latest dos plugins ASDF..."
    asdf install nodejs latest
    asdf install erlang latest
    asdf install elixir latest
    asdf install golang latest
    asdf install java latest
    asdf install rust latest
    asdf install ruby latest
    asdf install crystal latest
    asdf install php latest
    asdf install python latest
    asdf install bun latest

    echo "Configurando versões globais dos plugins ASDF..."
    asdf global bun latest
    asdf global python latest
    asdf global php latest
    asdf global ruby latest
    asdf global rust latest
    asdf global java latest
    asdf global golang latest
    asdf global elixir latest
    asdf global erlang latest
    asdf global nodejs latest
    asdf global crystal latest
fi 