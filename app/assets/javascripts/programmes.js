$(() => {
  console.log("programmes.js is loaded");
  getProgrammeClients()
  showNewClientForm()
});

function getProgrammeClients(){
  $("a.programme-link").one('click', function() {
    let programme_id = $(this).data("id");
    let programme_url = "/programmes/" + programme_id + "/clients" + ".json"

      $.get(programme_url, (data) => {
        data.forEach(obj => console.log(obj))
        showProgrammeClients(programme_id, data)
      });
  });
}

function showProgrammeClients(programme_id, clientArr){
  if (clientArr.length > 0) {
    let text = "<ul>";
    clientArr.forEach(obj => {
      let link = `<a href="/clients/${obj.id}">`
      text += "<li>" + link + obj.full_name + "</a>" + "</li>"
    });
    $('.programme-' + programme_id + '-clients').append(text)
  } else {
    let new_link = `<a href="/programmes/${programme_id}/clients/new">Add a new client</a>`
    $('.programme-' + programme_id + '-clients').append(new_link)
  }
}
