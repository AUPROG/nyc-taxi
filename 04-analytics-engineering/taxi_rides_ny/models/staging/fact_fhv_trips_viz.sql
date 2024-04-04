CREATE VIEW v_fact_fhv_trips_viz AS (
    SELECT
        EXTRACT(MONTH FROM pickup_datetime) AS trip_month,
        COUNT(*) AS trip_count
    FROM fact_fhv_trips
    GROUP BY trip_month
    ORDER BY trip_month;
);