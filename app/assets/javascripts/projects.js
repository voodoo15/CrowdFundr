$('#search-form').submit(function(event) {
  event.preventDefault();
  alert("weirwejknr");
  var searchValue = $('#search').val();

  $.ajax({
    url: '/products?search=' + searchValue,
    type: 'GET',
    dataType: 'html'
  }).done(function(data){
    $('#projects').html(data);
  });
});
