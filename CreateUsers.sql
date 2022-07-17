-- \c db_dominos 

--- CREATE users managers with passwords
-- add password. only allow this user to have access on rio related data
CREATE USER rio_manager WITH PASSWORD 'secret'; 
CREATE USER niteroi_manager WITH PASSWORD 'secret';
CREATE USER saopaulo_manager WITH PASSWORD 'secret';
CREATE USER vitoria_manager WITH PASSWORD 'secret';
CREATE USER belohorizonte_manager WITH PASSWORD 'secret';

CREATE USER david_dev WITH PASSWORD 'secret';
CREATE USER robert_intern WITH PASSWORD 'secret';


-- The manager role can only see the view of its city.
-- Only SELECT VIEW
CREATE ROLE manager WITH LOGIN
GRANT CONNECT ON DATABASE db_dominos TO manager;
--CREATE SCHEMA WITH ONLY VIEWS
>> GRANT USAGE ON SCHEMA public TO Postgres;;
GRANT SELECT, INSERT, UPDATE ON ratings to manager;


-- GRANT ON PUBLIC SCHEMA 
CREATE ROLE developer WITH LOGIN;
GRANT CONNECT ON DATABASE db_dominos TO developer;
GRANT SELECT, INSERT, UPDATE ON ALL TABLES IN SCHEMA public TO developer;

-- Intern can only make querys to learn about the database.
-- Only Allow SELECT
CREATE ROLE intern WITH LOGIN;
GRANT CONNECT ON DATABASE db_dominos TO intern;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO intern; 


-- GRANT users diferent ROLES.
GRANT manager TO rio_manager;
GRANT manager TO niteroi_manager;
GRANT manager TO saopaulo_manager;
GRANT manager TO vitoria_manager;
GRANT manager TO belohorizonte_manager;

GRANT developer TO david_dev;

GRANT intern TO robert_intern;