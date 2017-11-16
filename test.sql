select * from pg_tables where schemaname = 'cd' ;

    select * from pg_tables limit 5;

    select * from cd.members order by joindate limit 6;

    select * from cd.facilities order by guestcost desc limit 5;

    select * from 