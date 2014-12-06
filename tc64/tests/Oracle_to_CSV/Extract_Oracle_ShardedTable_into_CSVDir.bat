::Test name: Oracle_ShardedTable
::Description:	Extract Oracle table into CSVDir table.
::Arguments:
::	-w[--copy_vector] is "Data copy direction."
::	-o[--pool_size] is "Pool size."
::	-r[--num_of_shards] is "Number of shards."
::	-t[--field_term] is "Field terminator."
::	-c[--from_table] is "From table."
::	-f[--from_db] is "From database."
::	-e[--nls_date_format] is "nls_date_format for source."
::	-m[--nls_timestamp_format] is "nls_time_format for source."
::	-z[--source_client_home] is "Path to Oracle client home."
::	-D[--to_dir] is "To directory."	

echo y|C:\Python27\tc_dist_64\20141130_210825\tc64\tc64.exe ^
-w ora2csv ^
-o 3 ^
-r 3 ^
-t "|" ^
-c SCOTT.Persons_pipe_datetime ^
-f SCOTT/tiger2@orcl ^
-e "YYYY-MM-DD HH24.MI.SS" ^
-m "YYYY-MM-DD HH24.MI.SS.FF2" ^
-z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
-D C:\Python27\data_migrator_1239\CSV_OUT