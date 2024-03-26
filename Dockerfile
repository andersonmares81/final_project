# Usa una imagen base de Node.js para el backend
FROM node:lts-alpine AS backend

# Establece el directorio de trabajo para el backend
WORKDIR /app/backend

# Copia el package.json y el package-lock.json del backend
COPY backend/package*.json ./

# Instala las dependencias del backend
RUN npm install

# Copia el resto de los archivos del backend
COPY backend .

# Construye el backend
RUN npm run build

# Crea un comando HEALTHCHECK para verificar la salud del servicio
HEALTHCHECK CMD npm run healthcheck

# Usa una imagen base de MariaDB
FROM mariadb:latest AS db

# Establece las variables de entorno para la creación de la base de datos
ENV MYSQL_ROOT_PASSWORD=example
ENV MYSQL_DATABASE=peaku

# Copia los scripts SQL para la creación de la base de datos y carga de datos
COPY db-scripts/ /docker-entrypoint-initdb.d/

# Usa otra imagen base de Node.js para el frontend
FROM node:lts-alpine AS frontend

# Establece el directorio de trabajo para el frontend
WORKDIR /app/frontend

# Copia el package.json y el package-lock.json del frontend
COPY frontend/package*.json ./

# Instala las dependencias del frontend
RUN npm install

# Copia el archivo de salida final del frontend
COPY frontend/build/app.js .

# Usa una imagen base de Nginx para el servidor web
FROM nginx:latest

# Copia el archivo JavaScript del frontend en el servidor Nginx
COPY --from=frontend /app/frontend/app.js /usr/share/nginx/html

# Copia la configuración personalizada de Nginx
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]