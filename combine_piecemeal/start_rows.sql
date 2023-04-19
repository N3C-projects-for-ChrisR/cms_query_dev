   select pid, start_date, end_date,  all_index, row_index, 'START' as status, --  ?????? TODO do these need a visit_detail_id?
   row_number() over (partition by pid order by end_date) as start_idx
   into start_rows
   from tagged_rows tr
   where all_index in ( 
     select all_index -1 -- ouch. why?
     from end_rows er 
     where tr.pid = er.pid
       and  (tr.all_index + 1) = er.all_index -- finding rows that come after then end of a group...the start of the next group
   )
