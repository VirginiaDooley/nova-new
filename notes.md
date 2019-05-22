**To Do (Rails):**

1. Add a link to create a new client from client index view
2. Then refactor clients new to be able to choose an existing programme or create one.
3. Get rid of turbo links gem?
4. Create a seed file
5. Create a custom rake task that drop, create, migrate seed and start the server (check out rake -t)
7. Associate a programme with outcomes for Outcomes index.
8. Install ActiveAdmin
9. Push to Heroku

**To Do (JS):**

* Add p div li tags throughout views; you can do this directly in views or create a related css file to with a selector for the section
* Render multiple nested objects in one action >> refer to serializer in may 15 study group
***How do I create/post and render form results in JS***
***I changed .coffee to .js - which should it be?***


**Planning for Rails w JS project**

* Must translate JSON responses from your Rails app into JavaScript Model Objects using either ES6 class or constructor syntax. The Model Objects must have at least one method on the prototype. (Formatters work really well for this.)
    * Take a blog domain example and creating a new Post, instead of plainly taking the JSON response of the newly created Post from the Rails app and appending it to the DOM, you would instead create a Post prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM.
    * Nova app: Create a new client and create a button to show contact detail. To do this: hijack button function, set an id variable equal to this.data("id"), create an ajax get request $.get to a concatenated show url with interpolated id (note: this will require a custom route such as /clients/:id/contact_details)

* Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
    * For example: in a blog domain with users and posts, you might display the index of the user's posts on the users show page, fetching the posts via a AJAX GET request, with the backend rendering the posts in JSON format, and then appending the posts to the page.
    * Nova app: on organisations index page, display a list of clients, but fetch clients via AJAX GET as described above. ***Complete! Ask if I should render partial or static form.***

* Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
    * For example, in the blog domain, you might allow a user to view a post, using AJAX to fetch the post JSON and render it through JavaScript onto the page.
    * Nova app:  client show, fetch JSON address and render through JS

* Your Rails application must dynamically render on the page at least one serialized 'has_many' relationship through JSON using JavaScript.
    * In the previous blog domain example, if each of the posts has many comments, you could render those comments as well on that post's show page.
    * Nova app: A program has many outcomes through clients. Render outcomes on programs show page


* Must use your Rails application to render a form for creating a resource that is submitted dynamically and displayed through JavaScript and JSON without a page refresh.
    * In the blog domain example, a user might be able to add a comment to a post, and the comment would be serialized, and submitted via an AJAX POST request, with the response being the new object in JSON and then appending that new comment to the DOM using JavaScript (ES6 Template Literals can help out a lot with this).
    * Nova app: ***Complete! Rendered form w JS but can't post new org .*** Create a new org and stop auto triggering; create function that on submit renders the new client on the same page
