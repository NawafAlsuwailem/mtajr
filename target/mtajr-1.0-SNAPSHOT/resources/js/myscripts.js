function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}


// $(function() {
//     $('topnav a[href^="/' + location.pathname.split("/")[1] + '"]').addClass('active');
// });


// // Add active class to the current button (highlight it)
// var header = document.getElementById("myTopnav");
// var btns = header.getElementsByClassName("");
// for (var i = 0; i < btns.length; i++) {
//     btns[i].addEventListener("click", function() {
//         var current = document.getElementsByClassName("active");
//         current[0].className = current[0].className.replace("active", "");
//         this.className += "active";
//     });
// }
