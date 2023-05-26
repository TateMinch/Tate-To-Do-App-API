ARG BASE_IMAGE
FROM $BASE_IMAGE

ARG ARTIFACT_NAME
ENV ARTIFACT_NAME=${ARTIFACT_NAME}.jar

COPY /target/${ARTIFACT_NAME} /opt/

ENTRYPOINT ["java", "-jar", "/opt/todo-app-0.0.1-SNAPSHOT.jar"]

