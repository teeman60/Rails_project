# TYSTHER Application (Restaurant_Review)
TYSTHER is a little like a Yelp clone that allows you to search for restaurants list, their menu and other information such as the rating and comments.
Once the user has found a restaurant, they have the ability to view what menu they have, view the current ratings and reviews given by previous users and also give their own (rating and review). The reviews list provides reviewer infomation, most recent review as well as their top rating.

## Usage Guide

### Initial Setup

1. Fork and clone this repository to your local machine.
2. CD into the directory where you cloned
3. Type bundle install, rails db:migrate, rails db:seed
4. In terminal, type in 'rails s' to start the app.
5. Now you have the login page available to view in your browser at URL: http://localhost:3000/login

# README

The TYSTHER app has the following functionalities: 

# USERS VALIDATION
- Users can only open 1 account (name must be provided and must be unique)

- Users' age must be at least 14 no more than 130

- Users should not be able to login if they enter an incorrect password

# REVIEW VALIDATION
- Users can only leave one review per restaurant

- Users can only leave their review after restaurant visit (date present)

- Users' review must be more than 3 characters but less than 300 characters 

- Users can give a rating between 1 to 5

# USER'S VALIDATION
- Users should be able to create an account / sign up (user_id, password)

- Users should be have name, age and password

- Users should be authenticated upon subsequent login attempts


# FOOD
- Users should be able to find restaurant menu

- Food index page should have list of foods offered by a restaurant

- Food index page should have links to a particular food's show page

- Food show page display food info

- Food show page should display food images

# LOCATION
- A location should link to only one restaurant

- Users should be able to find restaurant location from restaurant show page

# RESTAURANT
- Restaurant's show page should show the restaurant's name

- Restaurant's show page should have the restaurant's average rating and a link to the reviews made about it

- Restaurant's show page should have the restaurant's location and a link to the location show page

- Restaurant's show page should have the restaurant's menu and a link to the food show page

# Review
- Review show page should be able to find reviewers(User name)

- Review show page should be able to find restaurant name 

- Review show page should be able to find restaurant comment

- Review show page should be able to find restaurant rating

- Review show page should be able to find restaurant visiting date by user

- Users should be able to select restaurants when creating their review

- Users should be able to select food when creating their review

- Users should be able to leave a comment about a restaurant 

- Users should be able to leave a restaurant's date of visit

- Users should be able to give a rating
