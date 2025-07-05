# Index Performance Report

## Before Indexing

- Fetch bookings by user took ~120ms.
- Fetch reviews by property took ~95ms.

## After Indexing

- Fetch bookings by user reduced to ~30ms.
- Fetch reviews by property reduced to ~22ms.

Used EXPLAIN to compare execution plans. Index scan replaced sequential scan.
