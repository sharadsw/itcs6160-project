CALL add_restaurant('UNCC Campus', 'Wendys', '8am-5pm', 'http://www.wendys.com');

CALL add_vehicle('XYZ123', 'X', 'Tesla');

CALL `add_person`("John Doe", "john@gmail.com", 9801547892, 'student');

CALL customer_restaurant_rating(get_person_id("Keith Turner"), get_restaurant_id("Rath Ltd"));

CALL total_order_cost('2021-11-24', '2021-12-03');

CALL total_order_count('2021-11-24', '2021-12-03', get_person_id("Trudie McClure Jr."));

SELECT item_id, item_name, item_price
FROM menu
WHERE item_id = get_item_id("Burrito");

SELECT * FROM restaurant_order_join;

SELECT * FROM restaurant_rating_stats;

