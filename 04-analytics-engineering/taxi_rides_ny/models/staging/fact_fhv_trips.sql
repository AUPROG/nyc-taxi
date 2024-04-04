{{config(materialized = "view")}}

WITH known_locations AS (
    SELECT *
    FROM stg_fhv_tripdata
    WHERE pickup_location IS NOT NULL
    AND dropoff_location IS NOT NULL
)


CREATE TABLE fact_fhv_trips AS (
    SELECT
        pickup_datetime,
        dropoff_datetime,
        pickup_location,
        dropoff_location,
    FROM known_locations
);