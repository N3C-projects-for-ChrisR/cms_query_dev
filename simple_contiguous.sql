
-- create table contiguous_out AS  (see INTO below)
-- just trying to combine contiguous visit_details here, for now.

--WITH simple AS (
--    SELECT distinct pid,
--    end_dt,
--    start_dt
--    FROM raw_claim
--),

-- WITH PRELIM as (
    SELECT s1.pid, s1.start_dt, MIN(t1.end_dt) AS end_dt
    FROM raw_claim s1 --simple s1
    JOIN raw_claim t1 --simple t1 
      ON s1.start_dt <= t1.end_dt and s1.pid = t1.pid 
      AND NOT EXISTS (SELECT pid, start_dt, end_dt 
                     FROM raw_claim t2 -- simple t2 
                     WHERE t1.end_dt >= t2.start_dt AND t1.end_dt < t2.end_dt) 
    WHERE NOT EXISTS (SELECT pid,  start_dt, end_dt 
                     FROM raw_claim s2 -- simple s2 
                     WHERE s1.start_dt > s2.start_dt AND s1.start_dt <= s2.end_dt) 
    GROUP BY s1.start_dt, s1.pid
    ORDER BY s1.start_dt
-- )

-- 46 rows,  dentical 40 have ID 1???
-- SELECT pid, start_dt, end_dt,
--       ROW_NUMBER() OVER(PARTITION BY s1.pid ORDER BY s1.end_dt) AS ID
-- INTO simple_contiguous
-- FROM PRELIM s1

--  SELECT s1.pid, ROW_NUMBER() 
--         OVER(PARTITION BY s1.pid ORDER BY s1.end_dt) AS ID,
--         s1.start_dt, 
--         MIN(t1.end_dt) AS end_dt
--  INTO simple_contiguous
--  FROM simple s1
--  INNER JOIN simple   t1 
--  ON s1.start_dt <= t1.end_dt and s1.pid = t1.pid 
--    AND NOT EXISTS(SELECT pid, start_dt, end_dt 
--                   FROM simple t2 
--                   WHERE t1.end_dt >= t2.start_dt AND t1.end_dt < t2.end_dt) 
--  WHERE NOT EXISTS(SELECT pid,  start_dt, end_dt 
--                   FROM simple s2 
--                   WHERE s1.start_dt > s2.start_dt AND s1.start_dt <= s2.end_dt) 
--  GROUP BY s1.start_dt, s1.pid, ID
--  ORDER BY s1.start_dt
