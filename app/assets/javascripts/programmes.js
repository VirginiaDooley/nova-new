$(function(){
  console.log("programmes.js is loaded");
  showProgrammeClients();
});

function showProgrammeClients(){
  $("#programme-link").on("click", function(event) {
    event.preventDefault()
    console.log("link works")

    let id = parseInt($(".programme-id").attr("data-id"))

    let url = "/programmes/" + id
    $.ajax({
      url: url,
      method: 'get',
      dataType: 'json',
      success: function(data){
        console.log("the data is: ", data);

        let clients = data.clients
        console.log(clients);

        let programme_clients = clients.map(client => {

        return (`
          <div id="programme-clients">
          <li>${client.first_name}  ${client.last_name}</li>
          </div>
        `);
        debugger
      }).join('');
        document.getElementById('programme-clients').innerHTML = programme_clients

    }});
  });
}

//
// function clientNamesHTML(programme_clients) {
//   debugger
//
//
// }
