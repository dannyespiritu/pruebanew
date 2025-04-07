# Usar una imagen base de OpenJDK
FROM openjdk:17-jdk-slim as build

# Setear el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado en el contenedor
COPY target/app.jar /app/app.jar

# Exponer el puerto que va a usar la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación Java
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
