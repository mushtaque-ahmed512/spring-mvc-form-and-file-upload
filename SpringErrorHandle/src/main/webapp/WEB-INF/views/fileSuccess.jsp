<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Uploading</title>
</head>
<body>

<h1>${message}</h1>

<img alt="image profile"
     src="<c:url value='/resources/image/${filename}'/>"
     width="300px" />

</body>
</html>