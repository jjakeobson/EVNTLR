$(document).on("ready page:load", function () {
    var pagebody = $("#pagebody");
    var themenu = $("#navmenu");
    var topbar = $("#toolbarnav");
    var content = $("#content");
    var viewport = {
        width: $(window).width(),
        height: $(window).height()
    };

    $('#message_message').focus(function() {
      console.log('Success');
      // alert('say something');
      $('#footer-navbar').hide();
    });
    $('#message_message').blur(function() {
      console.log('Success');
      // alert('say something');
      $('#footer-navbar').show();
    });

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
    $("#menu-btn").on("click", function (e) {
        e.preventDefault();
        var leftval = pagebody.css('left');

        if (leftval == "0px") {
            openMe();
        } else {
            closeMe();
        }
    });

    $("a.navlink").on("click", function (e) {
        e.preventDefault();
        var linkurl = $(this).attr("href");
        var linkhtmlurl = linkurl.substring(1, linkurl.length);


        closeMe();

        $(function () {
            topbar.css("top", "0px");
            window.scrollTo(0, 1);
        });

    });
});

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
