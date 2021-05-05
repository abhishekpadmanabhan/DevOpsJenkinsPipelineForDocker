FROM java:8
COPY src/main/java/hello/HelloWorld.java /var/www/java
COPY src/main/java/hello/Greeter.java /var/www/java
WORKDIR /var/www/java
RUN javac HelloWorld.java
RUN javac Greeter.java
CMD ["java", "HelloWorld"]
