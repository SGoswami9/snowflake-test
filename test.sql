select current_timestamp();
select current_session();

set database_names = ['DB1','DB2'];

CREATE DATABASE IF NOT EXISTS $database_names;
