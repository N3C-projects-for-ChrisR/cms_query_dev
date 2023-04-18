# CMS visit rollup development environment
This project contains ddl, data and sql to mimic the issues in rolling visit_detail up
into visit_occurrence. Since Spark can be slow for small amounts of data, this provides
a way to work on the queries with faster iterations on a lap-top local PostgreSQL instance
with test data.

Chris Roeder, April 2023

