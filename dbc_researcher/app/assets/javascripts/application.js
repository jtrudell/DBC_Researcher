// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require comments
//= require_tree .
// $(document).ready(function() {
//   alert("this works!");
//   console.log('hello');
  // $("form").on("submit", function(event){
  // alert("seot");
  // var url = $(this);
  // console.log(url);

  //   // var request = $.ajax({
  //   //   url: ,
  //   //   method: "post",
  //   //   data:
  //   // });
  // })

// });
$(document).ready(function() {
  $('html').on('submit', 'form', function(e){
    e.preventDefault();
    console.log("goodbye!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    var url =  $(this).attr('action');
    var data = $(this).serialize();
    var request = $.ajax({url: url, method: 'post', data: data})

    request.done(function(data){
      // console.log(data.comment_text);
      var text = $(".comment").last();
      console.log(text);
      $(text).append('<div class="comment">'+ data.comment_text +'<br>'+ data.name +'</div>');

    });
  });
});

