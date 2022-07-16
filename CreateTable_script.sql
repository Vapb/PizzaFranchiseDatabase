-- Script to create table IF NOT EXISTS  in database
-- Create database db_dominos
CREATE DATABASE db_dominos;

-- Customer Table (<ins>cust_id</ins>, username, password, firstname, surname, birthday)
CREATE TABLE IF NOT EXISTS customer (
    cust_id SERIAL PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    birthday DATE
);
 
 
-- Cupom Table (<ins>cupom_id</ins>, valid, start_date, expiration_date, description)
CREATE TABLE IF NOT EXISTS cupom (
    cupom_id SERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL,
    valid BOOLEAN NOT NULL,
    start_date DATE NOT NULL,
    expiration_date DATE NOT NULL,
    description VARCHAR(100)
);

-- Restaurant Table -- Restaurant (<ins>rest_id</ins>, name, phone_number, zipcode, state, city, st_name, st_number)
CREATE TABLE IF NOT EXISTS restaurant (
    rest_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    phone_number INTEGER NOT NULL,
    zipcode INTEGER NOT NULL,
    state CHAR(2) NOT NULL,
    city VARCHAR(20) NOT NULL,
    st_name VARCHAR(45) NOT NULL,
    st_number SMALLINT
);

-- NonPizza -- non_pizza (<ins>nonpizza_id</ins>, flavor, description, name, price) <br>
CREATE TABLE IF NOT EXISTS non_pizza (
    nonpizza_id INTEGER NOT NULL,
    flavor VARCHAR(30),
    description VARCHAR(100),
    name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (nonpizza_id)
);


-- Pizza -- Pizza (<ins>pizza_id</ins>, size, dough, flavor_rightside, flavor_leftside, name, price) <br>
CREATE TABLE IF NOT EXISTS pizza (
    pizza_id INTEGER NOT NULL,
    size VARCHAR(30),
    dough VARCHAR(30),
    main_flavor VARCHAR(30),
    second_flavor VARCHAR(30),
    name VARCHAR(30),
    price DECIMAL(10,2),
    PRIMARY KEY (pizza_id)
);


-- Beverage -- Beverage (<ins>beverage_id</ins>, brand, size, name, price) <br>
CREATE TABLE IF NOT EXISTS beverage (
    beverage_id INTEGER NOT NULL,
    brand VARCHAR(20),
    size VARCHAR(20),
    name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (beverage_id)
);


-- Phone_list Table -- Phone_list (<ins>cust_id, phone_number</ins>) <br>
CREATE TABLE IF NOT EXISTS phone_list (
    cust_id INTEGER NOT NULL,
    phone_number INTEGER NOT NULL,
    PRIMARY KEY (cust_id, phone_number),
    FOREIGN KEY (cust_id)
        REFERENCES customer (cust_id)
);


-- Address_list -- Address_list (<ins>add_id, cust_id</ins>, zipcode, state, city, st_name, st_number, custom_name) <br>
CREATE TABLE IF NOT EXISTS address_list (
    add_id INTEGER NOT NULL,
    cust_id INTEGER NOT NULL,
    zipcode INTEGER NOT NULL,
    state CHAR(2) NOT NULL,
    city VARCHAR(20) NOT NULL,
    st_name VARCHAR(50) NOT NULL,
    st_number SMALLINT NOT NULL,
    custom_name VARCHAR(30),
    PRIMARY KEY (add_id, cust_id),
    FOREIGN KEY (cust_id)
        REFERENCES customer (cust_id)
);

-- Staff Table -- Staff (<ins>staff_id</ins>, rest_id, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>
CREATE TABLE IF NOT EXISTS staff (
    staff_id SERIAL PRIMARY KEY,
    rest_id INTEGER NOT NULL,
    name VARCHAR(50),
    job_role VARCHAR(30),
    salary DECIMAL(10,2),
    phone_number INTEGER,
    start_timeshift TIME,
    end_timeshift TIME,
    FOREIGN KEY (rest_id)
        REFERENCES restaurant(rest_id)
);

-- DeliveryMan Table -- DeliveryMan (<ins>staff_id</ins>, license, exp_date, license_plate) <br>
CREATE TABLE IF NOT EXISTS deliveryman (
    staff_id INTEGER NOT NULL,
    license VARCHAR(10),
    exp_date DATE,
    PRIMARY KEY (staff_id),
    FOREIGN KEY (staff_id)
        REFERENCES staff(staff_id)
);


-- customer_order Table -- customer_order (<ins>ord_id</ins>, cust_id, rest_id, staff_id, cupom_id, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>
CREATE TABLE IF NOT EXISTS customer_order (
    ord_id SERIAL PRIMARY KEY,
    cust_id INTEGER NOT NULL,
    rest_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    cupom_id INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    order_type VARCHAR(20),
    payment_method VARCHAR(20),
    ord_startDate TIMESTAMP,
    delivered_date TIMESTAMP,
    FOREIGN KEY (cust_id)
        REFERENCES customer(cust_id),
    FOREIGN KEY (rest_id)
        REFERENCES restaurant(rest_id),
    FOREIGN KEY (staff_id)
        REFERENCES staff(staff_id),
    FOREIGN KEY (cupom_id)
        REFERENCES cupom(cupom_id)
);

-- Order_Item TAble -- Order_Items (<ins>ord_id, pizza_id, beverage_id, nonpizza_id</ins>, quantity) <br>
CREATE TABLE IF NOT EXISTS order_items (
    ord_id INTEGER NOT NULL,
    pizza_id INTEGER DEFAULT 0,
    beverage_id INTEGER DEFAULT 0,
    nonpizza_id INTEGER DEFAULT 0,
    quantity SMALLINT,
    PRIMARY KEY (ord_id, pizza_id, beverage_id, nonpizza_id),
    FOREIGN KEY (ord_id)
        REFERENCES customer_order(ord_id),
    FOREIGN KEY (pizza_id)
        REFERENCES pizza(pizza_id),
    FOREIGN KEY (beverage_id)
        REFERENCES beverage(beverage_id),
    FOREIGN KEY (nonpizza_id)
        REFERENCES non_pizza(nonpizza_id)     
);