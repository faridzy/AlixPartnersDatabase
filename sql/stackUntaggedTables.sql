use fraud_detection;
create table UntaggedTransactions as
	select * from untaggedtable01
	union all
	select * from untaggedtable02
	union all
	select * from untaggedtable03;
    
alter table untaggedtransactions
add label int;
