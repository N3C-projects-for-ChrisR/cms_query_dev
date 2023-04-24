
WITH rows_end_dates_order_prelim AS (
    SELECT distinct pid, end_dt, start_dt
    FROM raw_claim
),
rows_end_dates AS (
    SELECT * ,
      row_number() over(partition by pid order by end_dt) as idx
    FROM  rows_end_dates_order_prelim
),
rows_all_dates_prelim AS (
    (SELECT distinct pid, end_dt as the_date, 'x_end' as date_type -- clever naming so end comes after start in alphabetical order
    FROM raw_claim)
  UNION
    (SELECT distinct pid, start_dt as the_date,'a_start' as date_type
    FROM raw_claim)
),
rows_all_dates AS (  -- don't include date_type in the partition!!! TODO
    select pid, date_type, the_date, 
      row_number() over( partition by pid order by the_date, date_type ) as idx
    FROM rows_all_dates_prelim
),
TAGGED_ROWS as (
 select distinct
   rado.pid,
   redo.start_dt as start_date, 
   redo.end_dt  as end_date,
   redo.idx as row_index,
   rado.idx as all_index, 
   the_date as the_date, rado.date_type
 from rows_all_dates rado
 join rows_end_dates redo on rado.pid = redo.pid
   and redo.end_dt = rado.the_date
)
,END_ROWS as (
 select pid, start_date, end_date,  all_index, row_index, date_type, 'END' as status, -- ????? TODO do these need a visit_detail_id?
   row_number() over(partition by pid order by end_date) as end_idx
 from TAGGED_ROWS
 where all_index = 2 * row_index
)
--# 
--# -- In the process of finding the beginning dates of these groups,
--# -- tag a group number onto each visit_detail row that has a all_index
--# -- value one greater than ones in END_ROWS. These are the START_ROWS
,START_ROWS as (
   select pid, start_date, end_date,  all_index, row_index, 'START' as status, --  ?????? TODO do these need a visit_detail_id?
   row_number() over (partition by pid order by end_date) as start_idx
   from TAGGED_ROWS tr
   where all_index in ( 
     select all_index -1 -- ouch. why?
     from END_ROWS er 
     where tr.pid = er.pid
       and  (tr.all_index + 1) = er.all_index -- finding rows that come after then end of a group...the start of the next group
   )
)
--# 
--# -- line them up by indexes. Off by one because there isn't one to end before the first one starts...
--,RANGES as (
   select er.pid,
       sr.start_date as start_start, sr.end_date as start_end, sr.all_index as start_all_index, sr.row_index as start_row_index,
       er.start_date as end_start, er.end_date as end_end, er.all_index as end_all_index, er.row_index as end_row_index
--   INTO combined_visits
   from END_ROWS er
   join START_ROWS sr on er.pid = sr.pid
   where sr.start_idx + 1 = er.end_idx
-- )
--# 
