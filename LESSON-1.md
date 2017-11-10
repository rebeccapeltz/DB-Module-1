#  Getting to know your data

## schema, SELECT, WHERE, ORDER BY, LIMIT, *, COUNT(\*), and comments

- schema is a container for tables and other database objects

     * a database may contain multiple schemas
     * if the table you are querying is in a schema you need to prefix the table name with the schema name

     `select tablename from pg_tables;` no schema needed because pg_tables is a system table

     `select * from cd.bookings` a schema is provided because the bookings table is in the cd schema

- ; a query will run without a semicolon at the end, but if you have multiple queries, the semicolon will be need to run then in succession

- SELECT example
    read and display data
    `select <list of 1 or more columns> from <table>;`
    `select tablename from pg_tables;` will show a list of the tablenames of the tables in the database and their properties

- \*  example
    can be used as a wildcard in place of entering specific field names
    `select * from pg_tables;` returns all fields and all rows in the pg_tables table

- WHERE example
    clause to add filtering to query

    - use `=` to test for equality
    - strings used in the select clause must be single quoted
    - predicate after `where` must evaluate to true or false
    - rows will be returned that evaluate to true

    `select <list of 1 or more columns> from <table> from pg-tables where <something that evaluates to boolean>;`

    `select tablename from pg_tables where schemaname = 'cd';` will show the names of all the tables in the `cd` schema

- COUNT(*) example
    use this this instead of a field name to return a single row with  count all the rows that would have been returned by the query

    `select count(*) from pg_tables;`

- ORDER BY example
    the appears the end of the query and provides sorting

    `ORDER BY <1 or more field names>`
    
    `select * from pg_tables order by tablename`

- comments or code that you don't want to run should are designated by `--`

    `-- this is a comment`  no output

    `-- select * from pg-tables` no output

