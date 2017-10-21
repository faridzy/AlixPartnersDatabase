use fraud_detection;
create table fulljoin as
	select  a.transactionID as aID,
			a.accountID as aAccount,
            a.transactionTime as Time_a,
            b.transactionTime as Time_b,
            1 as label
	from untaggedtransactions as a
	inner join fraudtransactions as b 
		on a.transactionID = b.transactionID
