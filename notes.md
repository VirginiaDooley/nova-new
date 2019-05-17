To Do (Rails):

Add a link to create a new client from client index view
Then refactor clients new to be able to choose an existing programme or create one.

Associate a programme with outcomes for Outcomes index.

Planning for Rails w JS project

Get rid of turbo links gem?
If I'm rendering some objects with JSON, what happens to tables etc created for rails?


* Must translate JSON responses from your Rails app into JavaScript Model Objects using either ES6 class or constructor syntax. The Model Objects must have at least one method on the prototype. (Formatters work really well for this.)
    * Take a blog domain example and creating a new Post, instead of plainly taking the JSON response of the newly created Post from the Rails app and appending it to the DOM, you would instead create a Post prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM.
    * Nova app: Maybe take new client and have a link or button to show contact details using turbolinks(?)
    * Questions:
        * Do I need to recreate objects using JS rather than Rails? If so, in which cases? Any?
        * Does a click method count as the one method?
    * Pseudo:

      * Add p div li tags throughout views; you can do this directly in views or create a related css file to with a selector for the section
      * Create new javascript file start with document ready syntax
      Write an event handler
      * Stop the auto triggering of a form with preventDefault or remote:true (?)
      * Move the redirect from the controller into a redirect_to do block and use formatter (around 19:20 in this video https:/www.youtube.com/watch?v=K-sns5tNdTY)
      * That block will reference a js file/format that needs to be created (client.js). Not sure if this needs to be erb file(?). This file will render clients contact details. Or appends a new client to a complete list (which you need to do for the next spec).

* Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
    * For example: in a blog domain with users and posts, you might display the index of the user's posts on the users show page, fetching the posts via a AJAX GET request, with the backend rendering the posts in JSON format, and then appending the posts to the page.
    * Nova app: on programme show page, display a list of clients, but fetch clients via AJAX GET as described above
    * Pseudo: 

* Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
    * For example, in the blog domain, you might allow a user to view a post, using AJAX to fetch the post JSON and render it through JavaScript onto the page.
    * Nova app:  client show, fetch JSON address and render through JS
    * Pseudo: 
* Your Rails application must dynamically render on the page at least one serialized 'has_many' relationship through JSON using JavaScript.
    * In the previous blog domain example, if each of the posts has many comments, you could render those comments as well on that post's show page.
    * Nova app: A program has many outcomes through clients. Render outcomes on programs show page
    * Pseudo: 

* Must use your Rails application to render a form for creating a resource that is submitted dynamically and displayed through JavaScript and JSON without a page refresh.
    * In the blog domain example, a user might be able to add a comment to a post, and the comment would be serialized, and submitted via an AJAX POST request, with the response being the new object in JSON and then appending that new comment to the DOM using JavaScript (ES6 Template Literals can help out a lot with this).
    * Nova app:   Create a new org and stop auto triggering; create function that on submit renders the new client on the same page
    * Pseudo:
    *

Other ideas for integrating JS:
Render client with button option to show full address on click
