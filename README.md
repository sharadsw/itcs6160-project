# ITCS/DSBA 6160 Project
This repo contains files for the Database Systems group project.

## Team Members
1. [Aishwarya Babu](https://github.com/AishwaryaBabu1)
2. [Ianesh Karthik Bandhuchoday](https://github.com/IaneshKarthik)
3. [Jay Patel](https://github.com/jpat99)
4. [Sharad Swaminathan](https://github.com/sharadsw)

## Project Introduction

We are given a database for a food delivery app called CampusEats. We have been assigned this project to upgrade the existing database by adding a rating system for restaurants and drivers. There are 10 tables in the existing database which is created by team Mavericks. The tables are as follows: delivery, driver, faculty, location, order, person, restaurant, staff, student, and vehicle. We will be adding 2 new tables, namely, driver_rating, restaurant_rating. The driver_rating table will have the following columns: id, courtesy_rating, ontime_rating, driver_id, order_id. The courtesy rating and ontime_rating will range from 1-5. The courtesy_rating will rate the driver's behavior and condition of the package. The ontime_rating will rate if the driver delivered the food in expected time. The restaurant_rating table will have the following columns: id, order_id, restaurant_id, food_rating. The food_rating will rate the quality and quantity of the food.
