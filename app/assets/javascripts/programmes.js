$(function(){
  console.log("programmes.js is loaded");
  getProgrammeClients()
});

function getProgrammeClients(){

  $("a.programme-link").on('click', function() {

    let programme_id = $(this).data("id");
    let programme_url = "/programmes/" + programme_id + "/clients" + ".json"

    $.get(programme_url, function(data){
      console.log("this is your programme data", data)
      const clientArr = data.map(object => object["first_name"] + " " + object["last_name"])
      showProgrammeClients(programme_id, clientArr)
    });
  });
}

function showProgrammeClients(programme_id, clientArr){
  let text = "<ul>";

  for (i = 0; i < clientArr.length; i++) {text += "<li>" + clientArr[i] + "</li>";}
  text += "</ul>";
  $('.programme-' + programme_id + '-clients').append(text)
}
