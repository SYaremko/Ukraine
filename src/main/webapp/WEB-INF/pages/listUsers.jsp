<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_admin_.jsp"%>

<table>
<c:forEach items="${usersAll}" var="users">
    <tr>
       ${success}
        <td>${users.firstName}</td>
        <td>${users.username}</td>
        <td>${users.email}</td>
        <td><a href="/admin/edit-${users.id}"><button>edit</button></a> </td>
        <td><a href="/admin/delete-${users.id}"><button>delete</button></a> </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
