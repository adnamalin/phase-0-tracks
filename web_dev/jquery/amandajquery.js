$(document).ready(function(){

///////Home Page///////
    $("#accordion").accordion({
        animate: 500,
        active: false,
        collapsible: true,
        event: "click",
        heightStyle: "content"
    });
    
///////About Page///////
    
    //table viewer
    $( "button" ).click(function() {
        $("#FavTable").slideToggle("slow");
        $("FavTable").css("display","block");
    });
    
    //image switcher 
    $("#img1").hover(function() {
       $(this).attr("src", "myphotos/sillyimage4.png");
    }, function() {
        $(this).attr("src", "myphotos/AmandaLin-Cropped2.jpg");
    });
    
    $("#img2").hover(function() {
       $(this).attr("src", "myphotos/sillyimage2.png");
    }, function() {
        $(this).attr("src", "myphotos/AmandaLin-Cropped.png");
    });
    
     $("#img3").hover(function() {
       $(this).attr("src", "myphotos/sillyimage3.png");
    }, function() {
        $(this).attr("src", "myphotos/AmandaLin-Cropped3.jpg");
    });
    
});