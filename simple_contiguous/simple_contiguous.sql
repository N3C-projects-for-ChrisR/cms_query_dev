
-- create table contiguous_out AS  (see INTO below)
-- just trying to combine contiguous visit_details here, for now.

WITH PRELIM as (
    SELECT s1.pid, s1.start_dt, MIN(t1.end_dt) AS end_dt
    FROM contiguous_test_input s1 
    JOIN contiguous_test_input t1  
      ON s1.start_dt <= t1.end_dt and s1.pid = t1.pid 
      AND NOT EXISTS (SELECT pid, start_dt, end_dt 
                     FROM contiguous_test_input t2 -- simple t2 
                     WHERE t1.pid = t2.pid and t1.end_dt >= t2.start_dt AND t1.end_dt < t2.end_dt) 
                     -- there are no rows that start before or on the end of this row and end after its end..
    WHERE NOT EXISTS (SELECT pid,  start_dt, end_dt 
                     FROM contiguous_test_input s2 -- simple s2 
                     WHERE s1.pid = s2.pid and s1.start_dt > s2.start_dt AND s1.start_dt <= s2.end_dt) 
                    -- there are no rows that start before the start of the this row and end after or on its start
    GROUP BY s1.start_dt, s1.pid
    ORDER BY s1.start_dt
)

SELECT start_dt, end_dt, pid,
       ROW_NUMBER() OVER(PARTITION BY s1.pid ORDER BY s1.end_dt) AS ID
INTO simple_contiguous
FROM PRELIM s1

