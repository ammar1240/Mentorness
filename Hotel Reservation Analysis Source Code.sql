--Hotel Reservation analysis Queries

--Task 1
SELECT COUNT(*) AS total_reservations
FROM hotel_reservations;

--Task 2
SELECT type_of_meal_plan, COUNT(*) AS count
FROM hotel_reservations
GROUP BY type_of_meal_plan
ORDER BY count DESC
LIMIT 1;


--Task 3
SELECT AVG(avg_price_per_room) AS avg_price_with_children
FROM hotel_reservations
WHERE no_of_children >= 1;

--Task 4
SELECT COUNT(*) AS reservations_in_20XX
FROM hotel_reservations
WHERE arrival_date LIKE '%2017%';


--Task 5
SELECT room_type_reserved, COUNT(*) AS count
FROM hotel_reservations
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;


--Task 6
SELECT COUNT(*) AS reservations_with_weekend_nights
FROM hotel_reservations
WHERE no_of_weekend_nights > 0;


--Task 7
SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM hotel_reservations;


--Task 8
SELECT market_segment_type, COUNT(*) AS count
FROM hotel_reservations
GROUP BY market_segment_type
ORDER BY count DESC
LIMIT 1;


--Task 9
SELECT COUNT(booking_status) AS confirmed_reservations
FROM hotel_reservations
WHERE booking_status = 'Not_Canceled';


--Task 10
SELECT SUM(no_of_adults) AS total_adults, SUM(no_of_children) AS total_children
FROM hotel_reservations;


--Task 11
SELECT AVG(no_of_weekend_nights) AS avg_weekend_nights_with_children
FROM hotel_reservations
WHERE no_of_children > 0;


--Task 12
SELECT 
    CAST(SUBSTRING(arrival_date, 4, 2) AS INT) AS month,
    COUNT(*) AS reservations_count
FROM hotel_reservations
GROUP BY SUBSTRING(arrival_date, 4, 2)
ORDER BY month;



--Task 13
SELECT room_type_reserved, 
       AVG(no_of_weekend_nights + no_of_week_nights) AS avg_total_nights
FROM hotel_reservations
GROUP BY room_type_reserved;


--Task 14
SELECT room_type_reserved, 
       COUNT(*) AS count, 
       AVG(avg_price_per_room) AS avg_price
FROM hotel_reservations
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;


--Task 15

SELECT market_segment_type, AVG(avg_price_per_room) AS avg_price_per_room
FROM hotel_reservations
GROUP BY market_segment_type
ORDER BY avg_price_per_room DESC
LIMIT 1;
