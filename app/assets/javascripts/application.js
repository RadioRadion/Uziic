//= require rails-ujs
//= require_tree

document.addEventListener("turbolinks:load", function() {
  const player = new Plyr('#player');
});

$(document).on("turbolinks:load", function() {
  const player = new Plyr('#player');
});
