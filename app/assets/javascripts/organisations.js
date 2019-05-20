$(function(){
  console.log("organisations.js is loaded");
  // showNewOrgForm();
  // getOrganisations()
});


function showNewOrgForm(){
  $('#new-org-form-link').on('click', function(event){
    event.preventDefault();
    let newOrgForm = Organisation.newOrgForm()
    document.querySelector('#new-org-form-div').innerHTML = newOrgForm;
  });
}
