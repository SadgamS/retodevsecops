FROM node:20

# Crea un directorio de trabajo
WORKDIR /app

# Copia los archivos de tu aplicación al contenedor
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de tu aplicación al contenedor
COPY . .

# Expone el puerto en el que tu aplicación escucha
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]