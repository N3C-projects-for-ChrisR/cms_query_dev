
-- pid 1 should have a combined visit 2022-01-01 to 2022-04-30
insert into raw_claim values ( 1, '2022-01-01', '2022-01-31');
insert into raw_claim values ( 1, '2022-02-01', '2022-02-28');
insert into raw_claim values ( 1, '2022-03-01', '2022-03-31');
insert into raw_claim values ( 1, '2022-04-01', '2022-04-30');

-- pid 2 should have 2 visits  Jan and March
insert into raw_claim values ( 2, '2022-01-01', '2022-01-31');
insert into raw_claim values ( 2, '2022-03-01', '2022-03-31');

-- pids 3, 4, 5, 6 should have a combined visit that covers all of March
-- sort by end-date for consistency
-- 2 ranges, second starts in middle of first
insert into raw_claim values ( 3, '2022-03-01', '2022-03-15');
insert into raw_claim values ( 3, '2022-03-10', '2022-03-31');

-- 2 ranges, second starts before of first and is outside
insert into raw_claim values ( 4, '2022-03-10', '2022-03-15');
insert into raw_claim values ( 4, '2022-03-01', '2022-03-31');

-- 2 ranges, second starts on same day
insert into raw_claim values ( 5, '2022-03-01', '2022-03-15');
insert into raw_claim values ( 5, '2022-03-01', '2022-03-31');

-- 2 ranges, identical
insert into raw_claim values ( 6, '2022-03-01', '2022-03-31');
insert into raw_claim values ( 6, '2022-03-01', '2022-03-31');

-- 2 ranges,  end on same day
insert into raw_claim values ( 7, '2022-03-01', '2022-03-31');
insert into raw_claim values ( 7, '2022-03-10', '2022-03-31');

-- pids 93, 94, 95, 96 should have a combined visit that covers all of March
-- these are versions of 3,4,5,6 that have a range following. The ones above don't. 
-- sort by end-date for consistency
-- 2 ranges, second starts in middle of first
insert into raw_claim values (93, '2022-03-01', '2022-03-15');
insert into raw_claim values (93, '2022-03-10', '2022-03-31');
insert into raw_claim values (93, '2022-04-02', '2022-04-30');

-- 2 ranges, second starts before of first and is outside
insert into raw_claim values (94, '2022-03-10', '2022-03-15');
insert into raw_claim values (94, '2022-03-01', '2022-03-31');
insert into raw_claim values (94, '2022-04-02', '2022-04-30');

-- 2 ranges, second starts on same day
insert into raw_claim values (95, '2022-03-01', '2022-03-15');
insert into raw_claim values (95, '2022-03-01', '2022-03-31');
insert into raw_claim values (95, '2022-04-02', '2022-04-30');

-- 2 ranges, identical
insert into raw_claim values (96, '2022-03-01', '2022-03-31');
insert into raw_claim values (96, '2022-03-01', '2022-03-31');
insert into raw_claim values (96, '2022-04-02', '2022-04-30');

-- 2 ranges,  end on same day
insert into raw_claim values (97, '2022-03-01', '2022-03-31');
insert into raw_claim values (97, '2022-03-10', '2022-03-31');
insert into raw_claim values (97, '2022-04-02', '2022-04-30');


-- 3 ranges: end dates are distinct, starts are in same order
-- orders of inputs: abc, acb, bca, bac, cab, cba
-- (outputs always abc)


-- abc
insert into raw_claim values ( 8, '2022-03-01', '2022-03-20');
insert into raw_claim values ( 8, '2022-03-05', '2022-03-25');
insert into raw_claim values ( 8, '2022-03-10', '2022-03-31');
insert into raw_claim values ( 8, '2022-04-02', '2022-04-30');

-- acb
insert into raw_claim values ( 9, '2022-03-01', '2022-03-20');
insert into raw_claim values ( 9, '2022-03-10', '2022-03-25');
insert into raw_claim values ( 9, '2022-03-05', '2022-03-31');
insert into raw_claim values ( 9, '2022-04-02', '2022-04-30');

-- bca
insert into raw_claim values (10, '2022-03-05', '2022-03-20');
insert into raw_claim values (10, '2022-03-10', '2022-03-25');
insert into raw_claim values (10, '2022-03-01', '2022-03-31');
insert into raw_claim values ( 9, '2022-04-02', '2022-04-30');

