# Usa una imagen base de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos package.json y package-lock.json a /app
COPY package*.json ./

# Instala las dependencias del servidor
RUN npm install

# Copia todo el contenido del directorio actual al directorio /app en el contenedor
COPY . .

# Expone el puerto 7000 en el contenedor
EXPOSE 80

# Comando para iniciar la aplicación
CMD ["node", "index.js"]






