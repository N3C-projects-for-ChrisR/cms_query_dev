
WITH rows_end_dates_order_prelim AS (
    SELECT distinct pid, end_dt, start_dt
    FROM raw_claim
)
SELECT * ,
row_number() over(partition by pid order by end_dt) as idx
INTO range_numbers
FROM  rows_end_dates_order_prelim

