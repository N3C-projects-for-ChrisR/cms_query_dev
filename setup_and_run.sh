#!/bin/bash

# clean up prior runs, load test data, run the algorithms, test the results.
#
# assumes the user running this can access PSQL without
# environement variables on the usual port 5432 on localhost.
#
# BTW, the piecemeal_combine diretory has it's own setup_and_run.sh script.

# SETUP raw_claim table
dropdb cms_query_dev
createdb  cms_query_dev
echo "drop table raw_claim" | psql cms_query_dev 2> /dev/null
cat raw_claim.ddl | psql cms_query_dev > /dev/null
cat raw_claim_data.sql | psql cms_query_dev > /dev/null


# contiguous
cd simple_contiguous
./run_contiguous.sh
cd ..

# combine
cd combine_piecemeal
./setup_and_run.sh
cd ..

