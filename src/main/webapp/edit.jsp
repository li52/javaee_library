<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑图书</title>
</head>
<body>
<c:if test="${sessionScope.role ne '管理员'}">
    <c:redirect url="default.jsp"/>

</c:if>
<h1>编辑图书</h1>
${sessionScope.username}
<p><a href="user?action=logout">注销</a></p>
<hr>
<form action="book" method="post">
    <input type="hidden" name="action" value="modify">
    <input type="hidden" name="id" value="${sessionScope.book.id}" >
    <input type="text" name="title" placeholder="书名" value="${sessionScope.book.title}">
    <input type="text" name="author" placeholder="作者" value="${sessionScope.book.author}">
    <input type="text" name="pub" placeholder="出版社" value="${sessionScope.book.pub}">
    <input type="date" name="time" placeholder="出版时间" value="${sessionScope.time}">
    <input type="text" name="price" placeholder="定价" value="${sessionScope.book.price}">
    <input type="text" name="amount" placeholder="数量" value="${sessionScope.book.amount}">
    <input type="submit" value="保存">

</form>

</body>
</html>
