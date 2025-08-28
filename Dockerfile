# Sử dụng Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Xóa tất cả ứng dụng cũ trong webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file Email.war từ thư mục dist vào Tomcat, đặt tên ROOT.war để chạy ở context /
COPY dist/Email.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
