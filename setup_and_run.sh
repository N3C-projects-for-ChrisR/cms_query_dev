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


# simple CONTIGUOUS test from raw_claim to simple_contigous_visits
# https://stackoverflow.com/questions/15783315/combine-consecutive-date-ranges 
if (TRUE); then
    echo "drop table simple_contiguous" | psql cms_query_dev 2> /dev/null
##    cat simple_contiguous_visits.ddl | psql cms_query_dev
    cat simple_contiguous.sql | psql cms_query_dev #  should be very simple diff to contiguous.sql, just output table difference
###    cat test_simple_contiguous.sql | psql cms_query_dev
fi

# COMBINE from raw_claim to combined_visits table
if (FALSE); then
    echo "drop table combined_visits" | psql cms_query_dev 2> /dev/null
    cat combine.sql | psql cms_query_dev
###    cat combined_visits_test.sql | psql cms_query_dev
fi

#CONTINGUOUS and test to contiguous_visits table
if (FALSE); then
    echo "drop table contiguous_visits" | psql cms_query_dev 2> /dev/null
    cat contiguous.sql | psql_cms_query_dev
    cat contiguous_visits_test.sql | psql cms_query_dev
fi


