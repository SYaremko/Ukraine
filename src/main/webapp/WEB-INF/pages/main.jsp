<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<%@include file="include/header_0_.jsp"%>--%>


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

</head>
<body>
<div id="block-body">
    <div id="block-header">
        <div id="header-top-block">
            <ul id="header-top-menu">
                <!-- СИЛКИ-->

                <a href="/"><li><span>UKRAINE-SHOP</span></li></a>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/listProducts">List Products</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/addProduct">Add product</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/listUsers">List Users</a></li></sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">  <li><a href="/admin/news">News</a></li></sec:authorize>
                 <li><a href="/details">Про нас</a></li>
                 <li><a href="">Про нас</a></li>
                 <li><a href="">Магазини</a></li>
                 <li><a href="">Контакти</a></li>
            </ul>
            <p id="reg-auth-title" align="right">
                <%-- <a href="" class="top-auth">Вхід</a>--%>

                <a href="/toLogin" class="top-auth">Вхід</a>
                <%-- <a href="/logout" class="top-auth">Вихід</a>--%>



                <a  id="top-auth2" href="/reg">Реєстрація </a>

            </p>
        </div>
        <div id="top-line"></div>
        <img id="img-logo" src="/image/images.jpg">
        <div id="personal-info">
            <p align="right" >Дзвінок безкоштовний</p>
            <h3 align="right">(044) 100-12-34</h3>
            <img src="/image/images.png">
            <p align="right">Режим роботи</p>
            <p align="right">Будні дні з 9:00 по 20:00</p>
            <p align="right">Субота, неділя - вихідні</p>
            <img src="/image/im.jpg">
        </div>
        <div id="block-search">
            <!-- додати дію по пошуку товару
            урок 5 (2:00) search-->
            <form method="GET" action="search.g">
                <input type="text" id="input-search" name="g" placeholder="Search"/>
                <input type="submit" id="botton-search"  value="Search"/>

            </form>
        </div>
    </div>
    <div id="top-menu">
        <ul>
            <li><img src="/image/shop.png"><a href="">Топ</a></li>
            <li><img src="/image/new-32.png"><a href="">Новинки</a></li>
            <li><img src="/image/bestprice-32.png"><a href="">Лідери продаж</a></li>
            <li><img src="/image/sale-32.png"><a href="">Розпродажа</a></li>
        </ul>
        <p align="right" id="block-basket"><img src="/image/cart-icon.png"><a href="">Корзина пуста</a></p>
        <div id="nav-line"></div>
    </div>


<%--<%@include file="include/right.jsp"%>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="block-right">
    <div id="block-category">
        <p class="header-title">Категорії товарів</p>
        <ul>
            <li><a href=""><img src="/image/mobile-icon.gif" id="mobile-image"><b>Мобільні телефони</b></a>
                <ul class="category-section">

                    <li><a href=""><b>Всі моделі</b></a></li>
                    <li><a href="">Підрозділ 1</a></li>
                    <li><a href="">Підрозділ 2</a></li>
                </ul>

            </li>

            <li><a href=""><img src="/image/book-icon.gif" id="book-image"><b>Ноутбуки</b></a>
                <ul class="category-section">
                    <li><a href=""><b>Всі моделі</b></a></li>
                    <li><a href="">Підрозділ 1</a></li>
                    <li><a href="">Підрозділ 2</a></li>
                </ul>

            </li>

            <li><a href=""><img src="/image/table-icon.gif" id="table-image"><b>Планшети</b></a>
                <ul class="category-section">
                    <li><a href=""><b>Всі моделі</b></a></li>
                    <li><a href="">Підрозділ 1</a></li>

                </ul>
            </li>
        </ul>
    </div>

    <div id="block-parameter">
        <p class="header-title">Пошук по параметрах</p>
        <p class="title-filter">Ціна</p>
        <!-- додати дію-->
        <form method="GET" action="">
            <div id="block-input-price">
                <ul >
                    <li><p>від</p></li>
                    <li><input type="text" id="start-price" name="start_price" value="1000" ></li>
                    <li><p>до</p></li>
                    <li><input type="text" id="end-price" name="end_price" value="3000" ></li>
                    <li><p>грн</p></li>
                </ul>
            </div>
            <div id="blocktrackbar"></div>

        </form>

        <p class="title-filter">Виробники</p>
        <!-- бренди будуть виводитись з БД-->
        <ul class="checkbox-brand">
            <li><input type="checkbox" id="checkbrend1"><label for="checkbrend1">Бренд1</label></li>
            <li><input type="checkbox" id="checkbrend2"><label for="checkbrend2">Бренд2</label></li>
            <li><input type="checkbox" id="checkbrend3"><label for="checkbrend3">Бренд3</label></li></ul>
        <center><input type="submit" name="submit" id="botton-param-search" value="Знайти"></center>
    </div>
    <div id="block-news">
        <center><img id="news-prev" src="/image/img-prev.png"></center>
        <div id="newsticker">
            <ul>
                <c:forEach items="${news}" var="news">
                    <!-- новини будуть виводитись з БД-->
                    <li><span>${news.title}</span>
                        <a href="">${news.name}</a>
                        <p><!-- вставити новини-->
                                ${news.descriptions}
                        </p>
                    </li>

                </c:forEach>
            </ul>
        </div>
        <center><img id="news-next" src="/image/img-next.png"></center>
    </div>

