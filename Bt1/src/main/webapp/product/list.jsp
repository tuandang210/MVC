<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/31/2021
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product list</title>
    <style>
       td{
           width: 50px;
       }
    </style>
</head>
<body>
<h1>Products</h1>
<p><a href="products?action=create">Create new product</a></p>
<p><a href="products?action=find">Find product by name</a></p>
<table  border="1px" style="text-align: center">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Note</td>
        <td>Producer</td>
<td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td>${product.getId()}</td>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a> </td>
            <td>${product.getPrice()}</td>
            <td>${product.getNote()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
