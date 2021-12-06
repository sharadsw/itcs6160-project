DROP PROCEDURE IF EXISTS customer_restaurant_rating;

DELIMITER //

CREATE PROCEDURE customer_restaurant_rating(IN p_id INT,
								IN r_id INT)
BEGIN
	SELECT person_id, ROUND(AVG(food_rating), 2) AS avg_rating
	FROM `order`
	INNER JOIN rating
	USING (order_id)
	WHERE person_id = p_id AND restaurant_id = r_id;
END //
DELIMITER ;

CALL customer_restaurant_rating(1, 1);