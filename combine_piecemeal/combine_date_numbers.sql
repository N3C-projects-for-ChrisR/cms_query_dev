
WITH rows_all_dates_prelim AS (
    (SELECT distinct pid, end_dt as the_date, 'x_end' as date_type -- clever naming so end comes after start in alphabetical order
    FROM raw_claim)
  UNION
    (SELECT distinct pid, start_dt as the_date,'a_start' as date_type
    FROM raw_claim)
)
SELECT pid, date_type, the_date, row_number() over( partition by pid order by the_date, date_type ) as idx
INTO date_numbers
FROM rows_all_dates_prelim
