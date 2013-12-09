#Dish
##Makers Academy Week 9 Test


###Aim

The aim of this test was to further practice Rails by building an Yelp-style app.

I wanted to give the challenge a little twist : the focus was to be not on restaurant reviews, but meal reviews. How good or bad were individual dishes at a restaurant?

Users could search for restaurants near them, or add their favourite restaurants if they didn’t already exist. Then, users have the power to add different meals to a restaurant, including details on its price, ingredients, and any dietary requirements it satisfied. Users could then rate each dish once based on their own experience of trying it. 

Given enough data had been stored in the application, users could not only search for restaurants near them, but could filter by highly-rated dishes within a certain mile radius, the types of food they were looking for, and also the top meals under specific dietary requirements, such as being vegan or dairy intolerant.



###Other details

The test was set by Alex Peattie, [@alexpeattie](http://www.github.com/alexpeattie)

Technologies used in this app include:

* PostgreSQL
* Devise
* JavaScript, JSON, jQuery, Ajax
* Factory Girl
* Poltergeist/Phantom JS


###Features

* Visitors to the website can view previously added restaurants
* Users have to sign up/in to add restaurants/meals 
* Users can view restaurant pages and add specific dishes
* Dishes have a name, price, and meal stage, e.g. starter, main, dessert
* Dishes can be rated 1-5, only once per user
* Each dish has its total rating and average rating displayed next to it

###To do

* Include Google Maps API so users can refine restaurant serach by area
* Change numbered buttons to a star display
* Use Websockets to automatically alert when a new dish has been added to a restaurant
* Use Foundation to design the site