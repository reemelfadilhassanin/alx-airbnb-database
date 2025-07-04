-- Total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Rank properties using ROW_NUMBER() based on total number of bookings
SELECT property_id,
       COUNT(*) AS booking_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS property_row_number
FROM bookings
GROUP BY property_id;

-- Rank properties using RANK() based on total number of bookings
SELECT property_id,
       COUNT(*) AS booking_count,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM bookings
GROUP BY property_id;
