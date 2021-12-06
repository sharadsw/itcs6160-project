DELIMITER //

CREATE PROCEDURE total_order_count(IN from_date DATE,
								IN to_date DATE,
								IN p_id INT)
BEGIN
	SELECT COUNT(order_id) AS total_orders, person_id
	FROM `order`
	WHERE order_date BETWEEN from_date AND to_date AND person_id = p_id;
END //
DELIMITER ;

CALL total_order_count('2021-11-24', '2021-12-03', 5);