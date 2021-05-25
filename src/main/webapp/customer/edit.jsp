<%--
  Created by IntelliJ IDEA.
  User: TruongDubai
  Date: 5/25/2021
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
<c:if test='${requestScope["message"] != null}' >
    <span class="message" > ${requestScope["message"]}</span>
</c:if>
</p>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<form action="" method="post">
    <fieldset>
    <legend> Customer information</legend>
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update customer"></td>
        </tr>
    </table>
    </fieldset>
</form>
</body>
</html>
