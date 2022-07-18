-- Create a Schema that holds all this views.
CREATE SCHEMA manager_views;

-- Rio de Janeiro Restaurant cash flow details
CREATE VIEW manager_views.rio_orders AS (
    SELECT  ord_id,
			status,
			order_type,
			payment_method,
            ord_startdate,
            delivered_date,
            CONCAT(first_name, ' ', surname) AS "Customer_name",
            price AS "Final_Price",
            s.name AS "DeliveryMan"
    FROM customer_order as co
    INNER JOIN customer as c
        USING (cust_id)
    INNER JOIN restaurant as a
        USING (rest_id)
    INNER JOIN staff as s
        USING (staff_id)
    WHERE city = 'Rio de Janeiro'
    ORDER BY ord_startdate;
);

-- Employee List Rio de Janeiro
CREATE VIEW manager_views.rio_employees AS (
	SELECT	s.name AS "Employee",
			job_role,
			s.phone_number,
			start_timeshift,
			end_timeshift
	FROM staff AS s
	INNER JOIN restaurant
		USING (rest_id)
	WHERE city = 'Rio de Janeiro'
);



-- Niteroi Restaurant cash flow details
CREATE VIEW manager_views.niteroi_orders AS (
    SELECT  ord_id,
			status,
			order_type,
			payment_method,
            ord_startdate,
            delivered_date,
            CONCAT(first_name, ' ', surname) AS "Customer_name",
            price AS "Final_Price",
            s.name AS "DeliveryMan"
    FROM customer_order as co
    INNER JOIN customer as c
        USING (cust_id)
    INNER JOIN restaurant as a
        USING (rest_id)
    INNER JOIN staff as s
        USING (staff_id)
    WHERE city = 'Niteroi'
    ORDER BY ord_startdate;
);

-- Employee List Niteroi
CREATE VIEW manager_views.niteroi_employees AS (
	SELECT	s.name AS "Employee",
			job_role,
			s.phone_number,
			start_timeshift,
			end_timeshift
	FROM staff AS s
	INNER JOIN restaurant
		USING (rest_id)
	WHERE city = 'Niteroi'
);




-- Sao Paulo Restaurant cash flow details
CREATE VIEW manager_views.saopaulo_orders AS (
    SELECT  ord_id,
			status,
			order_type,
			payment_method,
            ord_startdate,
            delivered_date,
            CONCAT(first_name, ' ', surname) AS "Customer_name",
            price AS "Final_Price",
            s.name AS "DeliveryMan"
    FROM customer_order as co
    INNER JOIN customer as c
        USING (cust_id)
    INNER JOIN restaurant as a
        USING (rest_id)
    INNER JOIN staff as s
        USING (staff_id)
    WHERE city = 'Sao Paulo'
    ORDER BY ord_startdate;
);

-- Employee List Sao Paulo
CREATE VIEW manager_views.saopaulo_employees AS (
	SELECT	s.name AS "Employee",
			job_role,
			s.phone_number,
			start_timeshift,
			end_timeshift
	FROM staff AS s
	INNER JOIN restaurant
		USING (rest_id)
	WHERE city = 'Sao Paulo'
);



-- Belo Horizonte Restaurant cash flow details
CREATE VIEW manager_views.belohorizonte_orders AS (
    SELECT  ord_id,
			status,
			order_type,
			payment_method,
            ord_startdate,
            delivered_date,
            CONCAT(first_name, ' ', surname) AS "Customer_name",
            price AS "Final_Price",
            s.name AS "DeliveryMan"
    FROM customer_order as co
    INNER JOIN customer as c
        USING (cust_id)
    INNER JOIN restaurant as a
        USING (rest_id)
    INNER JOIN staff as s
        USING (staff_id)
    WHERE city = 'Belo Horizonte'
    ORDER BY ord_startdate;
);

-- Employee List Belo Horizonte
CREATE VIEW manager_views.belohorizonte_employees AS (
	SELECT	s.name AS "Employee",
			job_role,
			s.phone_number,
			start_timeshift,
			end_timeshift
	FROM staff AS s
	INNER JOIN restaurant
		USING (rest_id)
	WHERE city = 'Belo Horizonte'
);



-- Vitoria Restaurant cash flow details
CREATE VIEW manager_views.vitoria_orders AS (
    SELECT  ord_id,
			status,
			order_type,
			payment_method,
            ord_startdate,
            delivered_date,
            CONCAT(first_name, ' ', surname) AS "Customer_name",
            price AS "Final_Price",
            s.name AS "DeliveryMan"
    FROM customer_order as co
    INNER JOIN customer as c
        USING (cust_id)
    INNER JOIN restaurant as a
        USING (rest_id)
    INNER JOIN staff as s
        USING (staff_id)
    WHERE city = 'Vitoria'
    ORDER BY ord_startdate;
);

-- Employee List Vitoria 
CREATE VIEW manager_views.vitoria_employees AS (
	SELECT	s.name AS "Employee",
			job_role,
			s.phone_number,
			start_timeshift,
			end_timeshift
	FROM staff AS s
	INNER JOIN restaurant
		USING (rest_id)
	WHERE city = 'Vitoria'
);
