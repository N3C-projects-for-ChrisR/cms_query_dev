
-- pid 91 is a version of pid 1 with overlaps
-- WORKS
insert into contiguous_test_input values (91, '2022-01-01', '2022-01-31');
insert into contiguous_test_input values (91, '2022-01-31', '2022-02-28');
insert into contiguous_test_input values (91, '2022-02-28', '2022-03-31');
insert into contiguous_test_input values (91, '2022-03-31', '2022-04-30');

-- try and fake it out with a gap?
insert into contiguous_test_input values (92, '2022-01-01', '2022-01-31');
insert into contiguous_test_input values (92, '2022-01-20', '2022-02-15');
--insert into contiguous_test_input values (92, '2022-02-10', '2022-04-10');
insert into contiguous_test_input values (92, '2022-03-31', '2022-04-30');

-- pid 1 should have a combined visit 2022-01-01 to 2022-04-30
-- ...just abutting dates, not overlaps.
-- DOES NOT WORK
insert into contiguous_test_input values ( 1, '2022-01-01', '2022-01-31');
insert into contiguous_test_input values ( 1, '2022-02-01', '2022-02-28');
insert into contiguous_test_input values ( 1, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values ( 1, '2022-04-01', '2022-04-30');

-- pid 2 should have 2 visits  Jan and March
insert into contiguous_test_input values ( 2, '2022-01-01', '2022-01-31');
insert into contiguous_test_input values ( 2, '2022-03-01', '2022-03-31');

-- pids 3, 4, 5, 6 should have a combined visit that covers all of March
-- sort by end-date for consistency
-- 2 ranges, second starts in middle of first
insert into contiguous_test_input values ( 3, '2022-03-01', '2022-03-15');
insert into contiguous_test_input values ( 3, '2022-03-10', '2022-03-31');

-- 2 ranges, second starts before of first and is outside
insert into contiguous_test_input values ( 4, '2022-03-10', '2022-03-15');
insert into contiguous_test_input values ( 4, '2022-03-01', '2022-03-31');

-- 2 ranges, second starts on same day
insert into contiguous_test_input values ( 5, '2022-03-01', '2022-03-15');
insert into contiguous_test_input values ( 5, '2022-03-01', '2022-03-31');

-- 2 ranges, identical
insert into contiguous_test_input values ( 6, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values ( 6, '2022-03-01', '2022-03-31');

-- 2 ranges,  end on same day
insert into contiguous_test_input values ( 7, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values ( 7, '2022-03-10', '2022-03-31');

-- pids 93, 94, 95, 96 should have a combined visit that covers all of March
-- these are versions of 3,4,5,6 that have a range following. The ones above don't. 
-- sort by end-date for consistency
-- 2 ranges, second starts in middle of first
insert into contiguous_test_input values (93, '2022-03-01', '2022-03-15');
insert into contiguous_test_input values (93, '2022-03-10', '2022-03-31');
insert into contiguous_test_input values (93, '2022-04-02', '2022-04-30');

-- 2 ranges, second starts before of first and is outside
insert into contiguous_test_input values (94, '2022-03-10', '2022-03-15');
insert into contiguous_test_input values (94, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values (94, '2022-04-02', '2022-04-30');

-- 2 ranges, second starts on same day
insert into contiguous_test_input values (95, '2022-03-01', '2022-03-15');
insert into contiguous_test_input values (95, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values (95, '2022-04-02', '2022-04-30');

-- 2 ranges, identical
insert into contiguous_test_input values (96, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values (96, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values (96, '2022-04-02', '2022-04-30');

-- 2 ranges,  end on same day
insert into contiguous_test_input values (97, '2022-03-01', '2022-03-31');
insert into contiguous_test_input values (97, '2022-03-10', '2022-03-31');
insert into contiguous_test_input values (97, '2022-04-02', '2022-04-30');


-- 3 ranges: end dates are distinct, starts are in same order
-- orders of inputs: abc, acb, bca, bac, cab, cba
-- (outputs always abc)


insert into contiguous_test_input values ( 8, '2022-03-01', '2022-03-20');
insert into contiguous_test_input values ( 8, '2022-03-05', '2022-03-25');
insert into contiguous_test_input values ( 8, '2022-03-10', '2022-03-31');
insert into contiguous_test_input values ( 8, '2022-04-02', '2022-04-30');

