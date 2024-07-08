#!/bin/bash

# Docker und Docker-Compose entfernen
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io
sudo rm /usr/local/bin/docker-compose

# Snap-Pakete entfernen
sudo snap remove docker

# Entfernen der Docker-Verzeichnisse
sudo rm -rf /var/lib/docker
sudo rm -rf /etc/docker
sudo rm -rf /var/run/docker.sock
sudo rm /etc/systemd/system/docker.service
sudo rm /etc/systemd/system/docker.socket

# Entfernen der Netzwerkeinstellungen (falls vorhanden)
sudo ip link delete docker0

# Entfernen der PID-Dateien und temporären Dateien
sudo rm /var/run/docker.pid

# System neu starten
sudo reboot
