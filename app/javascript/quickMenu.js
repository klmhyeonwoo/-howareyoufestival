/* 따라 다니는 퀵 메뉴 시작 */
$(document).ready(function(){
    var currentPosition = parseInt($(".quickmenu").css("top"));
    $(window).scroll(function() {
        var position = $(window).scrollTop(); 
        $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},800);
    });
});
/* 따라 다니는 퀵 메뉴 종료 */