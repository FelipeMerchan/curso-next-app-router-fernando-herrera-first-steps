#Escoger una imagen para usarla como base de nuestra imagen
FROM node:18-alpine

#En la imagen de node tenemos el directorio /app
WORKDIR /app

#Copiar nuestro archivo package.json de nuestro proyecto hacia
# el working directory que creamos en la línea 5
COPY package.json /

# Reconstruir los modulos de node basados en el sistema operativo
# definido en la línea 2

RUN npm install

# Copiar todo el proyecto, a excepción de los archivos que estén
# en el .dockerignore, hacia el working directory. '.' es todo el proyecto
# y '/' es el working directory creado en la línea 5.
COPY . /

# Hacer el build de producción
RUN npm run build

# Exponer el puerto 3000 que es el que expone nuestra aplicación en desarrollo
# cuando trabajamos en localhost, por lo cual, queremos exponer este puerto
EXPOSE 3000

# Ejecutar el comando con el cual inicializamos nuestra aplicación
CMD ["npm", "start"]
