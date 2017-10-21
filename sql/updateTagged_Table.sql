use fraud_detection;

update tagged_table
set label = 0
where transID_b IS NULL;

update tagged_table
set label = 1
where Time_a = Time_b;

update tagged_table
set label = 2
where 	Time_a <> Time_b 
	and Time_b is not null;
