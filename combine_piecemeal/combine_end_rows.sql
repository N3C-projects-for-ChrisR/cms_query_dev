 select pid, start_date, end_date,  all_index, row_index, date_type, 'END' as status, -- ????? TODO do these need a visit_detail_id?
   row_number() over(partition by pid order by end_date) as end_idx
    into end_rows
 from tagged_rows
 where all_index = 2 * row_index
