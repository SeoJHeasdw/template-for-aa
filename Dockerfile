# 베이스 이미지 설정
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

# 작업 디렉토리 생성
WORKDIR /app

# JAR 파일을 컨테이너로 복사
COPY target/*.jar app.jar

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]