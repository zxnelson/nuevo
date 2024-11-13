# Usa la imagen base con Java 11
FROM amazoncorretto:11-alpine-jdk

# Copia el archivo JAR generado por Maven al contenedor
COPY target/HealthcareManagement-Backend-0.0.1-SNAPSHOT.jar app.jar

# Expon el puerto en el que se ejecutará la aplicación (Railway suele configurarlo automáticamente)
EXPOSE 8080

# Comando de inicio
ENTRYPOINT ["java", "-jar", "/app.jar"]
