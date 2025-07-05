# Partitioning Performance Report

## Before Partitioning

- Query on bookings by date range took ~220ms.
- EXPLAIN ANALYZE showed sequential scan on entire bookings table.

## After Partitioning

- Same query on bookings_partitioned table took ~45ms.
- Execution plan used "Pruning" to scan only relevant partitions.

## Conclusion

Partitioning by start_date significantly reduced the I/O cost and execution time.
Greatly optimized performance for time-range based queries on large datasets.
