<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Festival Registration Form</title>
</head>
<body>

  --><h1 style="color:red;text-align:center"> 
Festival Registration Form
</h1>

<form action="register" method="post">

<table align="center" border="1" bgcolor="cyan" cellpadding="8">

<tr>
    <td>Pass ID</td>
    <td><input type="number" name="passId"></td>
</tr>

<tr>
    <td>Visitor Name</td>
    <td><input type="text" name="visitorName"></td>
</tr>

<tr>
    <td>Nationality</td>
    <td><input type="text" name="nationality"></td>
</tr>

<tr>
    <td>Festival Category</td>
    <td>
        <input type="text" name="festivalCategory">
    </td>
</tr>

<tr>
    <td>Pass Type</td>
    <td>
        <input type="text" name="passType">
    </td>
</tr>

<tr>
    <td>Visiting Days</td>
    <td>
        <input type="number" name="visitingDays">
    </td>
</tr>

<tr>
    <td>Email</td>
    <td>
        <input type="email" name="email">
    </td>
</tr>

<tr>
    <td colspan="2" align="center">
        <input type="submit" value="Register">
        <input type="reset" value="Reset">
    </td>
</tr>

</table>

</form>

</body>
</html>