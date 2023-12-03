# Utiliser une image de base officielle Node.js
FROM node:20.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le fichier 'package.json' et 'package-lock.json' (si disponible) dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier les fichiers et dossiers restants de l'application dans le répertoire de travail
COPY . .

# Exposer le port sur lequel l'application va s'exécuter
EXPOSE 3000

# Définir la commande pour démarrer l'application
CMD [ "node", "app.js" ]
