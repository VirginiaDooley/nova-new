$(function(){
  console.log("programmes.js is loaded");
  showProgrammeClients();
});

function showProgrammeClients(){
  $("#programme-link").on("click", function(event) {
    event.preventDefault()
    console.log("link works")

  });
}
