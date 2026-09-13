<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 style="color:red; text-align:center;">Festival Details</h1>

<table border="1" align="center" cellpadding="8" cellspacing="0">
    <tr>
        <th>Pass ID</th>
        <td>${fs.passId}</td>
    </tr>
    <tr>
        <th>Visitor Name</th>
        <td>${fs.visitorName}</td>
    </tr>
    <tr>
        <th>Nationality</th>
        <td>${fs.nationality}</td>
    </tr>
    <tr>
        <th>Festival Category</th>
        <td>${fs.festivalCategory}</td>
    </tr>
    <tr>
        <th>Pass Type</th>
        <td>${fs.passType}</td>
    </tr>
    <tr>
        <th>Visiting Days</th>
        <td>${fs.visitingDays}</td>
    </tr>
    <tr>
        <th>Email</th>
        <td>${fs.email}</td>
    </tr>
</table>