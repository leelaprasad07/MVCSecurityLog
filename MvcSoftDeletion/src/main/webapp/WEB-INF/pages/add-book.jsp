<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial,sans-serif;
}

body{
    background:#111;
    color:white;
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:100vh;
}

.container{
    width:450px;
    background:#1f1f1f;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px black;
}

h2{
    text-align:center;
    margin-bottom:25px;
    color:#00e676;
}

label{
    display:block;
    margin-top:15px;
    margin-bottom:5px;
    font-weight:bold;
}

input,
select{
    width:100%;
    padding:10px;
    border:none;
    border-radius:5px;
    background:#333;
    color:white;
}

input:focus,
select:focus{
    outline:none;
    border:2px solid #00e676;
}

.error{
    color:red;
    font-size:14px;
    margin-top:3px;
}

.btn{
    width:100%;
    margin-top:25px;
    padding:12px;
    border:none;
    border-radius:5px;
    background:#00c853;
    color:white;
    font-size:17px;
    cursor:pointer;
}

.btn:hover{
    background:#009624;
}

.back{
    display:block;
    margin-top:20px;
    text-align:center;
    color:#00e676;
    text-decoration:none;
    font-weight:bold;
}

.back:hover{
    text-decoration:underline;
}

</style>

</head>

<body>

<div class="container">

<h2>Add Book</h2>

<form:form
        action="${pageContext.request.contextPath}/books/save"
        method="post"
        modelAttribute="book">

<label>Title</label>
<form:input path="title"/>
<form:errors path="title" cssClass="error"/>

<label>Author</label>
<form:input path="author"/>
<form:errors path="author" cssClass="error"/>

<label>Category</label>
<form:input path="category"/>
<form:errors path="category" cssClass="error"/>

<label>Price</label>
<form:input path="price" type="number" step="0.01"/>
<form:errors path="price" cssClass="error"/>

<label>Availability</label>

<form:select path="available">

    <form:option value="">-- Select Availability --</form:option>

    <form:option value="true">
        Available
    </form:option>

    <form:option value="false">
        Not Available
    </form:option>

</form:select>

<form:errors path="available" cssClass="error"/>

<input type="submit" value="Save Book" class="btn"/>

</form:form>

<a class="back"
href="${pageContext.request.contextPath}/books">
Back to Book List
</a>

</div>

</body>
</html>