DROP VIEW IF EXISTS restaurant_order_join;

CREATE VIEW restaurant_order_join AS
SELECT o.order_id, rs.restaurant_id, food_rating, delivery_rating, driver_id
FROM restaurant AS rs
INNER JOIN `order` AS o
ON rs.restaurant_id = o.restaurant_id
INNER JOIN rating
USING (order_id);

CREATE VIEW restaurant_rating_stats AS
SELECT restaurant_id, ROUND(AVG(food_rating), 2) AS avg_food_rating, 
MIN(food_rating) AS min_food_rating, MAX(food_rating) AS max_food_rating,
ROUND(AVG(delivery_rating), 2) AS avg_delivery_rating, 
MIN(delivery_rating) AS min_delivery_rating, MAX(delivery_rating) AS max_delivery_rating
FROM restaurant_order_join
GROUP BY restaurant_id;