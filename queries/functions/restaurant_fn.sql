DELIMITER $$

CREATE FUNCTION get_restaurant_id(
    r_name VARCHAR(50)
)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE restaurant_id_var INT;
    
    SELECT restaurant_id
    INTO restaurant_id_var
    FROM restaurant
    WHERE restaurant_name = r_name;
    
    RETURN(restaurant_id_var);
END $$

DELIMITER ;

SELECT restaurant_id, restaurant_name, location
FROM restaurant
WHERE restaurant_id = get_restaurant_id("Wendys");