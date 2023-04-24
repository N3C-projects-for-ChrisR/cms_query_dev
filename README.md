# cms_query_dev
## date-range query development for N3C CMS work

This project contains ddl, data and sql to mimic the issues in rolling visit_detail up
into visit_occurrence. Since Spark can be slow for small amounts of data, this provides
a way to work on the queries with faster iterations on a lap-top local PostgreSQL instance
with test data.  Despite the names, the files are simplifed versions of claims. They are just date-ranges.

Projects are in subdirectories to check out two algorithms: combine_piecemeal, and simple_contiguous are described below.

Chris Roeder, April 2023


## Getting Started
- Set up a postgresql server and populate the environment with variables for the psql command.  This works out of the box with PostgresApp on mac.
  - https://postgresapp.com/
  - NB I was using "create TABLE_X as SELECT...." in Spark, but use "select * INTO TABLE_X FROM ..." in postgres. The latter means I need ddl for the output table. At one point it seemed like you needed to create the table with DDL beforehand, but then not. I don't use them, but left the files.
  - mac or Windows, regardless,  you should be able to run createdb, dropdb and psql from a command line. Apologies for not providing a version of  setup_and_run.sh in powershell. It's in a pretty simple dialect and porting it should be easy enough.
- run setup_and_run.sh. It will create the database, drop prior versions of the tables and re-create them, populate the test data, run the scripts, and then run tests.

## FILES

### Test Data data 
The tests are still crude SQL queries and you have to look for queries that don't 
- raw_claim_data.sql is a file of 40 or so test case date-ranges. Start by looking at no more than the first 8 pids' worth.
  - created with raw_claim.ddl
  - populated with raw_claim_data.sql

### bash script to run it all
- setup_and_run.sh calls into both below

- combine_piecemeal is for a more detailed look at the code in combine.sql. The steps are in tables, not CTEs as in my code in the N3C enclave does. The idea behind this code comes from Chris Knoll's 'magic' work.  https://forums.ohdsi.org/t/what-is-the-magic-in-cohort-definitions/4535
  - combine_piecemeal/setup_and_run.sh
    - ./combine_piecemeal/test_range_numbers.sql - want to see counts =1, there are a few that fail.
    - ./combine_piecemeal/test_date_numbers.sql - want to see counts=1, errors at cases 4, 5, 6, 7, 
    - ./combine_piecemeal/test_tagged_rows.sql - want to see counts=1, serrors at 4, 5, 6
    - ./combine_piecemeal/test_end_rows.sql - want to see counts=1, errors at 3,4,5
    - ./combine_piecemeal/test_start_rows.sql - want to see counts=1, limited tests, all good
    - ./combine_piecemeal/test_ranges.sql - want to see counts=1, limited tests, all good

- simple_contiguous is for a more detailed look with a dedicated test set into the "contiguous" code.  https://stackoverflow.com/questions/15783315/combine-consecutive-date-ranges 
  - simple_contiguous/run_contiguous.sh
    - ./simple_contiguous/test_simple_contiguous.sql - loo for counts=1 and a t in the "good" column, all good


