<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/31/2021
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" id="name" value="${requestScope["customers"].getName()}"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" id="email" value="${requestScope["customers"].getEmail()}"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" id="address" value="${requestScope["customers"].getAddress()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Delete customer</button></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
