{{config(materialized = "view")}}

WITH fhv_trips_2019 AS (
    SELECT *
    FROM trips_data_all.green_tripdata
    WHERE EXTRACT(YEAR FROM pickup_datetime) = 2019
)


CREATE TABLE stg_fhv_tripdata AS (
    SELECT *
    FROM fhv_trips_2019
);