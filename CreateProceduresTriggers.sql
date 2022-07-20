--- CREATE PROCEDURES 

-- Function that calculates the real deliveryTime
-- DROP FUNCTION delivery_time (TIMESTAMP,TIMESTAMP);
CREATE FUNCTION delivery_time (start_timestamp TIMESTAMP, end_timestamp TIMESTAMP)
RETURNS TEXT AS $$
BEGIN

    IF end_timestamp IS NULL THEN
        RETURN NULL;
    ELSE
        RETURN end_timestamp - start_timestamp;
    END IF;
	
END; 
$$ LANGUAGE plpgsql;


-- Function calculates the amount of hours worked by a employee per timeshift.
CREATE FUNCTION cal_timeshift (start_timeshift TIMESTAMP, end_timeshift TIMESTAMP)
RETURNS TEXT AS $$
BEGIN

    IF end_timeshift < start_timeshift THEN
        RETURN (('24:00:00' - start_timeshift) + CAST(end_timeshift AS interval));
	ELSE
        RETURN end_timeshift - start_timeshift;
	END IF;
	
END; 
$$ LANGUAGE plpgsql;


--- CREATE TRIGGERS