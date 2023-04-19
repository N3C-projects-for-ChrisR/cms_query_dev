
-- errors are rows that do not have a result here.

select pid, count(*) from range_numbers where pid = 1 and end_dt = date('2022-01-31') and start_dt = date(' 2022-01-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 1 and end_dt = date('2022-02-28') and start_dt = date(' 2022-02-01') and idx =  2
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 1 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx =  3
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 1 and end_dt = date('2022-04-30') and start_dt = date(' 2022-04-01') and idx =  4
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 2 and end_dt = date('2022-01-31') and start_dt = date(' 2022-01-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 2 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx =  2
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 3 and end_dt = date('2022-03-15') and start_dt = date(' 2022-03-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 3 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-10') and idx =  2
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 4 and end_dt = date('2022-03-15') and start_dt = date(' 2022-03-10') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 4 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx =  2
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 5 and end_dt = date('2022-03-15') and start_dt = date(' 2022-03-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 5 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx =  2
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 6 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 6 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx = 2
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 7 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 7 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-10') and idx =  2
group by pid having count(*) =1;

select pid, count(*) from range_numbers where pid = 8 and end_dt = date('2022-03-20') and start_dt = date(' 2022-03-01') and idx =  1
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 8 and end_dt = date('2022-03-25') and start_dt = date(' 2022-03-05') and idx =  2
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 8 and end_dt = date('2022-03-31') and start_dt = date(' 2022-03-10') and idx =  3
group by pid having count(*) =1;
select pid, count(*) from range_numbers where pid = 8 and end_dt = date('2022-04-30') and start_dt = date(' 2022-04-02') and idx =  4
group by pid having count(*) =1;
