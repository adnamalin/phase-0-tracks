$(document).ready(function(){

//About Page
    $( "button" ).click(function() {
        $("#FavTable").slideToggle("slow");
        $("FavTable").css("display","block");
    });
    
    $("#img1").click(function() {
       $(this).attr("src", "images/sillyimg1.png");
    });
    
});