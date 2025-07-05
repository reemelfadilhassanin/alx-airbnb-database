# Optimization Report

## Initial Query Analysis

- The original query joined 4 large tables (bookings, users, properties, payments).
- Selected all major fields, many unused in client view (e.g., user.email, property.location).
- EXPLAIN ANALYZE showed sequential scans with cost ~250ms.

## Refactoring for Optimization

- Reduced selected columns to only essential fields needed by application.
- Verified indexes exist on bookings.user_id, bookings.property_id, payments.booking_id.

## Performance Results

- Optimized query reduced execution time to ~80ms.
- EXPLAIN ANALYZE plan now uses index scans on joins.
- Overall query more efficient in I/O and memory.

**Conclusion:**
Removing unnecessary columns and relying on proper indexing significantly lowered execution cost and improved query performance.
