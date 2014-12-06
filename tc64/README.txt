##
##tc64.exe -h ALL 

---------------------------------------------------------------------- 
#FreeUkraine #SaveUkraine #StopRussia #PutinKhuilo #CrimeaIsUkraine
----------------------------------------------------------------------
TableCopy for Oracle (v1.23.9, beta, 2014/12/06 16:21:10) [64bit]
Copyright (c): 2014 Alex Buzunov, All rigts reserved.
Agreement: Use this tool at your own risk. Author is not liable for any damages or losses related to the use of this software.
----------------------------------------------------------------------

--USE CASES--


1. Oracle_to_Oracle. 16 use cases.



Oracle_to_Oracle: 16 use case(s) available:

1. ORA_QueryFile_to_ORA - Read SQL from a query file "c:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql".
  Copy Oracle query results into Oracle  table.
2. ORA_ShardedSubpartition_to_ORA - Break input sharded sub-partition into 3 logical shards (-r[--num_of_shards] 3) 
  and run copy process on each shard in thread pool (-o[--pool_size] 3).
  Copy Oracle sharded sub-partition into Oracle  table.
3. ORA_Partition_to_ORA - Copy Oracle partition into Oracle  table.
4. ORA_QueryDir_Limit10_to_ORA - Read each SQL query file from a directory "c:\Python27\data_migrator_1239\test\v101\query\query_dir_ora".
  Copy only 10 rows from Oracle query results into Oracle  table.
5. ORA_Subpartition_to_ORA - Copy Oracle sub-partition into Oracle  table.
6. ORA_Table_Limit10_to_ORA - Copy only 10 rows from Oracle table1 into Oracle  table.
7. ORA_Subpartition_Limit10_to_ORA - Copy only 10 rows from Oracle sub-partition into Oracle  table.
8. ORA_QueryFile_Limit10_to_ORA - Read SQL from a query file "c:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql".
  Copy only 10 rows from Oracle query results into Oracle  table.
9. ORA_ShardedTable_to_ORA - Break input table1 into 3 logical shards (-r[--num_of_shards] 3) 
  and run copy process on each shard in thread pool (-o[--pool_size] 3).
  Copy Oracle table1 into Oracle  table.
10. ORA_Partition_Limit10_to_ORA - Copy only 10 rows from Oracle partition into Oracle  table.
11. ORA_Table_to_ORA - Copy Oracle table1 into Oracle  table.
12. ORA_Partition_KeepSpoolFile_to_ORA - Copy Oracle partition into Oracle  table.
13. ORA_Subpartition_KeepSpoolFile_to_ORA - Copy Oracle sub-partition into Oracle  table.
14. ORA_QueryDir_to_ORA - Read each SQL query file from a directory "c:\Python27\data_migrator_1239\test\v101\query\query_dir_ora".
  Copy Oracle query results into Oracle  table.
15. ORA_Table_KeepSpoolFile_to_ORA - Copy Oracle table1 into Oracle  table.
16. ORA_ShardedPartition_to_ORA - Break input sharded partition into 3 logical shards (-r[--num_of_shards] 3) 
  and run copy process on each shard in thread pool (-o[--pool_size] 3).
  Copy Oracle sharded partition into Oracle  table.

--DETAILS--

-USE-CASE # 1
Use case name: Oracle_QueryFile
Description:  Read SQL from a query file "c:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql".
  Copy Oracle query results into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -q[--query_sql_file] is "Input file with Oracle query sql."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -q c:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 2
Use case name: Oracle_ShardedSubpartition
Description:  Break input sharded sub-partition into 3 logical shards (-r[--num_of_shards] 3) 
  and run copy process on each shard in thread pool (-o[--pool_size] 3).
  Copy Oracle sharded sub-partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -c[--from_table] is "From table."
  -S[--from_sub_partition] is "From sub-partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -c SCOTT.Persons_sub_partitioned ^
  -S SALES_APR2000_SP1 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 3
Use case name: Oracle_Partition
Description:  Copy Oracle partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -c[--from_table] is "From table."
  -P[--from_partition] is "From partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -c SCOTT.Persons_partitioned ^
  -P sales_apr2014 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 4
Use case name: Oracle_QueryDir_Limit10
Description:  Read each SQL query file from a directory "c:\Python27\data_migrator_1239\test\v101\query\query_dir_ora".
  Copy only 10 rows from Oracle query results into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -Q[--query_sql_dir] is "Input dir with Oracle query files sql."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -Q c:\Python27\data_migrator_1239\test\v101\query\query_dir_ora ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 5
Use case name: Oracle_Subpartition
Description:  Copy Oracle sub-partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -c[--from_table] is "From table."
  -S[--from_sub_partition] is "From sub-partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -c SCOTT.Persons_sub_partitioned ^
  -S SALES_APR2000_SP1 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 6
