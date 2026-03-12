FROM httpd:2.4

# Supprime le contenu par défaut d'Apache
RUN rm -rf /usr/local/apache2/htdocs/*

# Copie l'application dans Apache
COPY app/ /usr/local/apache2/htdocs/

# Expose le port web
EXPOSE 80