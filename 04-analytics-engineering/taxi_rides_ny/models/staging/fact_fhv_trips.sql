CREATE OR REPLACE VIEW `taxi-nyc-419320.dbt_u_malik.fact_fhv_trips` AS (
    WITH known_locations AS (
        SELECT *
        FROM stg_fhv_tripdata
        WHERE pickup_location IS NOT NULL
        AND dropoff_location IS NOT NULL
    )
    
    SELECT
        pickup_datetime,
        dropoff_datetime,
        pickup_location,
        dropoff_location
    FROM known_locations
);