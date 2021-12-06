USE campus_eats_fall2020;

DROP PROCEDURE IF EXISTS add_restaurant;

DELIMITER //

CREATE PROCEDURE add_restaurant(IN location varchar(75),
								IN restaurant_name varchar(75),
								IN schedule_value varchar(75),
								IN website varchar(75))
BEGIN
	INSERT INTO restaurant (location, restaurant_name, `schedule`, website) 
    VALUES (location, restaurant_name, schedule_value, website);
END //
DELIMITER ;

CALL add_restaurant('UNCC Campus', 'Wendys', '8am-5pm', 'http://www.wendys.com');