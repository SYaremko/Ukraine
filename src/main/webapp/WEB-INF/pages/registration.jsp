<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_login_reg_.jsp"%>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<!-- script-->

<sf:form action="/registration" modelAttribute="registUser" method="POST" id="registration_form">
    <span>First Name </span>* <sf:input class="input_style" type="text" path="firstName" placeholder="First Name"/>
    <div class="error"> <sf:errors path="firstName"/></div>

    <span>Login </span>* <sf:input class="input_style" type="text" path="username" placeholder="Login"/>
    <div class="error"> <sf:errors path="username"/></div>

    <span>Password </span>*<sf:input onkeyup="doAjax()" id="input_style" type="password" path="password" placeholder="Password"/>
    <div class="error"> <sf:errors path="password"/> <span style="float: right" id="strengthValue"></span> </div>


    <span>Password again </span>*<sf:input class="input_style" type="password" path="confirmPassword" placeholder="Password"/>
    <div class="error"> <sf:errors path="confirmPassword"/></div>

    <span>Email </span>*<sf:input class="input_style" type="email" path="email" placeholder="Email"/>
    <div class="error"> <sf:errors path="email"/></div>

    <input type="submit" value="Sign up">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</sf:form>


<%@include file="include/JSfile_.jsp"%>
</body>
</html>
