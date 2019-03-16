
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Title: </td>
                <td>${requestScope["product"].getTitle()}</td>
            </tr>
            <tr>
                <td>Author: </td>
                <td>${requestScope["product"].getAuthor()}</td>
            </tr>
            <tr>
                <td>Summary: </td>
                <td>${requestScope["product"].getSummary()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/product">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

