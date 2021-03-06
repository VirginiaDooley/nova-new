$(() => {
  console.log("organisations.js is loaded");
  hideNewOrgForm()
  showOrganisations();
  showNewOrgForm();
});

function hideNewOrgForm(){
  console.log("hiding form");
  $('#new-org-form-div').hide();
}

function showOrganisations() {
  $.get('/organisations.json', (data) => {

    let orderedNames = data.sort((function(a, b) {
      let nameA = a.name.toUpperCase();
      let nameB = b.name.toUpperCase(); 
      if (nameA < nameB) {
        return -1;
      }
      if (nameA > nameB) {
        return 1;
      }
      return 0;
    }))

    orderedNames.forEach(org => {
      let newOrg = new Organisation(org.name, org.website, org.id)
      let newOrgHtml = newOrg.formatIndex()
      document.getElementById('organisations-index').innerHTML += newOrgHtml
    });
  });
};

function showNewOrgForm(){
  $('#new-org-form-link').on('click', (event) => {
    event.preventDefault();
    let form = document.getElementById('new-org-form-div');
    if (form.style.display === "none") {
        form.style.display = "block";
      } else {
        form.style.display = "none";
      }
  });
}

class Organisation {
  constructor(name, website, id) {
    this.id = id
    this.name = name
    this.website = website
  }

  formatIndex() {
  let newOrgHtml = (`
    <a href="organisations/${this.id}">
    <p>${this.name}</p></a>
    <p>${this.website}</p>
    </div>
    `)
    return newOrgHtml
  }
}



function submitNewOrg() {

  let formName = document.getElementById("organisation_name").value;
  let formWebsite = document.getElementById("organisation_website").value;

  $('#button#submit').on('click', function(event){
    event.preventDefault();

  $.post("/organisations",
    {name: formName, website: formWebsite}, (data) => {

      console.log(data)
      const newOrg = new Organisation(data.name, data.website)
    });
  });
}
