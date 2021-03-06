**To Do (Rails):**

1. Add a link to create a new client from client index view
2. Then refactor clients new to be able to choose an existing programme or create one.
5. Create a custom rake task that drop, create, migrate seed and start the server (check out rake -t)
7. Associate a programme with outcomes for Outcomes index.
8. Install ActiveAdmin
9. Push to Heroku

**To Do (JS):**

* check out a possible refactor for an event unique to submitting forms for use in org.js
* change all requests to jquery instead of plain JS
* CREATE SERIALIZER FOR JOIN TABLE
* look into stringify
* format json data for the view
* Review *Asset Pipeline* section - to gain a better understanding of how js files are connect with your views
* In the Study Group Recording Doc I've shared a past project review he completed with a  student. This is a great way to see a _finished product_ & prepare you for your assessment

**Planning for Rails w JS project**

* Must translate JSON responses from your Rails app into JavaScript Model Objects using either ES6 class or constructor syntax. The Model Objects must have at least one method on the prototype. (Formatters work really well for this.)
    * Take a blog domain example and creating a new Post, instead of plainly taking the JSON response of the newly created Post from the Rails app and appending it to the DOM, you would instead create a Post prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM.
    ***Complete!***
    * Nova app: Create a new org and render all orgs

* Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
    * For example: in a blog domain with users and posts, you might display the index of the user's posts on the users show page, fetching the posts via a AJAX GET request, with the backend rendering the posts in JSON format, and then appending the posts to the page.
    * Nova app: on organisations index page, display a list of clients, but fetch clients via AJAX GET as described above. ***Complete!***

* Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
    * For example, in the blog domain, you might allow a user to view a post, using AJAX to fetch the post JSON and render it through JavaScript onto the page.
    * Nova app:  client show, fetch JSON address and render through JS >> client and create a button to show contact detail. To do this: hijack button function, set an id variable equal to this.data("id"), create an ajax get request $.get to a concatenated show url with interpolated id (note: this will require a custom route such as /clients/:id/contact_details) ***Complete!***

* Your Rails application must dynamically render on the page at least one serialized 'has_many' relationship through JSON using JavaScript.
    * In the previous blog domain example, if each of the posts has many comments, you could render those comments as well on that post's show page.
    * Nova app: A client has many programmes through client programmes; Hijack programme click and render clients in the programme through JS ***Complete!***

* Must use your Rails application to render a form for creating a resource that is submitted dynamically and displayed through JavaScript and JSON without a page refresh.
    * In the blog domain example, a user might be able to add a comment to a post, and the comment would be serialized, and submitted via an AJAX POST request, with the response being the new object in JSON and then appending that new comment to the DOM using JavaScript (ES6 Template Literals can help out a lot with this).
    * Nova app: ***Complete!***
