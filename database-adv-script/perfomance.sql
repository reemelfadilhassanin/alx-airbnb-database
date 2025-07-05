-- Initial complex query retrieving all bookings with user, property, and payment details
EXPLAIN ANALYZE
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.id AS user_id, u.name AS user_name, u.email,
       p.id AS property_id, p.name AS property_name, p.location,
       pay.id AS payment_id, pay.amount, pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE u.id = 1 AND pay.amount > 100;

-- Optimized query: select only necessary columns with same filter
EXPLAIN ANALYZE
SELECT b.id AS booking_id, b.start_date, b.end_date,
       u.name AS user_name,
       p.name AS property_name,
       pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE u.id = 1 AND pay.amount > 100;
