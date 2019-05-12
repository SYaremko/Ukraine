
$(document).ready(function(){
    $("#style-grid").click(function () {
        $("#block-tovar-list").hide();
        $("#block-tovar-grid").show();
    });

    $("#style-list").click(function () {
        $("#block-tovar-grid").hide();
        $("#block-tovar-list").show();
    });

});
