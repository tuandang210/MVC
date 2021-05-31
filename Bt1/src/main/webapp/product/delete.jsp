<%--
  Created by IntelliJ IDEA.
  User: 233linhnam
  Date: 5/31/2021
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<h1>Delete product</h1>
<%--<p>--%>
<%--    <c:if test='${requestScope["message"]!=null}'>--%>
<%--        <span class="message">${requestScope["message"]}</span>--%>
<%--    </c:if>--%>
<%--</p>--%>
<form method="post">
<p>Click below button to confirm</p>
<button type="submit">Delete product</button>
<p>If you change your mind, click link below</p>
<p>
    <a href="/products">Back to product list</a>
</p>
</form>
</body>
</html>
