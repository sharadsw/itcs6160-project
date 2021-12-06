CREATE VIEW restaurant_ordersVSreviews AS
SELECT restaurant_id, COUNT(order_id) AS total_orders, COUNT(rating_id) AS total_reviews
FROM `order`
LEFT JOIN rating
USING (order_id)
GROUP BY restaurant_id;