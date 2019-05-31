$(function(){
  console.log("programmes.js is loaded");
  getProgrammeClients()
});

function getProgrammeClients(){

  $("a.programme-link").on('click', function() {

    let programme_id = $(this).data("id");
    let programme_url = "/programmes/" + programme_id + "/clients"

    $.get(programme_url, function(data){
      console.log('this is your data', data);
      // need to format this
      const clientObj = data.map(object => object.first_name + " " + object.last_name)
      showProgrammeClients(programme_id, clientObj)

    });
  });
}

function showProgrammeClients(programme_id, clientObj){
  $('.programme-' + programme_id + '-clients').text(clientObj)
}
