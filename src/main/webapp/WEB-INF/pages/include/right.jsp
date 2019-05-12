
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="block-right">
    <%--<div id="block-category">
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
    </div>--%>

    <%--<div id="block-parameter">
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
    </div>--%>
    <div id="block-news">
        <center><img id="news-prev" src="/image/img-prev.png"></center>
        <div class="newsticker">
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
    <li><span> 13 вересня 2017</span>
                    <a href="">iPhone X, iPhone 8</a>
                    <p><!-- вставити новини-->
                        Apple офіційно представив iPhone X, iPhone 8 і 8 Plus.
                    </p>
    </li>

    <li><span> Aspire S24</span>
        <a href="">Найтонший моноблок!</a>
        <p><!-- вставити новини-->
            Acer випустила найтонший моноблок Aspire S24.

        </p>
    </li>

    <li><span>Заміна акумуляторів </span>
        <a href="">Acer</a>
        <p><!-- вставити новини-->
            Acer випустила найтонший моноблок Aspire S24

        </p>
    </li>

    <li><span>Компанія Lenovo </span>
        <a href="">Lenovo анонсувала на IFA 2017 </a>
        <p><!-- вставити новини-->
            Lenovo в межах виставки IFA 2017 показала нові гібридних ноутбуки лінійки Yoga

        </p>
    </li>
            </ul>
        </div>
        <center><img id="news-next" src="/image/img-next.png"></center>
    </div>

</div>




