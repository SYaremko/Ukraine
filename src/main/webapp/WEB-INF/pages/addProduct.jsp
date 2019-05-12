<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="include/header_admin_.jsp"%>
<%--modelAttribute="editProduct"--%>
<sec:authorize access="hasRole('ADMIN')">
    <div id="addProduct">
<sf:form class="admin_1" action="/admin/newProduct" method="post" enctype="multipart/form-data" >

    <div id="addTitle">
        <label for="title">Title</label>
        <textarea rows="1" cols="55" type="text" name="title" id="title"></textarea>
    </div>

    <div id="addPrice">
        <label for="price">Price</label>
        <input type="text" name="price" id="price">
    </div>

    <div class="mini-features">
        <label for="mini_description">Mini Description</label>
        <textarea rows="5" cols="55" type="text" name="mini_description" id="mini_description"></textarea>
    </div>

    <div class="mini-features">
        <label for="mini_features">Mini Features</label>
        <textarea rows="5" cols="55" type="text" name="mini_features" id="mini_features"></textarea>
    </div>

    <div class="addList">
        <label for="visible">Visible</label>
        <select size="0" type="text" name="visible" id="visible">
            <option selected>0</option>
            <option>1</option>
        </select>
    </div>


    <div id="addFile">
        <label for="picture">Picture</label>
        <input type="file" name="picture" id="picture">
    </div>

    <div class="submits">
        <input type="submit" name="submit" value="Create">
    </div>


    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>

</sf:form></div>
    <%--<%@include file="include/right.jsp"%>--%>
    <%@include file="include/JSfile_.jsp"%>
    <%@include file="include/footer_.jsp"%>
</body>
</html></sec:authorize>
