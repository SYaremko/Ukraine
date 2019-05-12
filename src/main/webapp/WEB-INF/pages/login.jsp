<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="include/header_login_reg_.jsp"%>

<%--   <c:forEach items="${sucesful}" var="user">
   ${user.username}
   </c:forEach>--%>


   <form class="form-3" action="/login" method="post">
       ${success}
       <p class="clearfix">
           <label for="login">Login</label>
           <input type="text" name="username" id="login" placeholder="Login">
       </p>

       <p class="clearfix">
           <label for="password">Password</label>
           <input type="password" name="password" id="password" placeholder="Password" >

       </p>

       <%--<p class="clearfix">
           <input type="checkbox" name="remember" id="remember">
           <label for="remember">Remember me</label>
       </p>--%>
       <p class="clearfix">
           <input type="submit" name="submit" value="Sign in">

       </p>

       <input type="hidden"
              name="${_csrf.parameterName}"
              value="${_csrf.token}"/>
       </ul>
   </form>

<script src="/javascript/LoginRegistration.js"></script>
<%--<fieldset>
<form action="/login" method="post" id="login_form">
    <div><input type="text" name="username"></div>
    <div><input type="password" name="password"></div>
    <div> <input type="submit"></div>
    <h3>${error}</h3>
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form></fieldset>--%>
</body>
</html>
