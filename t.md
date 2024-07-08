# Benutzer zur Docker-Gruppe hinzufügen
sudo usermod -aG docker your_username

# Wechsle zur Docker-Gruppe
newgrp docker

# Überprüfen, ob der Benutzer in der Docker-Gruppe ist
groups your_username

# Setze die Berechtigungen des Docker-Sockets
sudo chmod 666 /var/run/docker.sock

# Starte den Docker-Dienst neu (Snap-spezifisch)
sudo systemctl restart snap.docker.dockerd.service

# Überprüfe Docker-Installation
docker run hello-world

# Erzwingen des Stoppens und Entfernens aller Container
sudo docker stop $(sudo docker ps -aq) --force
sudo docker rm $(sudo docker ps -aq) --force
