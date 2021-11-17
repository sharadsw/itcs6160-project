create table rating (
rating_id int NOT NULL primary key,
food_rating int,
delivery_rating int,
comments varchar(200),
picture_link varchar(100),
order_id int,
CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES `order` (order_id) 
);

SELECT * FROM rating;