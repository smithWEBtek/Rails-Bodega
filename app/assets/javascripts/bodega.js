$(function() {
  $("a.see_cart").on("click", function(e){
    alert("You clicked this link")
    $.ajax({
      method: "GET",
      url: this.href
    }).done(function( data ) {

      console.log(data);
      debugger;
  });
    e.preventDefault();
  })
})
