#!/bin/bash
# Atualizar repositorios
sudo apt-get update -qq
# Se dependencias do ansible nao estiverem instaladas, instalar
dpkg -l \
 | grep -qw software-properties-common \
 || sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -qq software-properties-common
dpkg -l \
 | grep -qw python-software-properties \
 || sudo DEBIAN_FRONTEND=noninteractive apt-get install -y -qq python-software-properties
