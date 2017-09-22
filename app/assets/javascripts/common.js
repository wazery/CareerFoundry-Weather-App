var ready = function() {
  $('.alert' ).fadeOut(3000);
}

$(document).ready(ready);
$(document).on('page:load', ready);
