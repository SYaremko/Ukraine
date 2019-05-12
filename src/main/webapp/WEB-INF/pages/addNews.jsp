
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="include/header_admin_.jsp"%>

<sec:authorize access="hasRole('ADMIN')">

    <input type="text" name="title" id="title">
    <input type="text" name="name" id="name">
    <input type="text" name="descriptions" id="descriptions">
    <div class="submits">
        <button id="save">save </button>
    </div>


    <%-- <%@include file="include/right.jsp"%>--%>
    <script src="/javascript/addNew.js"></script>
    </body>
    </html></sec:authorize>
