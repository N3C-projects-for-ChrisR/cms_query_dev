#!/bin/bash


echo "drop table range_numbers" | psql cms_query_dev 2> /dev/null
#cat ddl/range_numbers.ddl | psql cms_query_dev
cat combine_range_numbers.sql | psql cms_query_dev

echo "drop table date_numbers" | psql cms_query_dev 2> /dev/null
#cat ddl/date_numbers.ddl | psql cms_query_dev
cat combine_date_numbers.sql | psql cms_query_dev

echo "drop table tagged_rows" | psql cms_query_dev 2> /dev/null
#cat ddl/tagged_rows.ddl | psql cms_query_dev
cat combine_tagged_rows.sql | psql cms_query_dev

echo "drop table end_rows" | psql cms_query_dev 2> /dev/null
#cat ddl/end_rows.ddl | psql cms_query_dev
cat combine_end_rows.sql | psql cms_query_dev

echo "drop table start_rows" | psql cms_query_dev 2> /dev/null
#cat ddl/start_rows.ddl | psql cms_query_dev
cat combine_start_rows.sql | psql cms_query_dev

echo "drop table range_numbers" | psql cms_query_dev
#cat ddl/range_numbers.ddl | psql cms_query_dev
cat combine_ranges.sql | psql cms_query_dev




