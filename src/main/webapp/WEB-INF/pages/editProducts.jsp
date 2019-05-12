<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include/header_admin_.jsp"%>


<sf:form  modelAttribute="editProduct" method="POST" id="registration_form">
    <span>title </span>
    <sf:textarea class="input_style" type="text" path="title" placeholder="title"/>

    <span>price</span>
    <sf:input class="input_style" type="text" path="price" placeholder="price"/>

    <span>mini_description</span>
    <sf:textarea class="input_style" type="text" path="mini_description" placeholder="mini_description"/>

    <span>mini_features</span>
    <sf:textarea class="input_style" type="text" path="mini_features" placeholder="mini_features"/>

    <span>picture</span>
    <sf:input class="input_style" type="file" path="picture" placeholder="picture"/>



    <span>visible</span>
    <sf:select size="0" type="text" path="visible" id="locked">
        <option selected>1</option>
        <option>0</option>
    </sf:select>

    <input type="submit" value="Update"/>

    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</sf:form>
<%@include file="include/footer_.jsp"%>
</body>
</html>
