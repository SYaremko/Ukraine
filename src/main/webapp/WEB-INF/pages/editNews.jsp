<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_admin_.jsp"%>

<sf:form  modelAttribute="editNews" method="POST" id="registration_form">

    <span>name</span>
    <sf:input class="input_style" type="text" path="name" placeholder="name"/>

    <span>descriptions</span>
    <sf:input class="input_style" type="text" path="descriptions" placeholder="description"/>

    <span>date</span>
    <sf:input class="input_style" type="text" path="date" placeholder="date"/>

    <input type="submit" value="Update"/>

    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>

</sf:form>
<%@include file="include/footer_.jsp"%>
</body>
</html>

