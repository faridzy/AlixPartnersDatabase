call odds();

/*-----------------------------------------------------------------------------*/
SELECT count(*) FROM tagged_table WHERE label = 1;

/*-----------------------------------------------------------------------------*/
select count(*) from tagged_table where label = 0;

/*-----------------------------------------------------------------------------*/
select
	((select count(*) from tagged_table where label = 1) + 10) / 
    ((select count(*) from tagged_table where label = 1) + 
     (select count(*) from tagged_table where label = 0) + 100)
from tagged_table limit 1;
