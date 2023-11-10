#Imagen
FROM mysql
#Variable de entorno para setear la passwd
ENV MYSQL_ROOT_PASSWORD=secret
#Expongo el puerto del contenedor
EXPOSE 3306
