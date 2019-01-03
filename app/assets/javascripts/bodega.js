$(function() {
  $("a.see_cart").on("click", function(e){
    $.ajax({
      method: "GET",
      url: this.href
    }).done(function( response ) {

      $("div.cart").html(response)
  });
    e.preventDefault();
  })
})

$(function() {
  $("a.purchases").on("click", function(e){
    alert("You clicked this")
  })
})
