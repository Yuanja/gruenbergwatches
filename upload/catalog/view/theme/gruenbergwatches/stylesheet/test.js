// NAV DROPDOWN
$(function () {
  $('nav li ul').hide().removeClass('fallback');
  $('nav li').hover(
    function () {
        debugger;
        $('ul', this).stop().slideDown(100);
    },
    function () {
        debugger;
      $('ul', this).stop().slideUp(100);
    }
  );
});
// SLICK CAROUSEL
$(function(){
      $('.hero').slick({
        arrows:false,
        dots:true,
        adaptiveHeight:true
      });
    });