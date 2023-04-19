-- this is basically the row_number of the ranges sorted by end date

create table range_numbers (
    pid integer,
    end_dt date,
    start_dt date,
    idx integer
)

