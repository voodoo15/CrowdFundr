// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('ready page:load', function() {

  // alert('Yup');

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
