<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<script>
    function delete_ok(id){
    var a = confirm("정말로 삭제하겠습니까?");
    if(a) location.href='deleteok/' + id;
}</script>
<head>
<body>

<h1>자유게시판</h1>
<table id="list" width="90%">
    <tr>
        <th>ID</th>
        <th>Category</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td> ${u.getSeq()}</td>
            <td> ${u.getCategory()}</td>
            <td> ${u.getTitle()}</td>
            <td> ${u.getWriter()}</td>
            <td> ${u.getContent()}</td>
            <td> ${u.getRegdate()}</td>
            <td><a href="editform/${u.getSeq()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</head>

</html>