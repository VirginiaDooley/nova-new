$(function(){
  console.log("programmes.js is loaded");
});

function getProgrammeClients(){

  let programme_id = parseInt($(".programme-id").attr("data-id"));
  let programme_url = "/programmes/" + programme_id + "/clients"

  $.get(programme_url, function(data){
    console.log('this is your data', data);

    const clientObj = data.map(object => object.first_name + " " + object.last_name)
    showProgrammeClients(clientObj)
  });
}

function showProgrammeClients(c){
  document.getElementById('programme-clients').append(c)
}
