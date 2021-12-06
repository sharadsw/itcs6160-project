CREATE VIEW delivery_driver_ratings AS
SELECT driver_id, ROUND(AVG(delivery_rating), 2) AS avg_rating
FROM restaurant_order_join
GROUP BY driver_id;