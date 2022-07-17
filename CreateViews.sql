-- Create a Schema that holds all this views.
CREATE SCHEMA manager_views;

-- Create a view to retrive data from each city.
CREATE VIEW manager_views.rio_orders AS (
    SELECT *
    FROM Order_Item
    WHERE state == 'RJ' 
);


