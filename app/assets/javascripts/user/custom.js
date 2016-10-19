$(function () {
  $('#slider2').responsiveSlides({
    auto: true,
    pager: true,
    speed: 300,
    namespace: 'callbacks',
  });
});

$(document).ready(function() {
  $('#owl-demo').owlCarousel({
    items: 3,
    lazyLoad: true,
    autoPlay: false,
    pagination: true,
  });
});

new WOW().init();

$('span.menu').click(function() {
  $('ul.res').slideToggle(300, function() {});
});
