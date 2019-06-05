$(function(){
  console.log("clients.js is loaded");
  getContactDetails();
});

function getContactDetails(){
  $(":button").on("click", function(event) {
    event.preventDefault()
    console.log("button works")

    let id = parseInt($(".client-id").attr("data-id"))

    let url = "/clients/" + id
    $.ajax({
      url: url,
      method: 'get',
      dataType: 'json'
      // this is the promise
    }).done(function(data) {
      console.log("the data is: ", data);
      clientDetailsHTML(data);

      document.getElementById('contact_details').innerHTML = clientDetailsHTML(data);
    });
  });
}

function clientDetailsHTML(data){
  return (`
  <p>
  <br><b>Email:</b> ${data.email}
  <br><b>Phone:</b> ${data.phone}
  <br><b>Address:</b> ${data.address1}
  <br><b>City:</b> ${data.city}
  <br><b>Country:</b> ${data.country} </p>`);
}
