$(document).ready(function() {
  //hamburger icon scripts
  var expanded = false;
  $('.burger').click(function() {
    if (!expanded) {
      $('.burger span:first-child').removeClass('toggle-top-reverse');
      $('.burger span:last-child').removeClass('toggle-bottom-reverse');
      $('.burger span:first-child').addClass('toggle-top');
      $('.burger span:last-child').addClass('toggle-bottom');
      $('.burger span:nth-child(2)').addClass('middle');
      $('.mobile-nav').animate({right: 0}, 1000);
      // $(this).css({transform: 'translateX(30px) scale(0.5)'});
      expanded = true;
    } else {
      $('.burger span:nth-child(2)').removeClass('middle');
      $('.burger span:first-child').removeClass('toggle-top');
      $('.burger span:last-child').removeClass('toggle-bottom');
      $('.burger span:first-child').addClass('toggle-top-reverse');
      $('.burger span:last-child').addClass('toggle-bottom-reverse');
      $('.mobile-nav').animate({right: '-250px'}, 1000);
      expanded = false;
    }
  });
});
