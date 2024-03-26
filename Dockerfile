# Usa una imagen base de Node.js para el backend
FROM node:latest AS backend

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

# Usa otra imagen base de Node.js para el frontend
FROM node:latest AS frontend

# Establece el directorio de trabajo para el frontend
WORKDIR /app/frontend

# Copia el package.json y el package-lock.json del frontend
COPY frontend/package*.json ./

# Instala las dependencias del frontend
RUN npm install

# Copia el resto de los archivos del frontend
COPY frontend .

# Construye el frontend
RUN npm run build

# Usa una imagen base de Nginx para el servidor web
FROM nginx:latest

# Copia los archivos del frontend construidos en el servidor Nginx
COPY --from=frontend /app/frontend/build /usr/share/nginx/html

# Copia la configuración personalizada de Nginx
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
