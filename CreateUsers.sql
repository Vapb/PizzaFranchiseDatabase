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
CREATE ROLE manager 
GRANT SELECT, INSERT, UPDATE ON ratings to manager;

-- 
CREATE ROLE developer 
GRANT SELECT, INSERT, UPDATE ON ratings to manager;

-- Intern can only make querys to learn about the database.
CREATE ROLE intern 
GRANT SELECT ON ratings to manager; 




GRANT manager TO rio_manager;
GRANT manager TO niteroi_manager;
GRANT manager TO saopaulo_manager;
GRANT manager TO vitoria_manager;
GRANT manager TO belohorizonte_manager;

GRANT david_dev TO developer;

GRANT robert_intern TO intern;






-- Create a schema with only views