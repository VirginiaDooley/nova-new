$(function(){
  console.log("organisations.js is loaded");
  hideNewOrgForm()
  showOrganisations();
  showNewOrgForm();
});

function hideNewOrgForm(){
  console.log("hiding form");
  $('#new-org-form-div').hide();
}

// render at least one index page (index resource - 'list of things')
// via JavaScript and an Active Model Serialization JSON Backend.
function showOrganisations() {
  $.ajax({
    url: '/organisations',
    method: 'get',
    dataType: 'json'
    // this is the promise
  }).done(function(data) {
    console.log("the data is: ", data)

    data.map(org => {
      let newOrg = new Organisation(org.name, org.website, org.id)
      let newOrgHtml = newOrg.formatIndex()
      document.getElementById('organisations-index').innerHTML += newOrgHtml
    });
  });
};

// render a form for creating a resource
function showNewOrgForm(){
  $('#new-org-form-link').on('click', function(event){
    event.preventDefault();
    let form = document.getElementById('new-org-form-div');
    form.style.display = '';
  });
}

// class constructor to make instance of an organisation
class Organisation {
  constructor(name, website, id) {
    this.id = id
    this.name = name
    this.website = website
  }
}

// Prototypes: Allows the addition of properties to all objects of type Object.
// This returns an html snippet of the data reponse to the specified div tag
Organisation.prototype.formatIndex = function() {
// template literal for placeholders enclosed in backticks
let newOrgHtml = (`
  <div id='organisations-index'>
  <a href="organisations/${this.id}">
  <p>${this.name}</p></a>
  <p>${this.website}</p>
  </div>
  `)
  return newOrgHtml
}

function submitNewOrg() {
  // retrieves input
  let formName = document.getElementById("organisation_name").value;
  let formWebsite = document.getElementById("organisation_website").value;

  $('#button#submit').on('click', function(event){
    event.preventDefault();
  // creates an emtpy Organisation based on the prototype above
  // loads JSON into the app using AJAX
  $.post("http://localhost:3000/organisations",
    {name: formName, website: formWebsite}, function(data) {
      // debugger
      console.log(data)
      const newOrg = new Organisation(data.name, data.website)
    });
    submitNewOrg()
  });
}

function addNewOrgToList(){
  newOrg = submitNewOrg()
  document.getElementById('organisations-index').append(`<li>${newOrg}</li>`);
}
