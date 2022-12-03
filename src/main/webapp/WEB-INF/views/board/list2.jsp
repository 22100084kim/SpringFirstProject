<%--
  Created by IntelliJ IDEA.
  User: 은지
  Date: 2022-12-02
  Time: 오전 1:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img src="img/tree.jpg" width="300" />
<h1>${title}</h1>
<c:forEach var="name" items="${classList}" varStatus="status">
    <p>${status.count} : ${name}</p>
</c:forEach>
</body>
</html>
