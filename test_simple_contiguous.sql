
-- pid, id, start_dt, end_dt

-- pid 1 should have a combined visit 2022-01-01 to 2022-04-30
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  1 and start_dt = date('2022-01-01') and end_dt = date('2022-04-30');
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid = 1 group by pid having count(*) !=1;

-- pid 2 should have 2 visits  Jan and March
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  2 and start_dt = date('2022-01-01') and end_dt = date('2022-01-31');
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  2 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31');
select pid, count(*) as ct, count(*) = 2 as good from simple_contiguous  where pid =  2  group by pid having count(*) !=2;

-- pids 3 and start_dt = date(4 and start_dt = date(5 and start_dt = date(6 should have a combined visit that covers all of March
-- sort by end-date for consistency
-- 2 ranges and start_dt = date(second starts in middle of first
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  3 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31');
select pid, count(*) as ct, count(*) = 2 as good from simple_contiguous  where pid =  3 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date(second starts before of first and is outside
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  4 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31');
select pid, count(*) as ct, count(*) = 2 as good from simple_contiguous  where pid =  4 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date(second starts on same day
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  5 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31');
select pid, count(*) as ct, count(*) = 2 as good from simple_contiguous  where pid =  5 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date(identical
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  6 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31');
select pid, count(*) as ct, count(*) = 2 as good from simple_contiguous  where pid =  6 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date( end on same day
select pid, count(*) as ct, count(*) = 1 as good from simple_contiguous  where pid =  7 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31');
select pid, count(*) as ct, count(*) = 2 as good from simple_contiguous  where pid =  7 group by pid having count(*) !=1;



