DROP FUNCTION IF EXISTS get_item_id;

DELIMITER $$

CREATE FUNCTION get_item_id(
    m_name VARCHAR(50)
)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE menu_id_var INT;
    
    SELECT item_id
    INTO menu_id_var
    FROM menu
    WHERE item_name = m_name;
    
    RETURN(menu_id_var);
END $$

DELIMITER ;

SELECT item_id, item_name, item_price
FROM menu
WHERE item_id = get_item_id("Burrito");