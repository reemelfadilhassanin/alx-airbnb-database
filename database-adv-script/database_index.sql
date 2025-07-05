-- Check performance before indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * FROM reviews WHERE property_id = 10;

-- Create indexes to improve performance
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Check performance after indexing
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

EXPLAIN ANALYZE
SELECT * FROM reviews WHERE property_id = 10;
