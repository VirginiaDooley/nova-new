organisation
have many programmes
has many clients through programmes


programmes
belong to organisation
has many outcomes through clients

clients
belongs to programmes
has many outcomes

outcomes
belongs to clients

edit and delete programmes

x Install Devise
x Org has_many Users
x User belongs to Org

CRUD programme clients
to create client status you can use this as an example Rails TODOMVC - Lecture 3: Marking Items Complete and Incomplete around 10 mins

A User can
CRUD an account

x Add a foreign key to a User model
x Add website to Org

When a User creates an account (User controller, create action)
scan org website where domains match email domain

Create a User Org
check if org_id is empty
scan org website where domains match email domain
present create a new org (i think this fulfills writable attribute?)


ideas for ...
def create 
  @user = User.new(user_params)
  @organisation.id = @user.organisation_id
  domain = regex split after @ of email address
  @user.email.scan.includes?

  Organisation.all.detect{ |o| o.website.includes?(@user.email)}

  SELECT * FROM organisations WHERE (organisations.website.includes == @user.email)

end

Docker & Wordpress??
