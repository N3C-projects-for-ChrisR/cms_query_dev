-- code and test need lots of help here

select 'pid 3' as case_name;
select count(*), pid from start_rows where pid = 3  and start_date = date('2022-03-01') and end_date = date('2022-03-15') and all_index = 3 and row_index =  1 and status = 'START' and start_idx = 1 group by pid;

select 'pid 4' as case_name;
select count(*), pid from start_rows where pid = 4  and start_date = date('2022-03-10') and end_date = date('2022-03-15') and all_index = 3 and row_index =  1 and status = 'START'  and start_idx = 1 group by pid;

select 'pid 8' as case_name;
select count(*), pid from start_rows where pid = 8  and start_date = date('2022-03-05') and end_date = date('2022-03-25') and all_index = 5 and row_index =  2 and status = 'START'  and start_idx = 1 group by pid;
