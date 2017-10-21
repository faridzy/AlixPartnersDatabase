CREATE PROCEDURE `n_bad` ()
BEGIN

SELECT count(*) FROM tagged_table WHERE label = 1;

END
