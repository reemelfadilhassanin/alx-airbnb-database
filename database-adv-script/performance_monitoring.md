# Database Performance Monitoring Report

## Monitoring Using EXPLAIN ANALYZE

Executed frequently used queries with EXPLAIN ANALYZE to check performance.

### Example Query 1

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;
```
