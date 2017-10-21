use fraud_detection;
create table FraudTransactions as
	select  transactionID,
			accountID,
			transactionAmount,
			transactionCurrencyCode,
			date(transactionDate),
			time(transactionTime),
			localHour,
			transactionDeviceId,
			transactionIPaddress
	from fraud_data 
	order by accountID, transactionTime;
