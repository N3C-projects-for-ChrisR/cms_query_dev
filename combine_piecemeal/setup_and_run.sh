#!/bin/bash


echo "drop table range_numbers" | psql cms_query_dev 2> /dev/null
#cat ddl/range_numbers.ddl | psql cms_query_dev
cat range_numbers.sql | psql cms_query_dev
cat test_range_numbers.sql | psql cms_query_dev

echo "drop table date_numbers" | psql cms_query_dev 2> /dev/null
#cat ddl/date_numbers.ddl | psql cms_query_dev
cat date_numbers.sql | psql cms_query_dev
cat test_date_numbers.sql | psql cms_query_dev

echo "drop table tagged_rows" | psql cms_query_dev 2> /dev/null
#cat ddl/tagged_rows.ddl | psql cms_query_dev
cat tagged_rows.sql | psql cms_query_dev
cat test_tagged_rows.sql | psql cms_query_dev

echo "drop table end_rows" | psql cms_query_dev 2> /dev/null
#cat ddl/end_rows.ddl | psql cms_query_dev
cat end_rows.sql | psql cms_query_dev
cat test_end_rows.sql | psql cms_query_dev

echo "drop table start_rows" | psql cms_query_dev 2> /dev/null
#cat ddl/start_rows.ddl | psql cms_query_dev
cat start_rows.sql | psql cms_query_dev
cat test_start_rows.sql | psql cms_query_dev

echo "drop table ranges" | psql cms_query_dev
#cat ddl/ranges.ddl | psql cms_query_dev
cat ranges.sql | psql cms_query_dev
cat test_ranges.sql | psql cms_query_dev


