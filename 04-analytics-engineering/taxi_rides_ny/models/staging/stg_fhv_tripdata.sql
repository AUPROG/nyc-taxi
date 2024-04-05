CREATE TABLE `taxi-nyc-419320.dbt_u_malik.stg_fhv_tripdata` AS (
    WITH fhv_trips_2019 AS (
        SELECT *
        FROM trips_data_all.green_tripdata
        WHERE EXTRACT(YEAR FROM pickup_datetime) = 2019
    )
    
    SELECT *
    FROM fhv_trips_2019
);