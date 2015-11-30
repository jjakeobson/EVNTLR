$(document).on("ready page:load", function() {

  $(function() {
    $('.toggle-nav').click(function() {
      toggleNavigation();
    });
  });

  // The toggleNav function itself
  function toggleNavigation() {
    if ($('#container').hasClass('display-nav')) {
      // Close Nav
      $('#container').removeClass('display-nav');
    } else {
      // Open Nav
      $('#container').addClass('display-nav');
    }
  }

  // $('#message_message').focus(function() {
  //   $('#footer-navbar').hide();
  // });
  // $('#message_message').blur(function() {
  //   $('#footer-navbar').show();
  // });
});
