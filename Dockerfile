# Imagen base de Node
FROM node:18

# Carpeta de trabajo en el contenedor
WORKDIR /app

# Copiar dependencias
COPY package*.json ./
RUN npm install

# Copiar código de la app
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
