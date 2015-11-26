$(document).ready(function () {
    var pagebody = $("#pagebody");
    var themenu = $("#navmenu");
    var topbar = $("#toolbarnav");
    var content = $("#content");
    var viewport = {
        width: $(window).width(),
        height: $(window).height()
    };
    // retrieve variables as
    // viewport.width / viewport.height

    function openMe() {
        $(function () {
            topbar.animate({
                left: "200px"
            }, {
                duration: 200,
                queue: false
            });
            pagebody.animate({
                left: "200px"
            }, {
                duration: 200,
                queue: false
            });
        });
    }

    function closeMe() {
        var closeme = $(function () {
            topbar.animate({
                left: "0px"
            }, {
                duration: 200,
                queue: false
            });
            pagebody.animate({
                left: "0px"
            }, {
                duration: 200,
                queue: false
               }            );
        });
    }


    // checking whether to open or close nav menu
    $("#menu-btn").live("click", function (e) {
        e.preventDefault();
        var leftval = pagebody.css('left');

        if (leftval == "0px") {
            openMe();
        } else {
            closeMe();
        }
    });

//     // loading page content for navigation
//     $("a.navlink").live("click", function (e) {
//         e.preventDefault();
//         var linkurl = $(this).attr("href");
//         var linkhtmlurl = linkurl.substring(1, linkurl.length);
//
//         // var imgloader = '<center style="margin-top: 30px;"><img src="img/preloader.gif" alt="loading..." /></center>';
//
//         closeMe();
//
//         $(function () {
//             topbar.css("top", "0px");
//             window.scrollTo(0, 1);
//         });
//
//         content.html(imgloader);
//
//         setTimeout(function () {
//             content.load(linkhtmlurl, function () {});
//                                }, 1200
//                   );
//     });
// });

$(function () {
    var input = $('input[type=text]');
    input.focus(function () {
        $(this).val('');
    }).blur(function () {
        var el = $(this);

        if (el.val() === '') el.val(el.attr('title'));
    });
});

$(function () {
    $('.messages li:even').addClass('stripe');
});
