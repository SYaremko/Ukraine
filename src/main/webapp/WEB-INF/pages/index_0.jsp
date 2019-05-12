<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="include/header_0_.jsp"%>


<%@include file="include/right.jsp"%>
<%--
<a href="/main">MAIN</a>
--%>


    <div id="block-content">

        <div id="block-sorting">
            <p id="nav-breadcrumbs"><a href="">Головна сторінка</a>\<span>Всі товари</span></p>
            <ul id="option-list">
                <li>Вид:</li>
                <li><img id="style-grid" src="/image/icon-grid.png"></li>
                <li><img id="style-list" src="/image/icon-list.png"></li>
                <%--<li>Сортувати:</li>
                <li><a id="select-sort">Без сортування</a>
                    <ul id="sorting-list">
                        <li><a href="/sort_price-asc">Від дешевих до дорогих</a></li>
                        <li><a href="/sort_price-desc">Від дорогих до дешевих</a></li>
                        <li><a href="/popular">Популярні</a></li>
                        <li><a href="/news">Новинки</a></li>
                        <li><a href="/brand">Від А до Я</a></li>
                    </ul></li>--%>
            </ul>
        </div>
        <ul id="block-tovar-grid">
            <c:forEach items="${allProducts}" var="products">
                <li id="block-tovar-grid-new">
                    <div class="block-images-grid">

                            <img class="image-grid" src="${products.picture}">
                    </div>
                    <p class="style-title-grid"><a href="">${products.title}</a> </p>
                    <%--<ul class="reviews-and-count-grid">
                        <li><img src="/image/eye-icon.png"><p>0</p> </li>
                        <li><img src="/image/comment-icon.png"><p>0</p></li>
                    </ul>--%>
                    <a class="add-cart-style-grid" href=""><img src="/image/add-cart-norm.png"></a>
                    <p class="style-price-grid"><b>${products.price}</b>грн</p>
                    <div class="mini-features">
                            ${products.mini_features}
                    </div>
                 </li>

            </c:forEach>
            <li id="block-tovar-grid-new">
            <div class="block-images-grid">

                <img class="image-grid" src="/image/1.jpg">
            </div>
            <p class="style-title-grid"><a href="">Apple iPhone 6s Plus 128GB Space Gray</a> </p>

            <a class="add-cart-style-grid" href=""><img src="/image/add-cart-norm.png"></a>
            <p class="style-price-grid"><b>15459</b>грн</p>
            <div class="mini-features">
                Виробник Apple Тип Смартфон Попередньо встановлена ОС iOS
            </div>
        </li>
            <li id="block-tovar-grid-new">
                <div class="block-images-grid">

                    <img class="image-grid" src="/image/4.jpg">
                </div>
                <p class="style-title-grid"><a href="">Xiaomi Redmi 4x 2/16GB </a> </p>

                <a class="add-cart-style-grid" href=""><img src="/image/add-cart-norm.png"></a>
                <p class="style-price-grid"><b>3999</b>грн</p>
                <div class="mini-features">
                    Виробник Xiaomi Тип Смартфон Попередньо встановлена ОС Android 6.0 (Marshmallow) Оперативна пам'ять, ГБ 2 Вбудована пам'ять, ГБ 16
                </div>
            </li>
            <li id="block-tovar-grid-new">
                <div class="block-images-grid">

                    <img class="image-grid" src="/image/5.jpg">
                </div>
                <p class="style-title-grid"><a href="">LG G6 64GB White </a> </p>

                <a class="add-cart-style-grid" href=""><img src="/image/add-cart-norm.png"></a>
                <p class="style-price-grid"><b>17899</b>грн</p>
                <div class="mini-features">
                    Виробник LG Тип Смартфон Попередньо встановлена ОС Android 7.0 (Nougat) Оперативна пам'ять, ГБ 4
                </div>
            </li>
            <li id="block-tovar-grid-new">
                <div class="block-images-grid">

                    <img class="image-grid" src="/image/6.jpg">
                </div>
                <p class="style-title-grid"><a href="">Apple iPhone SE 32GB Rose Gold</a> </p>

                <a class="add-cart-style-grid" href=""><img src="/image/add-cart-norm.png"></a>
                <p class="style-price-grid"><b>9599</b>грн</p>
                <div class="mini-features">
                    Виробник Apple Тип Смартфон Попередньо встановлена ОС iOS Оперативна пам'ять, ГБ 2
                </div>
            </li>
        </ul>

        <ul id="block-tovar-list">
            <c:forEach items="${allProducts}" var="products">
                <li id="block-tovar-list-new">
                    <div class="block-images-list">
                            <%--налаштувати картинки в стилях
                            висота і ширина--%>
                        <img class="image-list" src="${products.picture}">
                    </div>

                    <%--<ul class="reviews-and-count-list">
                        <li><img src="/image/eye-icon.png"><p>0</p> </li>
                        <li><img src="/image/comment-icon.png"><p>0</p></li>
                    </ul>--%>

                    <p class="style-title-list"><a href="">${products.title}</a> </p>

                    <a class="add-cart-style-list" href=""><img src="/image/add-cart-norm.png"></a>
                    <p class="style-price-list"><b>${products.price}</b>грн</p>
                    <div class="style-text-list">
                            ${products.mini_description}
                    </div>
                </li>

            </c:forEach>

               <li id="block-tovar-list-new">
                   <div class="block-images-list">
                       <img class="image-list" src="/image/1.jpg">
                   </div>
                   <p class="style-title-list"><a href="<%--/detProduct-${products.id}--%>">Apple iPhone 6s Plus 128GB Space Gray}</a> </p>
                   <abbr title="Добавити в корзину"><a class="add-cart-style-list"  tid="${products.id}">
                       <img src="/image/add-cart-norm.png"></a></abbr>
                   <p class="style-price-list"><b>15459</b>грн</p>
                   <div class="style-text-list">
                       Друге покоління фаблет від компанії Apple отримало досить суттєві відмінності від попередника.
                   </div>
               </li>

               <li id="block-tovar-list-new">
                   <div class="block-images-list">
                       <img class="image-list" src="/image/4.jpg">
                   </div>
                   <p class="style-title-list"><a href="<%--/detProduct-${products.id}--%>">Xiaomi Redmi 4x 2/16GB</a> </p>
                   <abbr title="Добавити в корзину"><a class="add-cart-style-list"  tid="${products.id}">
                       <img src="/image/add-cart-norm.png"></a></abbr>
                   <p class="style-price-list"><b>3999</b>грн</p>
                   <div class="style-text-list">
                       Xiaomi Redmi 4x - це еволюційне продовження вдалої лінійки Redmi. В активах пристрою 8-ядерний процесор Snapdragon 435 з вбудованою графікою Adreno 505.
                   </div>
               </li>

               <li id="block-tovar-list-new">
                   <div class="block-images-list">
                       <img class="image-list" src="/image/5.jpg">
                   </div>
                   <p class="style-title-list"><a href="<%--/detProduct-${products.id}--%>">LG G6 64GB White</a> </p>
                   <abbr title="Добавити в корзину"><a class="add-cart-style-list"  tid="${products.id}">
                       <img src="/image/add-cart-norm.png"></a></abbr>
                   <p class="style-price-list"><b>17899</b>грн</p>
                   <div class="style-text-list">
                       LG G6 можна по праву назвати одним з найбільш збалансованих флагманських смартфонів від LG. У ньому поєднується простий, але стильний зовнішній вигляд і відмінні характеристики.
                   </div>
               </li>

               <li id="block-tovar-list-new">
                   <div class="block-images-list">
                       <img class="image-list" src="/image/6.jpg">
                   </div>
                   <p class="style-title-list"><a href="<%--/detProduct-${products.id}--%>">Apple iPhone SE 32GB Rose Golde</a> </p>
                   <abbr title="Добавити в корзину"><a class="add-cart-style-list"  tid="${products.id}">
                       <img src="/image/add-cart-norm.png"></a></abbr>
                   <p class="style-price-list"><b>9599</b>грн</p>
                   <div class="style-text-list">
                       Apple iPhone SE - продовження лінійки компактних смартфонів. Як і iPhone 5S, корпус моделі SE виконаний в аналогічному дизайні і габаритах, а також матеріалах.
                   </div>
               </li>
        </ul>
    </div>

<%@include file="include/footer_.jsp"%>

</div>

<%@include file="include/JSfile_.jsp"%>

</body>
</html>
