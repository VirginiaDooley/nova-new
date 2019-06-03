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

      data.forEach(obj => console.log(obj))

      showProgrammeClients(programme_id, data)
    });
  });
}

function showProgrammeClients(programme_id, clientArr){
  let text = "<ul>";
  clientArr.forEach(obj => {
    // const link = `<a href="/clients/${obj.id}"></a>`
    text += "<li>" + obj.full_name + "</li>"})
  $('.programme-' + programme_id + '-clients').append(text)
}
