   select er.pid,
       sr.start_date as start_start, sr.end_date as start_end, sr.all_index as start_all_index, sr.row_index as start_row_index,
       er.start_date as end_start, er.end_date as end_end, er.all_index as end_all_index, er.row_index as end_row_index
   INTO ranges
   from END_ROWS er
   join START_ROWS sr on er.pid = sr.pid
   where sr.start_idx + 1 = er.end_idx
