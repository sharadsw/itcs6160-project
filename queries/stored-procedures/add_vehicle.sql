USE campus_eats_fall2020;

DROP PROCEDURE IF EXISTS add_vehicle;

DELIMITER //

CREATE PROCEDURE add_vehicle(IN vehicle_plate varchar(75),
								IN model varchar(75),
								IN make varchar(75))
BEGIN
	INSERT INTO vehicle (vehicle_plate, model, make) 
    VALUES (vehicle_plate, model, make);
END //
DELIMITER ;

CALL add_vehicle('XYZ', 'test', 'test');