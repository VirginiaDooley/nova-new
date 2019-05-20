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
