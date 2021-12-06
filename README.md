# ITCS/DSBA 6160 Project
This repo contains files for the Database Systems group project.

## Team Members
1. [Aishwarya Babu](https://github.com/AishwaryaBabu1)
2. [Ianesh Karthik Bandhuchoday](https://github.com/IaneshKarthik)
3. [Jay Patel](https://github.com/jpat99)
4. [Sharad Swaminathan](https://github.com/sharadsw)

## Project Introduction

CampusEats is a food delivery app build by team Maverick. We have extended the project by adding a rating system. The Objective of this project is to get the rating of all the restaurants and delivery drivers according to their performance. 

We have added the following tables:

* rating 
* menu 
* menu_order

The rating table has the following columns, rating_id (PK), food_rating, delivery_rating, comments, picture_link, and order_id (FK).
The menu table has the following columns, item_id (PK), item_name, item_desc, restaurant_id (FK).
The menu_order table is an associative table which has the following columns, menu_order_id(PK), item_id, order_id and cooking_specification.

## Operations

The 3 advanced sql statements include: functions, stored procedures, indexes and views. We have also added indexes to two columns. 

### Functions:
* get_restaurant_id
* get_person_id
* get_item_id

### Views:
* delivery_driver_ratings
* restaurant_rating_stats
* restaurant_ordersVSreviews

### Stored procedures:
* add_restaurant
* add_vehicle
* customer_restaurant_rating
* total_order_cost
* total_order_count

### Indexes:
* menu_index
* restaurant_index
