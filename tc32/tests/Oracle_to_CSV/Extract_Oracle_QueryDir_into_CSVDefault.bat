::Test name: Oracle_QueryDir
::Description:	Read each CSV file from a directory "-1".
::				Extract Oracle query results into CSVDefault table.
::Arguments:
::	-w[--copy_vector] is "Data copy direction."
::	-o[--pool_size] is "Pool size."
::	-r[--num_of_shards] is "Number of shards."
::	-t[--field_term] is "Field terminator."
::	-Q[--query_sql_dir] is "Input dir with Oracle query files sql."
::	-f[--from_db] is "From database."
::	-e[--nls_date_format] is "nls_date_format for source."
::	-m[--nls_timestamp_format] is "nls_time_format for source."
::	-z[--source_client_home] is "Path to Oracle client home."	

echo y|C:\Python27\tc_dist_32\20141130_210825\tc32\tc32.exe ^
-w ora2csv ^
-o 1 ^
-r 1 ^
-t "|" ^
-Q C:\Python27\data_migrator_1239\test\v101\query\query_dir_ora ^
-f SCOTT/tiger2@orcl ^
-e "YYYY-MM-DD HH24.MI.SS" ^
-m "YYYY-MM-DD HH24.MI.SS.FF2" ^
-z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"