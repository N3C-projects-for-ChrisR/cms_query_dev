
-- I read the SO post like it would deal with contiguous ranges, hence the name.
-- But it seems to do the same as Chris Knoll's magic, combining overlaps.
-- I will try to tweak it to deal with gaps, of which abutting dates are a special case...
-- Ultimately, I wonder if the cross-join here will kill this query at scale.

WITH PRELIM as (
    SELECT s1.pid, s1.start_dt, MIN(t1.end_dt) AS end_dt
    FROM contiguous_test_input s1 
    JOIN contiguous_test_input t1  
      ON (s1.start_dt) <= (t1.end_dt + INTERVAL '-1 day' )
        and s1.pid = t1.pid 
      AND NOT EXISTS (SELECT pid, start_dt, end_dt 
                     FROM contiguous_test_input t2 -- simple t2 
                     --WHERE t1.pid = t2.pid and t1.end_dt >= t2.start_dt AND t1.end_dt < t2.end_dt) 
                     WHERE t2.pid = t1.pid and t2.start_dt <= (t1.end_dt + INTERVAL '1 day') AND t2.end_dt > (t1.end_dt + INTERVAL '1 day')  ) 
                     -- there are no rows, t2,  that start before or on the end of this, t1,  row and end after its end..
                     -- and adding to to t1.end so it can be later, and  substracting so it can be earlier
                     -- (might only need the addition on the end)
    WHERE NOT EXISTS (SELECT pid,  start_dt, end_dt 
                     FROM contiguous_test_input s2 -- simple s2 
                     --WHERE s1.pid = s2.pid and s1.start_dt > s2.start_dt AND s1.start_dt <= s2.end_dt) 
                     WHERE s1.pid = s2.pid and s2.start_dt < (s1.start_dt + INTERVAL '-1 day') AND s2.end_dt >= (s1.start_dt + INTERVAL '-1 day') ) 
                     -- there are no rows that start before the start of the this row and end after or on its start
    GROUP BY s1.start_dt, s1.pid
    ORDER BY s1.start_dt
)

SELECT start_dt, end_dt, pid,
       ROW_NUMBER() OVER(PARTITION BY s1.pid ORDER BY s1.end_dt) AS ID
INTO simple_contiguous
FROM PRELIM s1

