<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_admin_.jsp"%>

<sf:form  modelAttribute="editUser" method="POST" id="registration_form">
    <span>First Name </span>
    <sf:input class="input_style" type="text" path="firstName" placeholder="First Name"/>

    <span>Login </span>
    <sf:input class="input_style" type="text" path="username" placeholder="Login"/>

    <span>Email </span>
    <sf:input class="input_style" type="text" path="email" placeholder="Email"/>

    <span>Password </span>
    <sf:input class="input_style" type="password" path="password" placeholder="Passwordl"/>

    <span>Account Non Locked </span>
    <sf:select size="0" type="text" path="accountNonLocked" id="locked">
    <option selected>1</option>
    <option>0</option>
    </sf:select>

    <input type="submit" value="Update"/>

    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</sf:form>

</body>
</html>
