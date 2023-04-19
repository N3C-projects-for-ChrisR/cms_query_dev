#!/bin/bash

# for the "contiguous" query,
# https://stackoverflow.com/questions/15783315/combine-consecutive-date-ranges 
# clean up prior runs, load test data, run the algorithms, test the results.
#
# assumes the user running this can access PSQL without
# environement variables on the usual port 5432 on localhost.
#

# special test data here
echo "drop table contiguous_test_input" | psql cms_query_dev 2> /dev/null
cat contiguous_test_input.ddl | psql cms_query_dev > /dev/null
cat contiguous_test_input.sql | psql cms_query_dev > /dev/null

# run the code
echo "drop table simple_contiguous" | psql cms_query_dev 2> /dev/null
#cat simple_contiguous_visits.ddl | psql cms_query_dev
cat simple_contiguous.sql | psql cms_query_dev
cat test_simple_contiguous.sql | psql cms_query_dev


