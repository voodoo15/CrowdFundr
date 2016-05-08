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


  function display_search_results() {
   // readyState === 4 means that the asynchronous request completed successfully
   if (this.readyState === 4) {
     console.log(this);
     document.getElementById('projects').innerHTML = this.responseText;
   }
 }

 var form = document.getElementById('search-form');
 form.addEventListener('submit', function(event) {
   event.preventDefault();
   var searchValue = document.getElementById('search').value;

   var xhr = new XMLHttpRequest();
   xhr.onload = display_search_results;
   xhr.open('GET', '/projects?search=' + searchValue, true);
   xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");
   xhr.send();
 });

  $('#search-form').submit(function(event){
      event.preventDefault();
      var searchValue = $('#search').val();

      $.get('/projects?search=' + searchValue)
        .done(function(data){
          console.log(data);
            $('#projects').html(data);
    });
  });
});
