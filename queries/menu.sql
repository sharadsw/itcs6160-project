USE campus_eats_fall2020;
DROP TABLE IF EXISTS menu;
create table menu (
item_id int NOT NULL primary key AUTO_INCREMENT,
item_name varchar(100),
item_desc varchar(200),
item_price float,
restaurant_id int,
CONSTRAINT fk_restaurant_id FOREIGN KEY (restaurant_id) REFERENCES `restaurant` (restaurant_id) 
);

SELECT * FROM menu;