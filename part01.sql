use fraud_detection;
select * from untaggedtrans01;

select * from untaggedtrans01
union all
select * from untaggedtrans02
union all
select * from untaggedtrans03;