
select 'pid 1' as case_name;
select pid, count(*) from tagged_rows where pid =  1 and start_date = date('2022-01-01') and end_date = date(' 2022-01-31') and row_index = 1 and all_index = 2 and the_date = date('2022-01-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  1 and start_date = date('2022-02-01') and end_date = date(' 2022-02-28') and row_index = 2 and all_index = 4 and the_date = date('2022-02-28') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  1 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 3 and all_index = 6 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  1 and start_date = date('2022-04-01') and end_date = date(' 2022-04-30') and row_index = 4 and all_index = 8 and the_date = date('2022-04-30') and date_type = 'x_end' group by pid;

select 'pid 2' as case_name;
select pid, count(*) from tagged_rows where pid =  2 and start_date = date('2022-01-01') and end_date = date(' 2022-01-31') and row_index = 1 and all_index = 2 and the_date = date('2022-01-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  2 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 2 and all_index = 4 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;

select 'pid 3' as case_name;
select pid, count(*) from tagged_rows where pid =  3 and start_date = date('2022-03-01') and end_date = date(' 2022-03-15') and row_index = 1 and all_index = 3 and the_date = date('2022-03-15') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  3 and start_date = date('2022-03-10') and end_date = date(' 2022-03-31') and row_index = 2 and all_index = 4 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;

select 'pid 3' as case_name;
select pid, count(*) from tagged_rows where pid =  4 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 2 and all_index = 4 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  4 and start_date = date('2022-03-10') and end_date = date(' 2022-03-15') and row_index = 1 and all_index = 3 and the_date = date('2022-03-15') and date_type = 'x_end' group by pid;

select 'pid 4' as case_name;
select pid, count(*) from tagged_rows where pid =  5 and start_date = date('2022-03-01') and end_date = date(' 2022-03-15') and row_index = 1 and all_index = 3 and the_date = date('2022-03-15') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  5 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 2 and all_index = 4 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;

select 'pid 5' as case_name;
select pid, count(*) from tagged_rows where pid =  6 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 1 and all_index = 2 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  6 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 2 and all_index = 4 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;

select 'pid 6' as case_name;
select pid, count(*) from tagged_rows where pid =  7 and start_date = date('2022-03-01') and end_date = date(' 2022-03-31') and row_index = 1 and all_index = 3 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  7 and start_date = date('2022-03-10') and end_date = date(' 2022-03-31') and row_index = 2 and all_index = 4 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;

select 'pid 7' as case_name;
select pid, count(*) from tagged_rows where pid =  8 and start_date = date('2022-03-01') and end_date = date(' 2022-03-20') and row_index = 1 and all_index = 4 and the_date = date('2022-03-20') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  8 and start_date = date('2022-03-05') and end_date = date(' 2022-03-25') and row_index = 2 and all_index = 5 and the_date = date('2022-03-25') and date_type = 'x_end' group by pid;

select 'pid 8' as case_name;
select pid, count(*) from tagged_rows where pid =  8 and start_date = date('2022-03-10') and end_date = date(' 2022-03-31') and row_index = 3 and all_index = 6 and the_date = date('2022-03-31') and date_type = 'x_end' group by pid;
select pid, count(*) from tagged_rows where pid =  8 and start_date = date('2022-04-02') and end_date = date(' 2022-04-30') and row_index = 4 and all_index = 8 and the_date = date('2022-04-30') and date_type = 'x_end' group by pid;
