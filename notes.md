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

class level method called 'most clients'

Limiting Access to Organisations
After successful sign up, a user can choose from a list or be associated with an Org of the same domain

x add devise navigation

questions:
How to render join table attributes?
Does Omniauth class method count towards spec?

x Move new client form to programmes/:programme_id/clients/new with link from programme
X Add some attribute to the join table related to clients_programmes
Fix redirect after outcome creation
Render join table options // data with a check selection box / form
Create a Nav Bar of App Functions
