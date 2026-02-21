# spring-mvc-form-and-file-upload
Spring MVC project with form submission and file upload functionality.

📁 Project Structure Explanation
SpringErrorHandle/
│
├── pom.xml
├── .classpath
├── .project
├── src/
│   └── main/
│       ├── java/
│       │   └── SpringErrorHandle/
│       │       ├── Address.java
│       │       ├── Student.java
│       │       ├── FormController.java
│       │       └── FileUploadController.java
│       │
│       ├── resources/
│       │
│       └── webapp/
│           ├── index.jsp
│           └── WEB-INF/
│               ├── web.xml
│               ├── spring-servlet.xml
│               ├── views/
│               │   ├── complex_form.jsp
│               │   ├── success.jsp
│               │   ├── formfile.jsp
│               │   └── fileSuccess.jsp
│               └── resources/
│                   └── image/

🔹pom.xml (Very Important)
This is a Maven configuration file.
It contains:
Project dependencies (Spring MVC, Servlet API, etc.)
Build configuration

🔹src/main/java/
This contains your Java source code.
✅ Model Classes
📌 Student.java
POJO class
Contains student fields
Used for form data binding
📌 Address.java
Nested object inside Student
Demonstrates complex form binding
Project metadata (groupId, artifactId)
👉 This file tells Maven which libraries your project needs.

✅ Controller Classes
📌 FormController.java
Handles:
Showing form page
Processing form submission
Sending data to success.jsp
Uses:
@Controller
@RequestMapping
@ModelAttribute

📌 index.jsp
Your project home page.

🔹 web.xml
This is the deployment descriptor.
It:
Registers Spring DispatcherServlet
Maps servlet to URL pattern

🔹 spring-servlet.xml

Spring configuration file.
It:
Enables component scanning
Defines view resolver
Configures multipart resolver (for file upload)
Very important for Spring MVC.

🔹 views/

Contains JSP pages.

File	Purpose
complex_form.jsp--->	Complex form (Student + Address)
success.jsp-------->	Shows submitted form data
formfile.jsp------->	File upload form
fileSuccess.jsp-----> Shows upload result

🔹 resources/image/
Stores uploaded images.

Technologies Used
Java
Spring MVC
Maven
JSP
Servlet API
Apache Tomcat

Project Features
Student registration form
Nested object binding
File upload functionality
Success view rendering
Basic error handling




