select current_timestamp();
select current_session();

BEGIN
  -- Define the array of database names
  DECLARE database_names ARRAY;
  database_names := ARRAY_CONSTRUCT('DB1', 'DB2');

  -- Loop through the array and create each database
  FOR i IN 0 .. ARRAY_SIZE(database_names) - 1 DO
    EXECUTE IMMEDIATE
      'CREATE DATABASE IF NOT EXISTS ' || IDENTIFIER(database_names[i]);
  END FOR;
END;

