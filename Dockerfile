# Usa una imagen base de Node.js
FROM node:14-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto en el que corre la app
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
