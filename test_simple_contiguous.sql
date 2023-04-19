
-- pid, id, start_dt, end_dt
select 92 as case_number;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 92 and start_dt = date('2022-01-01') and end_dt = date('2022-02-15') group by pid;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 92 and start_dt = date('2022-03-31') and end_dt = date('2022-04-30') group by pid;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 92 group by pid ;

select 91 as case_number;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 91 and start_dt = date('2022-01-01') and end_dt = date('2022-04-30') group by pid;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 91 group by pid ;

-- pid 1 should have a combined visit 2022-01-01 to 2022-04-30 FAILS because the dates don't overlap (see 91)
select 1 as case_number;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  1 and start_dt = date('2022-01-01') and end_dt = date('2022-04-30') group by pid;
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 1 group by pid ;

