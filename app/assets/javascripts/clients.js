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
  <p>First Name: ${data.first_name}</p>
  <p>Email: ${data.email}</p>
  <p>Phone: ${data.phone}</p>
  <p>Address: ${data.address1}</p>
  <p>City: ${data.city} </p>
  <p>Country: ${data.country} </p>`);
}
