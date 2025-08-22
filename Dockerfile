# Sử dụng một base image của Java
FROM openjdk:17-jdk-slim

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file pom.xml để tải dependencies
COPY pom.xml .

# Chạy Maven để tải dependencies
RUN mvn dependency:go-offline

# Sao chép toàn bộ source code của dự án vào container
COPY src ./src

# Đóng gói ứng dụng Java thành một file .jar
RUN mvn package

# Lệnh để chạy ứng dụng của bạn
CMD ["java", "-jar", "target/your-app-name.jar"]
