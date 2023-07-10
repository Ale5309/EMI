#!/bin/bash

# Limpiar archivos temporales en Arch Linux

# Limpiar caché de pacman
sudo paccache -r
sudo paccache -ruk0

# Limpiar caché de paquetes de AUR (yay)
yay -Sc --noconfirm
paru -Sc --noconform
# Limpiar caché de paquetes de AUR (trizen)
trizen -Scc --clean

# Limpiar caché de paquetes de AUR (yay/trizen)
rm -rf ~/.cache/yay
rm -rf ~/.cache/trizen
rm -rf ~/.cache/paru


# Limpiar caché de thumbnails
rm -rf ~/.cache/thumbnails/*

# Limpiar caché de fuentes
sudo fc-cache -f -v

# Limpiar archivos temporales de usuario
rm -rf ~/.cache/*
rm -rf ~/.local/share/Trash/*

# Limpiar archivos temporales de sistema
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

echo "Archivos temporales eliminados."