-- bac
insert into raw_claim values (11, '2022-03-05', '2022-03-20');
insert into raw_claim values (11, '2022-03-01', '2022-03-25');
insert into raw_claim values (11, '2022-03-10', '2022-03-31');
insert into raw_claim values ( 9, '2022-04-02', '2022-04-30');

-- cab
insert into raw_claim values (12, '2022-03-10', '2022-03-20');
insert into raw_claim values (12, '2022-03-01', '2022-03-25');
insert into raw_claim values (12, '2022-03-05', '2022-03-31');
insert into raw_claim values (12, '2022-04-02', '2022-04-30');

-- cba
insert into raw_claim values (13, '2022-03-10', '2022-03-20');
insert into raw_claim values (13, '2022-03-05', '2022-03-25');
insert into raw_claim values (13, '2022-03-01', '2022-03-31');
insert into raw_claim values (13, '2022-04-02', '2022-04-30');

-- aac
insert into raw_claim values (14, '2022-03-01', '2022-03-20');
insert into raw_claim values (14, '2022-03-01', '2022-03-25');
insert into raw_claim values (14, '2022-03-10', '2022-03-31');
insert into raw_claim values (14, '2022-04-02', '2022-04-30');

-- acc
insert into raw_claim values (15, '2022-03-01', '2022-03-20');
insert into raw_claim values (15, '2022-03-10', '2022-03-25');
insert into raw_claim values (15, '2022-03-10', '2022-03-31');
insert into raw_claim values (15, '2022-04-02', '2022-04-30');

-- caa
insert into raw_claim values (16, '2022-03-10', '2022-03-20');
insert into raw_claim values (16, '2022-03-01', '2022-03-25');
insert into raw_claim values (16, '2022-03-01', '2022-03-31');
insert into raw_claim values (16, '2022-04-02', '2022-04-30');

-- cca
insert into raw_claim values (17, '2022-03-10', '2022-03-20');
insert into raw_claim values (17, '2022-03-10', '2022-03-25');
insert into raw_claim values (17, '2022-03-01', '2022-03-31');
insert into raw_claim values (17, '2022-04-02', '2022-04-30');


-- abc : abb
insert into raw_claim values (18, '2022-03-01', '2022-03-20');
insert into raw_claim values (18, '2022-03-05', '2022-03-25');
insert into raw_claim values (18, '2022-03-10', '2022-03-31');
insert into raw_claim values (18, '2022-04-02', '2022-04-30');

-- acb : abb
insert into raw_claim values (19, '2022-03-01', '2022-03-20');
insert into raw_claim values (19, '2022-03-10', '2022-03-25');
insert into raw_claim values (19, '2022-03-05', '2022-03-31');
insert into raw_claim values (19, '2022-04-02', '2022-04-30');

-- bca :  abb
insert into raw_claim values (20, '2022-03-05', '2022-03-20');
insert into raw_claim values (20, '2022-03-10', '2022-03-25');
insert into raw_claim values (20, '2022-03-01', '2022-03-31');
insert into raw_claim values (20, '2022-04-02', '2022-04-30');

-- bac : abb
insert into raw_claim values (21, '2022-03-05', '2022-03-20');
insert into raw_claim values (21, '2022-03-01', '2022-03-25');
insert into raw_claim values (21, '2022-03-10', '2022-03-31');
insert into raw_claim values (20, '2022-04-02', '2022-04-30');

-- cab : abb
insert into raw_claim values (22, '2022-03-10', '2022-03-20');
insert into raw_claim values (22, '2022-03-01', '2022-03-25');
insert into raw_claim values (22, '2022-03-05', '2022-03-31');
insert into raw_claim values (22, '2022-04-02', '2022-04-30');

-- cba : abb
insert into raw_claim values (23, '2022-03-10', '2022-03-20');
insert into raw_claim values (23, '2022-03-05', '2022-03-25');
insert into raw_claim values (23, '2022-03-01', '2022-03-31');
insert into raw_claim values (23, '2022-04-02', '2022-04-30');

