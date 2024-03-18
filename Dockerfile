FROM: amazoncorreto:21

WORKDIR /app

COPY build.gradle settings.gradle gradlew /app/
COPY gradle /app/gradle

RUN ./gradlew --version

COPY . /app

RUN ./gradlew build

CMD ["java","-jar","build/libs/message.jar"]
