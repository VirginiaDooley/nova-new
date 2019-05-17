Issues:

Add nav bar for main actions

Planning for Rails w JS project

Revise Rails app
- [x] Review routes and remove any that aren’t in use


Get rid of turbo links gem?


* Must translate JSON responses from your Rails app into JavaScript Model Objects using either ES6 class or constructor syntax. The Model Objects must have at least one method on the prototype. (Formatters work really well for this.)
    * Take a blog domain example and creating a new Post, instead of plainly taking the JSON response of the newly created Post from the Rails app and appending it to the DOM, you would instead create a Post prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM.
    * Nova app: Maybe take new client program status and concatenate somehow
    * Questions:
        * Do I need to recreate objects using JS rather than Rails? If so, in which cases? Any?
        *
    * Pseudo: Stop the auto triggerring of a form with preventDefault
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
    * Nova app:   Create a new client and stop auto triggering; create function that on submit renders the new client on the same page
    * Pseudo:
    *

Other ideas for integrating JS:
Render client with button option to show full address on click
