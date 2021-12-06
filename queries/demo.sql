-- Stored procedure 1
CALL add_restaurant('Charlotte', 'McDonald', '8am-5pm', 'http://www.abcd.com');

-- Stored procedure 2
CALL add_vehicle('XYZ123', 'X', 'Tesla');

-- Stored procedure 3 with function calls
CALL customer_restaurant_rating(get_person_id("Keith Turner"), get_restaurant_id("Rath Ltd"));

-- Stored procedure 4
CALL total_order_cost('2021-11-24', '2021-12-03');

-- Stored procedure 5 with function call
CALL total_order_count('2021-11-24', '2021-12-03', get_person_id("Trudie McClure Jr."));

-- Using a function call in a query
SELECT item_id, item_name, item_price
FROM menu
WHERE item_id = get_item_id("Burrito");

-- View 1
SELECT * FROM restaurant_ordersvsreviews;

-- View 2
SELECT * FROM restaurant_rating_stats;

-- View 3
SELECT * FROM delivery_driver_ratings;