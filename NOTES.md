# Step 1: Create basic theme

/ - see a non dynamic page of the theme
Get /items -> shows all items
Get /items/:id -> shows the specific item
Get /items/new -> create a new item from a form
Post /items -> submits new item form
Get /items/:id/edit - edits item form

URLs
Routes
Controller Actions
Models
Database
Views



# Step 2: Allow users to CRUD a items

create an item
see all of the itmes
show the items

I want people to sign into an app and buy items from the store. They should see every item the store has.
They'll be able to buy individual items, they can add items to a cart and buy them all together. The admin can add more quantities of an item, add new items or remove items.

User
  - has many items

Item
  - belongs to a store
  - belongs to a user

Store
  - has many user through items
  - has many items
