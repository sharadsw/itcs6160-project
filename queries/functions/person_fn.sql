DROP FUNCTION IF EXISTS get_person_id;

DELIMITER $$

CREATE FUNCTION get_person_id(
    p_name VARCHAR(50)
)
RETURNS INT
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE person_id_var INT;
    
    SELECT person_id
    INTO person_id_var
    FROM person
    WHERE person_name = p_name;
    
    RETURN(person_id_var);
END $$

DELIMITER ;

SELECT person_id, person_name, person_email
FROM person
WHERE person_id = get_person_id("Keith Turner");