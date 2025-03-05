FROM httpd:2.4

# Supprime index.html pour ne pas avoir de page d'accueil et donc afficher le server de fichier directement.
RUN rm /usr/local/apache2/htdocs/index.html 

# Je copie les fichiers du site web
COPY . /usr/local/apache2/htdocs/

# J'espose les ports 80 et 443
EXPOSE 80

RUN rm /usr/local/apache2/htdocs/Dockerfile
