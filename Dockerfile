# Sử dụng Tomcat 9 với JDK 17 (Eclipse Temurin)
FROM tomcat:9.0-jdk17-temurin

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn (build xong sẽ tạo ra file .war trong repo)
# Nếu file war có tên khác thì sửa lại cho đúng
COPY ch12_ex1_sqlGateway_war.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080 cho Render
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]
