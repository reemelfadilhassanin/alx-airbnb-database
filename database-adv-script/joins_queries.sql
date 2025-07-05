-- INNER JOIN to retrieve all bookings and the respective users who made those bookings
SELECT b.id AS booking_id, b.start_date, b.end_date, u.id AS user_id, u.name AS user_name
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews
SELECT p.id AS property_id, p.name AS property_name, r.id AS review_id, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id;

-- FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id, b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
