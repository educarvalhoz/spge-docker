FROM payara/server-full:6.2024.6

# Copiar seu arquivo WAR para o diretório de implantação do Payara
COPY target/SPGE.war $DEPLOY_DIR

# Expor a porta que o Payara usa
EXPOSE 8080

# Configuração para se conectar ao MySQL
ENV MYSQL_HOST=${MYSQL_HOST}
ENV MYSQL_PORT=${MYSQL_PORT}
ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}

# Comando para iniciar o Payara Server quando o contêiner for executado
CMD ["start-domain", "--verbose"]