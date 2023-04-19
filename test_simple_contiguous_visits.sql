

-- contiguous_visits, tests a limited set of the test data where only the contiguous script needs to work

-- pid 1 should have a combined visit 2022-01-01 to 2022-04-30
--select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  1 and start_dt = date('2022-01-01') and end_dt = date('2022-01-31') group by pid having count(*) != 1;
--select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  1 and start_dt = date('2022-02-01') and end_dt = date('2022-02-28') group by pid having count(*) != 1;
--select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  1 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
--select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  1 and start_dt = date('2022-04-01') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  1 and start_dt = date('2022-01-01') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid = 1 group by pid having count(*) !=1;

-- pid 2 should have 2 visits  Jan and March
select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  2 and start_dt = date('2022-01-01') and end_dt = date('2022-01-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from raw_claim  where pid =  2 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from raw_claim  where pid =  2  group by pid having count(*) !=2;


