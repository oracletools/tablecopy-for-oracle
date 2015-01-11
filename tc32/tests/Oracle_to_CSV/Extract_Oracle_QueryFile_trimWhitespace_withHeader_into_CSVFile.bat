::Test name: Oracle_QueryFile trimWhitespace withHeader
	::Description:	Read SQL from a query file "C:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql".Extract Oracle table into CSVFile.
	::Arguments:
	::	-w[--copy_vector] is "Data copy direction."
::	-o[--pool_size] is "Pool size."
::	-r[--num_of_shards] is "Number of shards."
::	-t[--field_term] is "Field terminator."
::	-q[--query_sql_file] is "Input file with Oracle query sql."
::	-f[--from_db] is "From database."
::	-e[--nls_date_format] is "nls_date_format for source."
::	-m[--nls_timestamp_format] is "nls_timestamp_format for source."
::	-O[--nls_timestamp_tz_format] is "nls_timestamp_tz_format for source."
::	-z[--source_client_home] is "Path to Oracle client home."
::	-A[--header] is "Include header to Oracle extract."
::	-W[--trim_whitespace] is "Trim whitespace from varchar2 in "Oracle" extract."
::	-g[--to_file] is "To CSV file."	
	
echo y|C:\Python27\tc_dist_32\20150111_052504\tc32\tc32.exe ^
-w ora2csv ^
-o 1 ^
-r 1 ^
-t "|" ^
-q C:\Python27\data_migrator_1239\test\v101\query\oracle_query.sql ^
-f SCOTT/tiger2@orcl ^
-e "YYYY/MM/DD" ^
-m "YYYY-MM-DD-HH24.MI.SS.FF" ^
-O "YYYY-MM-DD-HH24:MI:SS.FF" ^
-z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN" ^
-A 1 ^
-W 1 ^
-g C:\Python27\data_migrator_1239\CSV_OUT\testORA_QueryFile_trimWhitespace_withHeader.data