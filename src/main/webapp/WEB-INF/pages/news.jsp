<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Solomiya
  Date: 05.09.2017
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_admin_.jsp"%>


<table border="1">
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Date</th>
        <%--<th>Edit</th>--%>
        <th>Delete</th>
        <%--<th>Sub Total</th>--%>
    </tr>

    <c:forEach items="${news}" var="news">
        <tr>
            <td>${news.title}</td>
            <td>${news.name}</td>
            <td>${news.descriptions}</td>

            <%--<td><a href="/admin/editNews-${news.id}"><button>edit</button></a> </td>--%>
            <td><a href="/admin/deleteNews-${news.id}"><button>delete</button></a> </td>
        </tr> </c:forEach>

</table>
</body>
</html>
