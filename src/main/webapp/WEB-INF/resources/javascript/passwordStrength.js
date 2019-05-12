$(function () {
    var token = $("meta[name='_csrf']").attr("content");
    var header = $("meta[name='_csrf_header']").attr("content");
    $(document).ajaxSend(function (e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
$(function doAjax() {
        $.ajax({
            url: '/checkStrength',
            type: 'POST',
            // contentType: 'text/plain',
            data: ({password: $('#input_style').val()}),
            success: function (data) {
                $('#strengthValue').html(data);
            }
        });

    }
);
