# Step 1: Create basic theme

/ - see a non dynamic page of the theme
get /signin
post /sessions/create
delete /signout
post /purchases/new


URLs
Routes
Controller Actions
Models
Database
Views



# Step 2: Allow users to CRUD a items

create an item
see all of the items
show the items

I want people to sign into an app and buy items from the store. They should see every item the store has.
They'll be able to buy individual items, they can add items to a cart and buy them all together. The admin can add more quantities of an item, add new items or remove items.

User
  - has many items
  - has many purchases, through items

Item
  - belongs to a purchases
  - belongs to a user

Purchase
  - has many user through items
  - has many items
