
-- not sure abut the end_idx values

select 'pid 1' as case_name;
select pid, count(*) from end_rows where pid =  1 and start_date = date('2022-01-01') and end_date = date('2022-01-31') and all_index = 2 and row_index = 1  and end_idx =1
group by pid having count(*) = 1;
select pid, count(*) from end_rows where pid =  1 and start_date = date('2022-02-01') and end_date = date('2022-02-28') and all_index = 4 and row_index = 2  and end_idx =2
group by pid having count(*) = 1;
select pid, count(*) from end_rows where pid =  1 and start_date = date('2022-03-01') and end_date = date('2022-03-31') and all_index = 6 and row_index = 3  and end_idx =3
group by pid having count(*) = 1;
select pid, count(*) from end_rows where pid =  1 and start_date = date('2022-04-01') and end_date = date('2022-04-30') and all_index = 8 and row_index = 4  and end_idx =4
group by pid having count(*) = 1;

select 'pid 2' as case_name;
select pid, count(*) from end_rows where pid =  2 and start_date = date('2022-01-01') and end_date = date('2022-01-31') and all_index = 2 and row_index = 1  and end_idx =1
group by pid having count(*) = 1;
select pid, count(*) from end_rows where pid =  2 and start_date = date('2022-03-01') and end_date = date('2022-03-31') and all_index = 4 and row_index = 2  and end_idx =2
group by pid having count(*) = 1;

select 'pid 3' as case_name;
select pid, count(*) from end_rows where pid =  3 and start_date = date('2022-03-10') and end_date = date('2022-03-31') and all_index = 4 and row_index = 2  and end_idx =2
group by pid having count(*) = 1;

select 'pid 4' as case_name;
select pid, count(*) from end_rows where pid =  4 and start_date = date('2022-03-01') and end_date = date('2022-03-31') and all_index = 4 and row_index = 2  and end_idx =2
group by pid having count(*) = 1;

select 'pid 5' as case_name;
select pid, count(*) from end_rows where pid =  5 and start_date = date('2022-03-01') and end_date = date('2022-03-31') and all_index = 4 and row_index = 2  and end_idx = 2
group by pid having count(*) = 1; ------ ? 

select 'pid 6' as case_name;
select pid, count(*) from end_rows where pid =  6 and start_date = date('2022-03-01') and end_date = date('2022-03-31') and all_index = 2 and row_index = 1  and end_idx =1
group by pid having count(*) = 1; ---  4,2 as well?

select 'pid 8' as case_name;
select pid, count(*) from end_rows where pid =  8 and start_date = date('2022-03-10') and end_date = date('2022-03-31') and all_index = 6 and row_index = 3  and end_idx =1
group by pid having count(*) = 1;
select pid, count(*) from end_rows where pid =  8 and start_date = date('2022-04-02') and end_date = date('2022-04-30') and all_index = 8 and row_index = 4  and end_idx =2
group by pid having count(*) = 1;
