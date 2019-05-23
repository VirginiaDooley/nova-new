$(function(){
  console.log("clients.js is loaded");
  getContactDetails();
});

function getContactDetails() {
  $(":button").on("click", function() {
    console.log("button works")

    // id = $('#id').get(0).id;

    let url = `http://localhost:3000/clients/${this.id}`
    $.ajax({
      url: url,
      method: 'get',
      dataType: 'json'
      // this is the promise
    }).done(function(data) {
      console.log("the data is: ", data)
      // data is JSON so needs to be formatted

      data.map(client => {
        const newClient = new Client(client)
        let newClientHtml = newClient.formatClient()
        document.getElementById('contact_details').innerHTML = newClientHtml
      });
    });
  });
}

class Client {
	constructor(first_name, last_name, email, phone, address1, city, post_code, country) {
		this.id = id
		this.first_name = first_name
    this.last_name = last_name
		this.email = email
		this.phone = phone
    this.address1 = address1
    this.city = city
    this.post_code = post_code
    this.country = country
	}
}

Client.prototype.formatClient = function() {
// template literal for placeholders enclosed in backticks
let newClientHtml = (`
  <div id='organisations-index'>
  <a href="organisations/${this.id}"></a>
  <p>Full Name: ${this.first_name} ${this.last_name}</p>
  <p>Email: ${this.email}</p>
  <p>Phone: ${this.phone}</p>
  <p>Address: ${this.address1}</p>
  <p>City: ${this.city} </p>
  <p>Country: ${this.country}</p>
  </div>
  `)
  return newClientHtml
}
