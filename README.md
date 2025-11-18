# Simple Web Page for IBM WebSphere Training

This is a minimal Java web application (WAR) intended for hands-on WebSphere training. It demonstrates:
- A static landing page (index.html)
- A simple servlet that accepts a name and returns a greeting

Quick files:
- src/main/webapp/index.html
- src/main/java/com/example/HelloServlet.java
- src/main/webapp/WEB-INF/web.xml
- pom.xml (Maven build)

Requirements
- JDK 8 or newer
- Maven
- IBM WebSphere Application Server (Traditional) or WebSphere Liberty

Build
1. From the project root run:
   mvn clean package

2. The WAR file will be generated at:
   target/simple-webpage.war

Deploy (WebSphere Liberty)
- Copy `target/simple-webpage.war` into the Liberty `dropins/` or `apps/` directory, or configure the server.xml to include the application. Start Liberty.
- Default URL: http://localhost:9080/simple-webpage/index.html

Deploy (WebSphere Application Server - Traditional)
- Use the Administrative Console or the wsadmin tool to install/deploy `target/simple-webpage.war`.
- After deployment check the context root you chose; example: http://localhost:9080/simple-webpage/index.html

Test
- Open the index page in a browser and submit your name.
- Or use curl:
  curl -X POST -d "name=Suresh" http://localhost:9080/simple-webpage/hello

Notes
- The servlet uses `javax.servlet-api` with scope `provided` so the server's servlet API is used.
- If your WebSphere uses Jakarta packages (javax → jakarta), you will need to adapt the imports and Maven dependency accordingly (Jakarta Servlet API).
- web.xml is minimal because the servlet is mapped using @WebServlet. If your environment does not scan annotations, enable the servlet mapping in web.xml by uncommenting the example.

If you'd like, I can:
- Convert this to a JSP-based example
- Provide a Liberty server.xml example for quick run
- Convert to Jakarta namespace if your WebSphere requires it