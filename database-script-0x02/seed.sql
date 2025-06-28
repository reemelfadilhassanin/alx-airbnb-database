
### ✍️ `seed.sql` example
```sql
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, role)
VALUES
('uuid1', 'Alice', 'Smith', 'alice@example.com', 'hash1', 'guest'),
('uuid2', 'Bob', 'Jones', 'bob@example.com', 'hash2', 'host');

INSERT INTO "Property" (property_id, host_id, name, description, location, pricepernight)
VALUES
('uuidp1', 'uuid2', 'Cozy Apartment', 'Nice place', 'Paris', 120.00);

INSERT INTO "Booking" (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('uuidb1', 'uuidp1', 'uuid1', '2025-07-01', '2025-07-05', 480.00, 'confirmed');

INSERT INTO "Payment" (payment_id, booking_id, amount, payment_method)
VALUES
('uuidpay1', 'uuidb1', 480.00, 'credit_card');
