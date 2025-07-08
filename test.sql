select current_timestamp();
select current_session();

SET DATABASE_NAMES = ['DB1','DB2'];

for db_name in database_names
  'CREATE DATABASE IF NOT EXISTS' || database_names ;
end for;


