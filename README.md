# cms_query_dev
## date-range query development for N3C CMS work

This project contains ddl, data and sql to mimic the issues in rolling visit_detail up
into visit_occurrence. Since Spark can be slow for small amounts of data, this provides
a way to work on the queries with faster iterations on a lap-top local PostgreSQL instance
with test data.

Despite the names, the files are simplifed versions of claims. They are just date-ranges.

Chris Roeder, April 2023


## Getting Started
- Set up a postgresql server and populate the environment with variables for the psql command.  This works out of the box with PostgresApp on mac.
  - https://postgresapp.com/
  - NB I was using "create TABLE_X as SELECT...." in Spark, but use "select * INTO TABLE_X FROM ..." in postgres. The latter means I need ddl for the output table.
  - mac or Windows, regardless,  you should be able to run createdb, dropdb and psql from a command line. Apologies for not providing a version of  setup_and_run.sh in powershell. It's in a pretty simple dialect and porting it should be easy enough.
- run setup_and_run.sh. It will create the database, drop prior versions of the tables and re-create them, populate the test data, run the scripts, and then run tests.

## FILES
### Main SQL Scripts
- combine.sql combines overlapping date ranges into the combine table
  - created with combine.ddl
- contiguous.sql combines neighboring date ranges, from the output of combine
- simple_contiguous.sql combines neighboring date ranges, from just the raw_claim data. It short-ciruits combine.

### Test Data data and scripts
- raw_claim_data.sql is a file of 40 or so test case date-ranges. Start by looking at no more than the first 8 pids' worth.
  - created wit raw_claim.ddl
- cominbed_visits_test.sql tests the output of combine.sql
  - ? ddl
- contiguous_combined_visits_test.sql tests the output of contiguous.sql
  - ? ddl
- test_simple_contiguous_visits.sql tests the output of simple_contiguous.sql
  - created with simple_contiguous_visits.ddl

### bash script to run it
- setup_and_run.sh

## Sub directories
- combine_piecemeal is for a more detailed look at the code in combine.sql. The steps are in tables, not CTEs.
- simple_contiguous is for a more detailed look with a dedicated test set into the "contiguous" code.

## Algorithm

### combine is based on Chris Knoll's 'magic' work 
https://forums.ohdsi.org/t/what-is-the-magic-in-cohort-definitions/4535

### contiguous
https://stackoverflow.com/questions/15783315/combine-consecutive-date-ranges 

