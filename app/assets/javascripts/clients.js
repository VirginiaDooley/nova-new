$(() => {
  console.log("clients.js is loaded");
  getContactDetails();
});

function getContactDetails(){
  $(":button").on("click", function(){

    let client_id = parseInt($(".client-id").attr("data-id"))
    let client_url = "/clients/" + client_id + ".json"

    $.get(client_url, (data) => {
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
  <br><b>Post Code:</b> ${data.post_code}
  <br><b>Country:</b> ${data.country} </p>`);
}
