document.addEventListener('DOMContentLoaded', function() {
  // window.$ = $;

  $('#skiplinks > a').click(function(e){
    var href = $(this).attr('href').substr(1); // remove the #
    var target = $('a[name="' + href + '"]');
    $(this).blur();
    target.focus();
    console.log('hello skiplinks');
  });

  // initialize the megamenu
  // $('nav#primary-nav').accessibleMegaMenu();

  // hack so that the megamenu doesn't show flash of css animation after the page loads.
  setTimeout(function () {
      $('body').removeClass('init');
      console.log('body initialized')
  }, 500);

});
