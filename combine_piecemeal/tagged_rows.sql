 select distinct
   dn.pid,
   rn.start_dt as start_date, 
   rn.end_dt  as end_date,
   rn.idx as row_index,
   dn.idx as all_index, 
   dn.the_date as the_date, 
   dn.date_type
 into tagged_rows 
 from date_numbers dn
 join range_numbers rn on dn.pid = rn.pid
   and rn.end_dt = dn.the_date
