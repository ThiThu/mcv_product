<%--
  Created by IntelliJ IDEA.
  User: Microsoft Windows
  Date: 12/03/2019
  Time: 11:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Title: </td>
                <td><input type="text" name="title" id="title" value="${requestScope["product"].getTitle()}"></td>
            </tr>
            <tr>
                <td>Author: </td>
                <td><input type="text" name="author" id="author" value="${requestScope["product"].getAuthor()}"></td>
            </tr>
            <tr>
                <td>Summary: </td>
                <td><input type="text" name="summary" id="summary" value="${requestScope["product"].getSummary}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
