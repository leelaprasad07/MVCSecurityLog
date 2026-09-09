<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Books</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,Helvetica,sans-serif;
}

body{
    background:#111;
    color:white;
}

.container{
    width:90%;
    margin:30px auto;
}

h1{
    text-align:center;
    color:#ff9800;
    margin-bottom:25px;
}

.top{
    margin-bottom:20px;
}

.back{
    text-decoration:none;
    color:white;
    background:#00c853;
    padding:10px 18px;
    border-radius:5px;
    font-weight:bold;
}

.back:hover{
    opacity:.8;
}

table{
    width:100%;
    border-collapse:collapse;
    background:#1f1f1f;
}

th{
    background:#000;
    color:#ff9800;
}

th,td{
    border:1px solid #555;
    padding:12px;
    text-align:center;
}

tr:nth-child(even){
    background:#2c2c2c;
}

tr:hover{
    background:#3b3b3b;
}

.restore{
    background:#ff9800;
    color:white;
    text-decoration:none;
    padding:7px 15px;
    border-radius:5px;
}

.delete{
    background:red;
    color:white;
    text-decoration:none;
    padding:7px 15px;
    border-radius:5px;
}

.restore:hover,
.delete:hover{
    opacity:.8;
}

.empty{
    text-align:center;
    color:#ccc;
    font-weight:bold;
}

</style>

</head>
<body>

<div class="container">

<h1>DELETED BOOKS</h1>

<div class="top">

<a class="back"
href="${pageContext.request.contextPath}/books">
Back To Active Books
</a>

</div>

<table>

<tr>
<th>ID</th>
<th>Title</th>
<th>Author</th>
<th>Category</th>
<th>Restore</th>
<th>Permanent Delete</th>
</tr>

<c:forEach var="book" items="${books}">

<tr>

<td>${book.id}</td>
<td>${book.title}</td>
<td>${book.author}</td>
<td>${book.category}</td>

<td>

<a class="restore"
href="${pageContext.request.contextPath}/books/restore/${book.id}">
Restore
</a>

</td>

<td>

<a class="delete"
href="${pageContext.request.contextPath}/books/permanent-delete/${book.id}"
onclick="return confirm('Are you sure you want to permanently delete this book?')">
Delete
</a>

</td>

</tr>

</c:forEach>

<c:if test="${empty books}">
<tr>
<td colspan="6" class="empty">
No Deleted Books Found
</td>
</tr>
</c:if>

</table>

</div>

</body>
</html>