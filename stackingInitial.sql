USE fraud_detection;

create table UntaggedTransactions as
	select * FROM untaggedtransactions_pt1
	union all
	select * FROM untaggedtransactons_pt2
	union all
	select * FROM untaggedtransactions_pt3;

select count(*) from fraudulenttransactions_2017;