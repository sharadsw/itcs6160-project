create table menu_order (
menu_order_id int NOT NULL PRIMARY KEY auto_increment,
item_id int,
CONSTRAINT fk_item_id FOREIGN KEY (item_id) REFERENCES `menu` (item_id),
order_id int,
CONSTRAINT fk_menu_order_id FOREIGN KEY (order_id) REFERENCES `order` (order_id),
cooking_specification varchar(100)
);

SELECT * FROM menu_order;