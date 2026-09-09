<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
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
    color:#00e676;
    margin-bottom:25px;
}

.top{
    display:flex;
    justify-content:space-between;
    margin-bottom:20px;
}

.btn{
    text-decoration:none;
    color:white;
    padding:10px 18px;
    border-radius:5px;
    font-weight:bold;
}

.add{
    background:#28a745;
}

.trash{
    background:#dc3545;
}

.add:hover,
.trash:hover{
    opacity:.8;
}

table{
    width:100%;
    border-collapse:collapse;
    background:#1f1f1f;
}

th{
    background:#000;
    color:#00e676;
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

.edit{
    background:#007bff;
    color:white;
    padding:7px 14px;
    text-decoration:none;
    border-radius:4px;
}

.delete{
    background:red;
    color:white;
    padding:7px 14px;
    text-decoration:none;
    border-radius:4px;
}

.edit:hover,
.delete:hover{
    opacity:.8;
}
</style>

</head>
<body>

<div class="container">

<h1>ACTIVE BOOKS</h1>

<div class="top">

<a href="${pageContext.request.contextPath}/books/add"
class="btn add">
Add Book
</a>

<a href="${pageContext.request.contextPath}/books/trash"
class="btn trash">
Trash
</a>

</div>

<table>

<tr>
<th>ID</th>
<th>Title</th>
<th>Author</th>
<th>Category</th>
<th>Price</th>
<th>Availability</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<c:forEach var="book" items="${books}">

<tr>

<td>${book.id}</td>
<td>${book.title}</td>
<td>${book.author}</td>
<td>${book.category}</td>
<td>${book.price}</td>

<td>

<c:choose>

<c:when test="${book.available}">
Available
</c:when>

<c:otherwise>
Not Available
</c:otherwise>

</c:choose>

</td>

<td>

<a class="edit"
href="${pageContext.request.contextPath}/books/edit/${book.id}">
Edit
</a>

</td>

<td>

<a class="delete"
href="${pageContext.request.contextPath}/books/delete/${book.id}"
onclick="return confirm('Are you sure you want to delete this book?')">
Delete
</a>

</td>

</tr>

</c:forEach>

<c:if test="${empty books}">
<tr>
<td colspan="8">No Books Available</td>
</tr>
</c:if>

</table>

</div>

</body>
</html>