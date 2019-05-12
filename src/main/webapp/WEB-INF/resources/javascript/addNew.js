/**
 * Created by Solomiya on 02.10.2017.
 */

console.log("hello");

$(function () {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function (e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
$("#save").click(function () {
    var title = $("#title").val();
    var name = $("#name").val();
    var descriptions = $("#descriptions").val();
    var news = {title: title, name: name, descriptions: descriptions};
   /* var jsonObj = JSON.stringify(news);*/
    /*console.log(news);*/
    $.ajax({
        url: '/admin/saveNews',
        type: "POST",
        contentType: "application/json",
        data: JSON.stringify(news),
        success: function () {
            $('input').val("");
           /* alert("добавлено нові новини")*/
        },
        error: function () {
            alert("помилка");
        }
    });

});
