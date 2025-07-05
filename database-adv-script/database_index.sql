-- Create index on bookings.user_id for faster user lookup
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on reviews.property_id for faster property reviews
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Create index on bookings.start_date to speed up date range queries
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
