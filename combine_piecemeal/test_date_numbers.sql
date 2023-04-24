select 'pid 1' as case_name;
select pid from date_numbers where pid = 1 and date_type = 'a_start'   and the_date = date('2022-01-01') and idx = 1;
select pid from date_numbers where pid = 1 and date_type = 'x_end'     and the_date = date('2022-01-31') and idx = 2;
select pid from date_numbers where pid = 1 and date_type = 'a_start'   and the_date = date('2022-02-01') and idx = 3;
select pid from date_numbers where pid = 1 and date_type = 'x_end'     and the_date = date('2022-02-28') and idx = 4;
select pid from date_numbers where pid = 1 and date_type = 'a_start'   and the_date = date('2022-03-01') and idx = 5;
select pid from date_numbers where pid = 1 and date_type = 'x_end'     and the_date = date('2022-03-31') and idx = 6;
select pid from date_numbers where pid = 1 and date_type = 'a_start'   and the_date = date('2022-04-01') and idx = 7;
select pid from date_numbers where pid = 1 and date_type = 'x_end'     and the_date = date('2022-04-30') and idx = 8;

select 'pid 2' as case_name;
select pid from date_numbers where pid = 2 and date_type = 'a_start'   and the_date = date('2022-01-01') and idx = 1;
select pid from date_numbers where pid = 2 and date_type = 'x_end'     and the_date = date('2022-01-31') and idx = 2;
select pid from date_numbers where pid = 2 and date_type = 'a_start'   and the_date = date('2022-03-01') and idx = 3;
select pid from date_numbers where pid = 2 and date_type = 'x_end'     and the_date = date('2022-03-31') and idx = 4;

select 'pid 3' as case_name;
select pid from date_numbers where pid = 3 and date_type = 'a_start'   and the_date = date('2022-03-01') and idx = 1; 
select pid from date_numbers where pid = 3 and date_type = 'a_start'   and the_date = date('2022-03-10') and idx = 2; 
select pid from date_numbers where pid = 3 and date_type = 'x_end'     and the_date = date('2022-03-15') and idx = 3; 
select pid from date_numbers where pid = 3 and date_type = 'x_end'     and the_date = date('2022-03-31') and idx = 4; 

select 'pid 4' as case_name;
select 5, pid from date_numbers where pid =  5 and date_type = 'a_start' and the_date = date('2022-03-01') and idx =  1; 
select 5, pid from date_numbers where pid =  5 and date_type = 'a_start' and the_date = date('2022-03-01') and idx =  2; 
select 5, pid from date_numbers where pid =  5 and date_type = 'x_end'   and the_date = date('2022-03-15') and idx =  3; 
select 5, pid from date_numbers where pid =  5 and date_type = 'x_end'   and the_date = date('2022-03-31') and idx =  4; 

select 'pid 5' as case_name;
select 6, pid from date_numbers where pid =  6 and date_type = 'a_start' and the_date = date('2022-03-01') and idx =  1;
select 6, pid from date_numbers where pid =  6 and date_type = 'a_start' and the_date = date('2022-03-01') and idx =  2;
select 6, pid from date_numbers where pid =  6 and date_type = 'x_end'   and the_date = date('2022-03-31') and idx =  3;
select 6, pid from date_numbers where pid =  6 and date_type = 'x_end'   and the_date = date('2022-03-31') and idx =  4;

select 'pid 6' as case_name;
select pid from date_numbers where pid =  7 and date_type = 'a_start' and the_date = date('2022-03-01') and idx =  1;
select pid from date_numbers where pid =  7 and date_type = 'a_start' and the_date = date('2022-03-10') and idx =  2;
select pid from date_numbers where pid =  7 and date_type = 'x_end'   and the_date = date('2022-03-31') and idx =  3;
select pid from date_numbers where pid =  7 and date_type = 'x_end'   and the_date = date('2022-03-31') and idx =  4;

select 'pid 7' as case_name;
select pid from date_numbers where pid =  8 and date_type = 'a_start' and the_date = date('2022-03-01') and idx =  1; 
select pid from date_numbers where pid =  8 and date_type = 'a_start' and the_date = date('2022-03-05') and idx =  2; 
select pid from date_numbers where pid =  8 and date_type = 'a_start' and the_date = date('2022-03-10') and idx =  3; 
select pid from date_numbers where pid =  8 and date_type = 'a_start' and the_date = date('2022-04-02') and idx =  7; 
select pid from date_numbers where pid =  8 and date_type = 'x_end'   and the_date = date('2022-03-25') and idx =  5; 
select pid from date_numbers where pid =  8 and date_type = 'x_end'   and the_date = date('2022-03-31') and idx =  6; 
select pid from date_numbers where pid =  8 and date_type = 'x_end'   and the_date = date('2022-04-30') and idx =  8; 
select pid from date_numbers where pid =  8 and date_type = 'x_end'   and the_date = date('2022-03-20') and idx =  4; 
