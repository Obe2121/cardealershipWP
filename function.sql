CREATE PROCEDURE fees(
	car INTEGER,
	lateFeeAmount DECIMAL
)
AS
$$
BEGIN
	UPDATE amount
	SET amount = amount + lateFeeAmount
	WHERE customer_id = customer;
	
	COMMIT;
	
END;
$$
LANGUAGE plpgsql;

