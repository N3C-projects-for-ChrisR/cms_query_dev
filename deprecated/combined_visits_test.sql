
-- don't just check for the right answers, but that there are no others
-- (the commendted out rows started out as inserts and the where-clauses show the data)

-- pid 2 should have 2 visits  Jan and March
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  2 and start_dt = date('2022-01-01') and end_dt = date('2022-01-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  2 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from combined_visits  where pid =  2  group by pid having count(*) !=2;

-- pids 3 and start_dt = date(4 and start_dt = date(5 and start_dt = date(6 should have a combined visit that covers all of March
-- sort by end-date for consistency
-- 2 ranges and start_dt = date(second starts in middle of first
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  3 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from combined_visits  where pid =  3 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date(second starts before of first and is outside
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  4 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from combined_visits  where pid =  4 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date(second starts on same day
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  5 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from combined_visits  where pid =  5 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date(identical
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  6 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from combined_visits  where pid =  6 group by pid having count(*) !=1;

-- 2 ranges and start_dt = date( end on same day
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  7 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 2 as good from combined_visits  where pid =  7 group by pid having count(*) !=1;




-- 3 ranges: end dates are distinct and start_dt = date(starts are in same order
-- orders of inputs: abc and start_dt = date(acb and start_dt = date(bca and start_dt = date(bac and start_dt = date(cab and start_dt = date(cba
-- (outputs always abc)


-- abc
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  8 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  8 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- acb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  9 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  9 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- bca
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  10 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  10 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- bac
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  11 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  11 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cab
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 12 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  12 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 13 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  13 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- aac
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 14 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid =  14 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- acc
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 15 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 15 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- caa
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 16 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 16 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cca
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 17 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 17 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;


-- abc : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 18 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 18 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- acb : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 19 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 19 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- bca :  abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 20 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 20 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- bac : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 21 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 20 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cab : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 22 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 22 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cba : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 23 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 23 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- aac : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 24 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 24 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- acc : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 25 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 25 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- caa : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 26 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 26 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cca : abb
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 27 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 27 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- abc : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 28 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 28 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- acb : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 29 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 29 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- bca :  bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 30 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 30 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- bac : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 31 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 31 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cab : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 32 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 32 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cba : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 33 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 33 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- aac : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 34 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 34 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- acc : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 35 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 35 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- caa : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 36 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 36 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

-- cca : bba
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 37 and start_dt = date('2022-04-02') and end_dt = date('2022-04-30') group by pid having count(*) != 1;
select pid, count(*) as ct, count(*) = 1 as good from combined_visits  where pid = 37 and start_dt = date('2022-03-01') and end_dt = date('2022-03-31') group by pid having count(*) != 1;

