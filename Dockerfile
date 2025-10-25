# Usar imagem oficial do OpenJDK 21
FROM eclipse-temurin:21-jdk-alpine

# Diretório dentro do container
WORKDIR /app

# Copiar arquivos do Maven (cache eficiente)
COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn
RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline -B

# Copiar todo o projeto
COPY . .

# Build do projeto
RUN ./mvnw clean package -DskipTests

# Porta que a aplicação vai usar
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "target/orderms-0.0.1-SNAPSHOT.jar"]
