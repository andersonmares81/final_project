# final_project
 
### Introducción:

###Este README proporciona instrucciones para ejecutar y configurar tu aplicación usando Docker.

### Requisitos previos:
```
Docker instalado en tu máquina.
Un editor de código.
```
### Pasos para ejecutar la aplicación:
### 1. Construye las imágenes:
```
docker build -t backend .
docker build -t frontend .
docker build -t db .
```
### 2. Inicia los contenedores:
```
docker run -d --name backend -p 4001:4001 backend
docker run -d --name frontend -p 8080:80 frontend
docker run -d --name db -e MYSQL_ROOT_PASSWORD=example -e MYSQL_DATABASE=peaku db
```
### 3. Verifica que la aplicación funcione:

###Abre un navegador web y ve a http://localhost:8080. Deberías ver la interfaz del frontend.
###Si necesitas acceder a la API del backend, puedes usar una herramienta como Postman para enviar solicitudes a la URL http://localhost:4001.