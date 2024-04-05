# Fact Table: fact_fhv_trips

This table stores data about For-Hire Vehicle trips for the year 2019.

## Columns:

- `pickup_datetime`: The date and time when the trip started.
- `dropoff_datetime`: The date and time when the trip ended.
- `pickup_location`: The location where the trip started.
- `dropoff_location`: The location where the trip ended.
- Add any other relevant columns for your analysis.

## Tests:

- **unique_key**: Checks if the combination of `pickup_datetime`, `pickup_location`, and `dropoff_location` forms a unique key.
- **not_null**: Checks if the `pickup_datetime` column has no null values.