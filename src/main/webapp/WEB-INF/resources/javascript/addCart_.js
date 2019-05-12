
$(function () {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function (e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
$('.add-cart-style-grid, .add-cart-style-list').click(function () {
    var idProduct = $(this).attr('tid');
    var product = {id: idProduct};

    $.ajax({
        url: '/addToCart',
        type: 'POST',
        data: JSON.stringify(product),
        contentType: 'application/json',
        success: function (res) {
alert("Товар успішно добавлено в корзину!")
        },
        error: function () {
            alert("Помилка при додаванні товару. Спробуйти добавити товар пізніше!")
        }
    });
});