Use case name: Oracle_Table_Limit10
Description:  Copy only 10 rows from Oracle table1 into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -c[--from_table] is "From table."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -c SCOTT.Persons_pipe_datetime ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 7
Use case name: Oracle_Subpartition_Limit10
Description:  Copy only 10 rows from Oracle sub-partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -c[--from_table] is "From table."
  -S[--from_sub_partition] is "From sub-partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -c SCOTT.Persons_sub_partitioned ^
  -S SALES_APR2000_SP1 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 8
Use case name: Oracle_QueryFile_Limit10
Description:  Read SQL from a query file "c:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql".
  Copy only 10 rows from Oracle query results into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -q[--query_sql_file] is "Input file with Oracle query sql."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -q c:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 9
Use case name: Oracle_ShardedTable
Description:  Break input table1 into 3 logical shards (-r[--num_of_shards] 3) 
  and run copy process on each shard in thread pool (-o[--pool_size] 3).
  Copy Oracle table1 into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -c[--from_table] is "From table."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -c SCOTT.Persons_pipe_datetime ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 10
Use case name: Oracle_Partition_Limit10
Description:  Copy only 10 rows from Oracle partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -l[--lame_duck] is "Limit rows (lame duck run)."
  -c[--from_table] is "From table."
  -P[--from_partition] is "From partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -l 10 ^
  -c SCOTT.Persons_partitioned ^
  -P sales_apr2014 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 11
Use case name: Oracle_Table
Description:  Copy Oracle table1 into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -c[--from_table] is "From table."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -c SCOTT.Persons_pipe_datetime ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 12
Use case name: Oracle_Partition_KeepSpoolFile
Description:  Copy Oracle partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -K[--keep_data_file] is "Keep data dump."
  -c[--from_table] is "From table."
  -P[--from_partition] is "From partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -K 1 ^
  -c SCOTT.Persons_partitioned ^
  -P sales_apr2014 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 13
Use case name: Oracle_Subpartition_KeepSpoolFile
Description:  Copy Oracle sub-partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -K[--keep_data_file] is "Keep data dump."
  -c[--from_table] is "From table."
  -S[--from_sub_partition] is "From sub-partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -K 1 ^
  -c SCOTT.Persons_sub_partitioned ^
  -S SALES_APR2000_SP1 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 14
Use case name: Oracle_QueryDir
Description:  Read each SQL query file from a directory "c:\Python27\data_migrator_1239\test\v101\query\query_dir_ora".
  Copy Oracle query results into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -Q[--query_sql_dir] is "Input dir with Oracle query files sql."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -Q c:\Python27\data_migrator_1239\test\v101\query\query_dir_ora ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 15
Use case name: Oracle_Table_KeepSpoolFile
Description:  Copy Oracle table1 into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -K[--keep_data_file] is "Keep data dump."
  -c[--from_table] is "From table."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 1 ^
  -r 1 ^
  -t "|" ^
  -K 1 ^
  -c SCOTT.Persons_pipe_datetime ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"

-USE-CASE # 16
Use case name: Oracle_ShardedPartition
Description:  Break input sharded partition into 3 logical shards (-r[--num_of_shards] 3) 
  and run copy process on each shard in thread pool (-o[--pool_size] 3).
  Copy Oracle sharded partition into Oracle  table.
Arguments:
  -w[--copy_vector] is "Data copy direction."
  -o[--pool_size] is "Pool size."
  -r[--num_of_shards] is "Number of shards."
  -t[--field_term] is "Field terminator."
  -c[--from_table] is "From table."
  -P[--from_partition] is "From partition."
  -f[--from_db] is "From database."
  -e[--nls_date_format] is "nls_date_format for source."
  -m[--nls_timestamp_format] is "nls_time_format for source."
  -z[--source_client_home] is "Path to Oracle client home."
  -g[--to_db] is "To Oracle database."
  -a[--to_table] is "To Oracle table."
  -e[--nls_date_format] is "nls_date_format for target."
  -m[--nls_timestamp_format] is "nls_timestamp_format for target."
  -Z[--target_client_home] is "Path to Oracle client home bin dir."	
Example: 
  echo y|c:\Python27\tc_dist_64\20141206_162110\tc64\tc64.exe ^
  -w ora2ora ^
  -o 3 ^
  -r 3 ^
  -t "|" ^
  -c SCOTT.Persons_partitioned ^
  -P sales_apr2014 ^
  -f SCOTT/tiger2@orcl ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
  -g SCOTT/tiger2@orcl ^
  -a SCOTT.Persons_pipe_datetime_1 ^
  -e "YYYY-MM-DD HH24.MI.SS" ^
  -m "YYYY-MM-DD HH24.MI.SS.FF2" ^
  -Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"