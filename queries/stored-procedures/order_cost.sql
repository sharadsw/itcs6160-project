DROP PROCEDURE IF EXISTS total_order_cost;

DELIMITER //

CREATE PROCEDURE total_order_cost(IN from_date DATE,
								IN to_date DATE)
BEGIN
	SELECT person_id, ROUND(SUM(total_price + delivery_charge), 2) AS total_order_cost,
	ROUND(SUM(total_price), 2) AS total_food_cost, 
	ROUND(SUM(delivery_charge), 2) AS total_delivery_cost
	FROM `order`
	WHERE order_date BETWEEN from_date AND to_date
    GROUP BY person_id;
END //
DELIMITER ;

CALL total_order_cost('2021-11-24', '2021-12-03');