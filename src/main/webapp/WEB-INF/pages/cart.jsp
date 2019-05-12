<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="include/header.jsp"%>




    <table >
        <tr>
            <th>Picture</th>
            <th>Title</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Option</th>
            <%--<th>Sub Total</th>--%>
        </tr>

        <c:forEach items="${carts}" var="cart">
        <tr>
            <td> <img class="image-list" src="${cart.products.picture}"></td>
            <td>${cart.products.title}</td>
            <td><b>${cart.products.price}</b>грн</td>
            <td>${cart.count}</td>
            <td><a href="/deleteCart-${cart.id}"><%--<button>delete</button>--%>Delete</a> </td>
           <%-- <td>${cart.products.price * cart.quantity}</td>--%>
        </tr> </c:forEach>

    </table>

    <%--<div id="block-content">
        <c:forEach items="${carts}" var="cart">

            <div> ${cart.id} </div>
            <div>

            </div>
            <div> ${cart.products.title} </div>
            <div> ${cart.count} </div>

        </c:forEach>
    </div>--%>

    <%@include file="include/footer_.jsp"%>

</div>

<%@include file="include/JSfile_.jsp"%>

</body>
</html>