</div>







<div id="block-content">

        <div id="block-sorting">
            <p id="nav-breadcrumbs"><a href="">Головна сторінка</a>\<span>Всі товари</span></p>
            <ul id="option-list">
                <li>Вид:</li>
                <li><img id="style-grid" src="/image/icon-grid.png"></li>
                <li><img id="style-list" src="/image/icon-list.png"></li>
                <li>Сортувати:</li>
                <li><a id="select-sort">Без сортування</a>
                    <ul id="sorting-list">
                        <li><a href="/sort_price-asc">Від дешевих до дорогих</a></li>
                        <li><a href="/sort_price-desc">Від дорогих до дешевих</a></li>
                        <li><a href="/popular">Популярні</a></li>
                        <li><a href="/news">Новинки</a></li>
                        <li><a href="/brand">Від А до Я</a></li>
                    </ul></li>
            </ul>
        </div>
        <ul id="block-tovar-grid">
            <c:forEach items="${allProducts}" var="products">
                <li id="block-tovar-grid-new">
                    <div class="block-images-grid">

                       <%-- ${products.image}--%>
                        <%--налаштувати картинки в стилях
                        висота і ширина--%>

                            <img id="image-grid" src="${products.picture}">
                    </div>
                    <p class="style-title-grid"><a href="">${products.title}</a> </p>
                    <ul class="reviews-and-count-grid">
                        <li><img src="/image/eye-icon.png"><p>0</p> </li>
                        <li><img src="/image/comment-icon.png"><p>0</p></li>
                    </ul>
                    <a class="add-cart-style-grid" href=""><img src="/image/add-cart-norm.png"></a>
                    <p class="style-price-grid"><b>${products.price}</b>грн</p>
                    <div class="mini-features">
                            ${products.mini_features}
                    </div>
                 </li>

            </c:forEach>
        </ul>

        <ul id="block-tovar-list">
            <c:forEach items="${allProducts}" var="products">
                <li id="block-tovar-list-new">
                    <div class="block-images-list">
                            <%--налаштувати картинки в стилях
                            висота і ширина--%>
                        <img id="image-list" src="${products.picture}">
                    </div>

                    <ul class="reviews-and-count-list">
                        <li><img src="/image/eye-icon.png"><p>0</p> </li>
                        <li><img src="/image/comment-icon.png"><p>0</p></li>
                    </ul>

                    <p class="style-title-list"><a href="">${products.title}</a> </p>

                    <a class="add-cart-style-list" href=""><img src="/image/add-cart-norm.png"></a>
                    <p class="style-price-list"><b>${products.price}</b>грн</p>
                    <div class="style-text-list">
                            ${products.mini_description}
                    </div>
                </li>

            </c:forEach>
        </ul>
    </div>

<div id="block-footer">
    <div class="botton-line"></div>
    <div id="footer-phone">
        <h4>Служба підтримки</h4>
        <h3>069-34-56-789</h3>
        <p>Режим роботи<br>
            Будні дні з 9:00 по 20:00<br>
            Субота, неділя - вихідні</p>
    </div>

    <div class="footer-list">
        <p>Сервіс</p>
        <ul>
            <li><a href="">Як зробити замовлення</a></li>
            <li><a href="">Спосіб оплати</a></li>
            <li><a href="">Повернення</a></li>
        </ul>
    </div>
    <div class="footer-list">
        <p>Про компанію</p>
        <ul>
            <li><a href="">Про нас</a></li>
            <li><a href="">Вакансії</a></li>
            <li><a href="">Контакти</a></li>
        </ul>
    </div>
    <div class="footer-list">
        <p>Навігація</p>
        <ul>
            <li><a href="">Головна сторінка</a></li>
            <li><a href="">Зворотній звязок</a></li>
        </ul>
    <p>Розказати про сайт</p>
    <script type="text/javascript">(function() {
        if (window.pluso)if (typeof window.pluso.start == "function") return;
        if (window.ifpluso==undefined) { window.ifpluso = 1;
            var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
            s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
            s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
            var h=d[g]('body')[0];
            h.appendChild(s);
        }})();</script>
    <div class="pluso" data-background="#f9f7f1" data-options="small,square,line,horizontal,nocounter,theme=04" data-services="facebook,twitter,vkontakte,google,linkedin,email,print"></div>
</div>


</div>
<div class="botton-line"></div>




<%--<%@include file="include/footer_.jsp"%>--%>

</div>

<%@include file="include/JSfile_.jsp"%>

</body>
</html>