-- aac : abb
insert into raw_claim values (24, '2022-03-01', '2022-03-20');
insert into raw_claim values (24, '2022-03-01', '2022-03-25');
insert into raw_claim values (24, '2022-03-10', '2022-03-31');
insert into raw_claim values (24, '2022-04-02', '2022-04-30');

-- acc : abb
insert into raw_claim values (25, '2022-03-01', '2022-03-20');
insert into raw_claim values (25, '2022-03-10', '2022-03-25');
insert into raw_claim values (25, '2022-03-10', '2022-03-31');
insert into raw_claim values (25, '2022-04-02', '2022-04-30');

-- caa : abb
insert into raw_claim values (26, '2022-03-10', '2022-03-20');
insert into raw_claim values (26, '2022-03-01', '2022-03-25');
insert into raw_claim values (26, '2022-03-01', '2022-03-31');
insert into raw_claim values (26, '2022-04-02', '2022-04-30');

-- cca : abb
insert into raw_claim values (27, '2022-03-10', '2022-03-20');
insert into raw_claim values (27, '2022-03-10', '2022-03-25');
insert into raw_claim values (27, '2022-03-01', '2022-03-31');
insert into raw_claim values (27, '2022-04-02', '2022-04-30');

-- abc : bba
insert into raw_claim values (28, '2022-03-01', '2022-03-20');
insert into raw_claim values (28, '2022-03-05', '2022-03-25');
insert into raw_claim values (28, '2022-03-10', '2022-03-31');
insert into raw_claim values (28, '2022-04-02', '2022-04-30');

-- acb : bba
insert into raw_claim values (29, '2022-03-01', '2022-03-20');
insert into raw_claim values (29, '2022-03-10', '2022-03-25');
insert into raw_claim values (29, '2022-03-05', '2022-03-31');
insert into raw_claim values (29, '2022-04-02', '2022-04-30');

-- bca :  bba
insert into raw_claim values (30, '2022-03-05', '2022-03-20');
insert into raw_claim values (30, '2022-03-10', '2022-03-25');
insert into raw_claim values (30, '2022-03-01', '2022-03-31');
insert into raw_claim values (30, '2022-04-02', '2022-04-30');

-- bac : bba
insert into raw_claim values (31, '2022-03-05', '2022-03-20');
insert into raw_claim values (31, '2022-03-01', '2022-03-25');
insert into raw_claim values (31, '2022-03-10', '2022-03-31');
insert into raw_claim values (31, '2022-04-02', '2022-04-30');

-- cab : bba
insert into raw_claim values (32, '2022-03-10', '2022-03-20');
insert into raw_claim values (32, '2022-03-01', '2022-03-25');
insert into raw_claim values (32, '2022-03-05', '2022-03-31');
insert into raw_claim values (32, '2022-04-02', '2022-04-30');

-- cba : bba
insert into raw_claim values (33, '2022-03-10', '2022-03-20');
insert into raw_claim values (33, '2022-03-05', '2022-03-25');
insert into raw_claim values (33, '2022-03-01', '2022-03-31');
insert into raw_claim values (33, '2022-04-02', '2022-04-30');

-- aac : bba
insert into raw_claim values (34, '2022-03-01', '2022-03-20');
insert into raw_claim values (34, '2022-03-01', '2022-03-25');
insert into raw_claim values (34, '2022-03-10', '2022-03-31');
insert into raw_claim values (34, '2022-04-02', '2022-04-30');

-- acc : bba
insert into raw_claim values (35, '2022-03-01', '2022-03-20');
insert into raw_claim values (35, '2022-03-10', '2022-03-25');
insert into raw_claim values (35, '2022-03-10', '2022-03-31');
insert into raw_claim values (35, '2022-04-02', '2022-04-30');

-- caa : bba
insert into raw_claim values (36, '2022-03-10', '2022-03-20');
insert into raw_claim values (36, '2022-03-01', '2022-03-25');
insert into raw_claim values (36, '2022-03-01', '2022-03-31');
insert into raw_claim values (36, '2022-04-02', '2022-04-30');

-- cca : bba
insert into raw_claim values (37, '2022-03-10', '2022-03-20');
insert into raw_claim values (37, '2022-03-10', '2022-03-25');
insert into raw_claim values (37, '2022-03-01', '2022-03-31');
insert into raw_claim values (37, '2022-04-02', '2022-04-30');

