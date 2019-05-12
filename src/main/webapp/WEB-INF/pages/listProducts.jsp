<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_admin_.jsp"%>

<table>
    <c:forEach items="${productsAll}" var="products">
        <tr>
            <td>${products.title}</td>
            <td>${products.price}</td>
            <td>${products.mini_description}</td>
            <td>${products.mini_features}</td>
            <td>${products.picture}</td>
            <td>${products.visible}</td>


            <td><a href="/admin/editProducts-${products.id}"><button>edit</button></a> </td>
            <td><a href="/admin/deleteProducts-${products.id}"><button>delete</button></a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
