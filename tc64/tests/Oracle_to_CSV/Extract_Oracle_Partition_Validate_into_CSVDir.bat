::Test name: Oracle_Partition Validate
	::Description:	Extract Oracle table into CSVDir.
	::Arguments:
	::	-w[--copy_vector] is "Data copy direction."
::	-o[--pool_size] is "Pool size."
::	-r[--num_of_shards] is "Number of shards."
::	-t[--field_term] is "Field terminator."
::	-V[--validate] is "Check if source and target objects exist."
::	-c[--from_table] is "From table."
::	-P[--from_partition] is "From partition."
::	-f[--from_db] is "From database."
::	-e[--nls_date_format] is "nls_date_format for source."
::	-m[--nls_timestamp_format] is "nls_timestamp_format for source."
::	-O[--nls_timestamp_tz_format] is "nls_timestamp_tz_format for source."
::	-z[--source_client_home] is "Path to Oracle client home."
::	-D[--to_dir] is "To directory."	
	
echo y|C:\Python27\tc_dist_64\20150111_052504\tc64\tc64.exe ^
-w ora2csv ^
-o 1 ^
-r 1 ^
-t "|" ^
-V 1 ^
-c SCOTT.Partitioned_test_from ^
-P part_15 ^
-f SCOTT/tiger2@orcl ^
-e "YYYY/MM/DD" ^
-m "YYYY-MM-DD-HH24.MI.SS.FF" ^
-O "YYYY-MM-DD-HH24:MI:SS.FF" ^
-z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
-D C:\Python27\data_migrator_1239\CSV_OUT