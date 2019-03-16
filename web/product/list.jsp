<%@ page import="com.codegym.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.codegym.service.ProductServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 11/03/2019
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/product?action=create">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>title</td>
        <td>author</td>
        <td>summary</td>
    </tr>
    <c:forEach items='${requestScope["product"]}' var="product">
        <tr>
            <td><a href="/product?action=id=${product.getId()}">${product.getTitle()}</a></td>
            <td>${product.getAuthor()}</td>
            <td>${product.getSummary()}</td>
            <td><a href="/product?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
