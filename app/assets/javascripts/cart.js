
// Cart empty animation
$(document).ready(function(){
    $('.cart-alert').css('opacity', 0)
  .slideDown('fast')
  .animate(
    { opacity: 1 },
    { queue: false, duration: 'slow' }
  );
});