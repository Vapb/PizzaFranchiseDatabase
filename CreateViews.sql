-- Create a Schema that holds all this views.
CREATE SCHEMA manager_views;


-- Restaurant cash flow details
-- Rio de Janeiro
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

-- Niteroi 
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


-- Sao Paulo 
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


-- Belo Horizonte 
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


-- Vitoria 
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