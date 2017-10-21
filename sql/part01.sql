use fraud_detection;

create table UntaggedTransactions as
	select * from untaggedtrans01
	union all
	select * from untaggedtrans02
	union all
	select * from untaggedtrans03;

select count(*) from untaggedtrans01;
select count(*) from untaggedtrans02;
select count(*) from untaggedtrans03;

select *, label from UntaggedTransactions where 