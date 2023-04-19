

select pid, count(*) from ranges 
where pid = 8 and start_start = date('2022-03-05') and start_end = date('2022-03-25') and start_all_index = 5 and start_row_index = 2 
              and   end_start = date('2022-04-02') and   end_end = date('2022-04-30') and   end_all_index = 8 and   end_row_index = 4
group by pid;
