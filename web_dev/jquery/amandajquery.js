$(document).ready(function(){

//About Page
    $( "button" ).click(function() {
        $("#FavTable").slideToggle("slow");
        $("FavTable").css("display","block");
    });
    
    $("#img1").hover(function() {
       $(this).attr("src", "images/sillyimage1.png");
    }, function() {
        $(this).attr("src", "images/AmandaLin-Cropped2.jpg");
    });
    
    $("#img2").hover(function() {
       $(this).attr("src", "images/sillyimage2.png");
    }, function() {
        $(this).attr("src", "images/AmandaLin-Cropped.png");
    });
    
     $("#img3").hover(function() {
       $(this).attr("src", "images/sillyimage3.png");
    }, function() {
        $(this).attr("src", "images/AmandaLin-Cropped3.jpg");
    });
    
});