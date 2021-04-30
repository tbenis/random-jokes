# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- I installed the Sinatra gem and the controllers inherit from Sinatra
- [x] Use ActiveRecord for storing information in a database
- Active record gem is included and different active record methods are in use
- [x] Include more than one model class (e.g. User, Post, Category)
- I have a 'User' model and a 'Jokes' model
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
- Users Have many jokes
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
- A joke belongs to a user
- [x] Include user accounts with unique login attribute (username or email)
- User can log in and sign up. I have the 'uniqueness' flag set to 'true' in the User model
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- Jokes can be created, read, updated and deleted by the user who created it
- [x] Ensure that users can't modify content created by other users
- I created helper methods checking if the user is authorized to do cetain actions
- [x] Include user input validations
- I am checking for presence for all input fields. I am also using ReGex to valudate email format
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- I am using the 'sinatra-flash gem to achieve this'
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
- I have a README with installation instructions and will add a link to the Liscence

Confirm
- [x] You have a large number of small Git commits
- Yes
- [x] Your commit messages are meaningful
- Yes
- [x] You made the changes in a commit that relate to the commit message
- Yes
- [ ] You don't include changes in a commit that aren't related to the commit message
- Not in all instances