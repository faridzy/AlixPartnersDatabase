create table tagged_table as
	select a.transactionID as transID_a, b.transactionID as transID_b, 
		   a.accountID as acc_a, b.accountID as acc_b, 
           Time(a.transactionTime) as Time_a, a.label,
		   b.transactionTime as Time_b
    from UntaggedTransactions as a
    left join FraudTransactions as b
		on a.transactionID = b.transactionID
    
