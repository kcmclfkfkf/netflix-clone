#!/data/data/com.termux/files/usr/bin/bash

# Actualizar paquetes
pkg update -y && pkg upgrade -y

# Instalar Node.js, git y unzip
pkg install -y nodejs git unzip wget

# Descargar el proyecto (si no se ha subido desde el dispositivo)
wget https://chat.openai.com/mnt/data/netflix-clone.zip -O netflix-clone.zip

# Descomprimir y entrar al proyecto
unzip -o netflix-clone.zip -d netflix-clone
cd netflix-clone

# Instalar dependencias
npm install

# Ejecutar la app (puedes cambiar el puerto si está ocupado)
echo -e "\nTodo listo. Ejecuta 'npm run dev' para iniciar tu clon de Netflix."
