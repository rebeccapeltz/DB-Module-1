#  Getting to know your data

## Postgresql provides commands that help you to describe your data

You can describe the structure of a table using this psql command:

`\d <schema.tablename> describe table`  format for describing a table 

`\d cd.members describe table`  describe the `members` table in the `cd` schema

## Postgressql maintains information about the data is holds in tables which you can query

`pg-tables` is a table that contains information about tables

## Using SQL 
### schema, SELECT, * (wildcard), ; (end of sql statement), LIMIT,  WHERE, ORDER BY, COUNT(\*), and comments

- schema is a container for tables and other database objects

     - a database may contain multiple schemas
     - a schema has a name
     - a table within a schema is referred to as `schemaname.tablename`
     - if the table you are querying is in a schema you need to prefix the table name with the schema name

     `select tablename from pg_tables;` no schema needed because pg_tables is a system table

     `select * from cd.bookings` a schema is provided because the `bookings` table is in the `cd` schema

- `SELECT` example
    read and display data
    `select <list of 1 or more columns> from <table>;`
    `select tablename from pg_tables;` will show a list of the tablenames of the tables in the database and their properties

- `*`  
    can be used as a wildcard in place of entering specific field names
    `select * from pg_tables;` returns all fields and all rows in the pg_tables table

- `;` 
    a query will run without a semicolon at the end, but if you have multiple queries, the semicolon will be need to run then in succession

- `LIMIT` example

    if you just want to inspect the the top 5 rows of a table you can use `limit`

    `select * from pg_tables limit 5;`

- `WHERE` example
    clause to add filtering to query

    - use `=` to test for equality
    - strings used in the select clause must be single quoted
    - predicate after `where` must evaluate to true or false
    - rows will be returned that evaluate to true

    `select <list of 1 or more columns> from <table> from pg-tables where <something that evaluates to boolean>;`

    `select tablename from pg_tables where schemaname = 'cd';` will show the names of all the tables in the `cd` schema

- `COUNT(*)` example
    use this this instead of a field name to return a single row with the count  of all the rows that would have been returned by the query

    `select count(*) from pg_tables;`

- `ORDER BY` example
    - the appears the end of the query and provides sorting
    - you can sort in Ascending (low to hi) or Descending order (hi to low)
    - the default sort order is Ascending so you don't have to add anything to your query to get that
    - if you want Descending order add `desc`
    - if you want to be explicit you can add `asc` to your query to indicate Ascending order
    - ordering can be applied to text data, date data, and numeric data

    `ORDER BY <1 or more field names>`
    
    `select * from pg_tables order by tablename`  a-z ordering 

    `select * from pg_tables order by tablename asc`  a-z ordering 

    `select * from pg_tables order by tablename desc` z-a ordering

    You can use ORDER BY with with LIMIT to get top 5

    `select * from cd.facilities order by guestcost desc limit 5;` top 5 most expensive facilities

- `--` comments out code that you don't want to run should are designated by `--`

    `-- this is a comment`  no output

    `-- select * from pg-tables` no output

