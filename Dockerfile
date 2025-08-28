# Tomcat 9 chạy bằng JDK 17 (phù hợp với class Java 17)
FROM tomcat:9.0-jdk17

# Xóa các ứng dụng mặc định trong webapps (ROOT, docs, examples, host-manager, manager)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã build vào Tomcat, đổi tên thành ROOT.war để chạy trực tiếp ở /
COPY dist/Email.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
