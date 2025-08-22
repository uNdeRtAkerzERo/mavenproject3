# Sử dụng base image có sẵn Maven và JDK 17
FROM maven:3.8.5-openjdk-17

# Thiết lập thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file pom.xml để Maven tải các dependencies
COPY pom.xml .

# Chạy lệnh Maven để tải dependencies
RUN mvn dependency:go-offline

# Sao chép toàn bộ mã nguồn của dự án vào container
COPY src ./src

# Đóng gói ứng dụng Java thành một file .jar
RUN mvn package

# Lệnh để chạy ứng dụng của bạn
CMD ["java", "-jar", "target/your-app-name.jar"]