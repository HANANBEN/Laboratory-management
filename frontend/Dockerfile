# Utiliser Node.js 18
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le projet
COPY . .

# Exposer le port utilisé par Angular
EXPOSE 4200

# Lancer le serveur Angular
CMD ["npm", "start"]
