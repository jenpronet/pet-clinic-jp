# ─────────────────────────────────────────────────────────────────────────────
# Imagen base: eclipse-temurin:11-jre
# Nota: esta imagen (JRE 11) es escaneada por Trivy en el paso Image Security.
# ─────────────────────────────────────────────────────────────────────────────
FROM eclipse-temurin:11-jre

EXPOSE 8085

# El JAR se construye previamente con: ./mvnw package -DskipTests
# y queda en target/spring-petclinic-2.6.0-SNAPSHOT.jar
COPY target/spring-petclinic-*.jar /app/spring-petclinic.jar

WORKDIR /app

CMD ["java", "-jar", "spring-petclinic.jar"]
