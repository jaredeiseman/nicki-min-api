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
      expanded = true;
    } else {
      $('.burger span:nth-child(2)').removeClass('middle');
      $('.burger span:first-child').removeClass('toggle-top');
      $('.burger span:last-child').removeClass('toggle-bottom');
      $('.burger span:first-child').addClass('toggle-top-reverse');
      $('.burger span:last-child').addClass('toggle-bottom-reverse');
      expanded = false;
    }
  });
});
