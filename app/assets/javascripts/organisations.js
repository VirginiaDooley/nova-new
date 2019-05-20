$(function(){
  console.log("organisations.js is loaded");
  // showNewOrgForm();
  // getOrganisations()
});

function getOrganisations() {
	$.ajax({
		url: 'http://localhost:3000/organisations',
		method: 'get',
		dataType: 'json'
    // this is the promise
  }).done(function(data) {
			console.log("the data is: ", data)
      // debugger
			data.map(org => {
				const newOrg = new Organisation(org)
				const newOrgHtml = newOrg.postHTML()
				document.getElementById('organisations-index').innerHTML += newOrgHtml
			});
  });
};

function showNewOrgForm(){
  $('#new-org-form-link').on('click', function(event){
    event.preventDefault();
    let newOrgForm = Organisation.newOrgForm()
    document.querySelector('#new-org-form-div').innerHTML = newOrgForm;
  });
}

// class constructor to make instance of an organisation
class Organisation {
	constructor(obj) {
		this.id = obj.id
		this.name= obj.name
		this.website = obj.website
	}

	static newOrgForm() {
		return (`
		<strong>New Organisation</strong>
			<form>
				<input id='org-form' type='text' name='name'></input><br>
				<input type='text' name='website'></input><br>
				<input id='submit' type='submit'/>
			</form>
		`)
	}
}
