CREATE TABLE "User" (
  user_id UUID PRIMARY KEY,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  password_hash VARCHAR NOT NULL,
  phone_number VARCHAR,
  role VARCHAR CHECK (role IN ('guest', 'host', 'admin')) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "Property" (
  property_id UUID PRIMARY KEY,
  host_id UUID REFERENCES "User"(user_id),
  name VARCHAR NOT NULL,
  description TEXT NOT NULL,
  location VARCHAR NOT NULL,
  pricepernight DECIMAL NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Continue for Booking, Payment, Review, Message
