-- INNER JOIN to retrieve all bookings and their users
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN to retrieve all properties and their reviews (even if no reviews)
SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN to retrieve all users and bookings (even if unmatched)
SELECT u.*, b.*
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
