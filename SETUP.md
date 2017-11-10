# Visual Studio Code with PostgreSql Extension Setup

## Install Visual Studio code

[Download Visual Studio Code](https://code.visualstudio.com/)

## Install PostgreSql Extension from "doublefint" into VS Code
   Add PostgreSql connect string to Workspace Settings
   to add a config option to your your workspace: 


   <img src="images/workplace-settings-psql.gif" alt="How to add workspace settings" style="width: 600px;">

 ```JavaScript

   "pgsql.connection": "postgres://xekcxnzfeehjln:114861493550f839bf3c22196131fd9399943a06aa2a7828b7bf6cb207a1b17a@ec2-54-225-119-223.compute-1.amazonaws.com:5432/d3u9hht5e826lm"

```

## Install PostgreSql version 10

[Download PostgreSql](https://www.postgresql.org/download/)

To test complete go to cmd line and tpye `psql --version`

## To run a query

- Create a file with an extension of '.sql'
- Type your query in and press CTRL-F5 to run the query
- The output will appear in the terminal window

<img src="images/query-psql.gif" alt="How to query in psql" style="width: 600px;">

