# Normalization to 3NF

## 1NF

- All tables have atomic columns and unique rows.

## 2NF

- No partial dependencies (all non-key attributes fully depend on PK).

## 3NF

- No transitive dependencies:
  - Payments link directly to Bookings.
  - Reviews link directly to Users and Properties.
  - Messages explicitly relate sender and recipient.

Thus, our design is in 3NF.
