<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Solomiya
  Date: 04.09.2017
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UKRAINE-SHOP</title>
    <!-- Jquery-->
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <!-- script-->
    <script src="/javascript/jcarousellite_1.0.1.js"></script>
    <!-- CSS-->
    <link rel="stylesheet" href="/style/style.css">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>

</head>

<body>
<div class="block-body">
    <div class="block-header">
        <div class="header-top-block">
            <ul class="header-top-menu">
            <ul class="header-top-menu">
                <!-- СИЛКИ-->

                <a href="/index"><li><span>UKRAINE-SHOP</span></li></a>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/listProducts">List Products</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/addProduct">Add product</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/listUsers">List Users</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/news">News</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li> <a href="/admin/addNews">Add News</a></li></sec:authorize>
                <%-- <li><a href="">Про нас</a></li>
                 <li><a href="">Магазини</a></li>
                 <li><a href="">Контакти</a></li>--%>
            </ul>
            <p id="reg-auth-title" align="right">


                <%-- <a href="/toLogin" class="top-auth">Вхід</a>--%>
                <a href="/logout" class="top-auth">Вихід</a>
                <%-- <a  id="top-auth2" href="/reg">Реєстрація </a>--%>

            </p>
        </div>
        <div class="top-line"></div>
        <img class="img-logo" src="/image/images.jpg">
        <%--<div id="personal-info">
            <p align="right" >Дзвінок безкоштовний</p>
            <h3 align="right">(044) 100-12-34</h3>
            <img src="/image/images.png">
            <p align="right">Режим роботи</p>
            <p align="right">Будні дні з 9:00 по 20:00</p>
            <p align="right">Субота, неділя - вихідні</p>
            <img src="/image/im.jpg">
        </div>--%>
        <%--<div id="block-search">
            <!-- додати дію по пошуку товару
            урок 5 (2:00) search-->
            <form method="GET" action="search.g">
                <input type="text" id="input-search" name="g" placeholder="Search"/>
                <input type="submit" id="botton-search"  value="Search"/>

            </form>
        </div>--%>
    </div>
   <%-- <div id="top-menu">
        <ul>
            <li><img src="/image/shop.png"><a href="">Топ</a></li>
            <li><img src="/image/new-32.png"><a href="">Новинки</a></li>
            <li><img src="/image/bestprice-32.png"><a href="">Лідери продаж</a></li>
            <li><img src="/image/sale-32.png"><a href="">Розпродажа</a></li>
        </ul>
        <p align="right" id="block-basket"><img src="/image/cart-icon.png"><a href="/cart">Корзина</a></p>
        <div id="nav-line"></div>
    </div>--%>
