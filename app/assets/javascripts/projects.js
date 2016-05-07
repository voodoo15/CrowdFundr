
$(document).on('ready page:load', function() {

  var formValues = $("form")

  $('.pledge').on('click', function(event) {
    alert( "I got to JS Submit" );
    event.preventDefault();

    $.ajax({
      url:  "/pledges",
      type:  "POST",
      dataType: "script",
      data:  formValues,
      success:  function(data) {
        console.log(data);
        alert("Worked");
      }
    }).done(function() {
      alert("Got Here")
    })
  });

});

$(document).ready(function() {
  if ($("#js-parallax-window").length) {
    parallax();
  }
});

$(window).scroll(function(e) {
  if ($("#js-parallax-window").length) {
    parallax();
  }
});

function parallax(){
  if( $("#js-parallax-window").length > 0 ) {
    var plxBackground = $("#js-parallax-background");
    var plxWindow = $("#js-parallax-window");

    var plxWindowTopToPageTop = $(plxWindow).offset().top;
    var windowTopToPageTop = $(window).scrollTop();
    var plxWindowTopToWindowTop = plxWindowTopToPageTop - windowTopToPageTop;

    var plxBackgroundTopToPageTop = $(plxBackground).offset().top;
    var windowInnerHeight = window.innerHeight;
    var plxBackgroundTopToWindowTop = plxBackgroundTopToPageTop - windowTopToPageTop;
    var plxBackgroundTopToWindowBottom = windowInnerHeight - plxBackgroundTopToWindowTop;
    var plxSpeed = 0.35;

    plxBackground.css('top', - (plxWindowTopToWindowTop * plxSpeed) + 'px');
  }
}
