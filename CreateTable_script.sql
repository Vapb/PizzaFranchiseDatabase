-- Script to create tables in database

-- Customer Table (<ins>cust_id</ins>, username, password, firstname, surname, birthday)
CREATE TABLE Customer (
    cust_id SERIAL PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    birthday DATE,
);
 
-- Cupom Table (<ins>cupom_id</ins>, valid, start_date, expiration_date, description)
CREATE TABLE Cupom (
    cupom_id SERIAL PRIMARY KEY,
    valid BOOLEAN NOT NULL,
    start_date DATE NOT NULL,
    expiration_date DATE NOT NULL,
    description VARCHAR(80),
);

-- Restaurant Table -- Restaurant (<ins>rest_id</ins>, name, phone_number, zipcode, state, city, st_name, st_number)
CREATE TABLE Restaurant (
    rest_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone_number INTEGER NOT NULL,
    zipcode INTEGER NOT NULL,
    state VARCHAR(30),
    city VARCHAR(30),
    st_name VARCHAR(50),
    st_number SMALLINT
);

-- NonPizza -- Non_pizza (<ins>nonpizza_id</ins>, flavor, description, name, price) <br>
CREATE TABLE Non_pizza (
    nonpizza_id INTEGER NOT NULL,
    flavor VARCHAR(30),
    description VARCHAR(80),
    name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (nonpizza_id)
);


-- Pizza -- Pizza (<ins>pizza_id</ins>, size, dough, flavor_rightside, flavor_leftside, name, price) <br>
CREATE TABLE Pizza (
    pizza_id INTEGER NOT NULL,
    size VARCHAR(30),
    dough VARCHAR(30),
    flavor_rightside VARCHAR(30),
    flavor_leftside VARCHAR(30),
    name VARCHAR(30),
    price DECIMAL(10,2),
    PRIMARY KEY (pizza_id)
);


-- Beverage -- Beverage (<ins>beverage_id</ins>, brand, size, name, price) <br>
CREATE TABLE Beverage (
    beverage_id INTEGER NOT NULL,
    brand VARCHAR(30),
    size VARCHAR(30),
    name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (item_id)
);

-- Toppings Table -- Toppings(<ins>top_id</ins>, name, price, pizzaside)
CREATE TABLE Toppings (
    top_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(10,2),
    pizzaside CHAR
);

-------------------------------------------------------
-- Phone_list Table -- Phone_list (<ins>cust_id, phone_number</ins>) <br>
CREATE TABLE Phone_list (
    cust_id INTEGER NOT NULL,
    phone_number INTEGER NOT NULL,
    PRIMARY KEY (cust_id, phone_number),
    FOREIGN KEY (cust_id)
        REFERENCES Customer (cust_id)
);


-- Address_list -- Address_list (<ins>add_id, cust_id</ins>, zipcode, state, city, st_name, st_number, custom_name) <br>
CREATE TABLE Address_list (
    add_id INTEGER NOT NULL,
    cust_id INTEGER NOT NULL,
    zipcode INTEGER NOT NULL,
    state VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    st_name VARCHAR(50) NOT NULL,
    st_number SMALLINT NOT NULL,
    custom_name VARCHAR(30),
    PRIMARY KEY (add_id, cust_id),
    FOREIGN KEY (cust_id)
        REFERENCES Customer (cust_id)
);

-- Staff Table -- Staff (<ins>staff_id</ins>, rest_id, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>
CREATE TABLE Staff (
    staff_id SERIAL PRIMARY KEY,
    rest_id INTEGER NOT NULL,
    name VARCHAR(50),
    job_role VARCHAR(30),
    salary DECIMAL(10,2),
    phone_number INTEGER,
    start_timeshift TIME,
    end_timeshift TIME,
    FOREIGN KEY (rest_id)
        REFERENCES Restaurant(rest_id)
);

-- DeliveryMan Table -- DeliveryMan (<ins>staff_id</ins>, license, exp_date, license_plate) <br>
CREATE TABLE DeliveryMan (
    staff_id INTEGER NOT NULL,
    license VARCHAR,
    exp_date DATE,
    license_plate VARCHAR,
    PRIMARY KEY (staff_id),
    FOREIGN KEY (staff_id)
        REFERENCES Staff(staff_id)
);

-- Pizza_Toppings Table -- Pizza_Toppings (<ins>pizza_id, top_id</ins>, quantity) <br>
CREATE TABLE Pizza_Toppings (
    pizza_id INTEGER NOT NULL,
    top_id INTEGER NOT NULL,
    quantity INTEGER,
    PRIMARY KEY (pizza_id, top_id),
    FOREIGN KEY (pizza_id)
        REFERENCES Pizza(pizza_id),
    FOREIGN KEY (top_id)
        REFERENCES Toppings(top_id)
);

-- Order Table -- Order (<ins>ord_id</ins>, cust_id, rest_id, staff_id, cupom_id, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>
CREATE TABLE Order (
    ord_id SERIAL PRIMARY KEY,
    cust_id INTEGER NOT NULL,
    rest_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    cupom_id INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL,
    order_type VARCHAR(30),
    payment_method VARCHAR(30),
    ord_startDate TIMESTAMP,
    delivered_date TIMESTAMP,
    FOREIGN KEY (cust_id)
        REFERENCES Customer(cust_id),
    FOREIGN KEY (rest_id)
        REFERENCES Restaurant(rest_id),
    FOREIGN KEY (staff_id)
        REFERENCES Staff(staff_id),
    FOREIGN KEY (cupom_id)
        REFERENCES Cupom(cupom_id)
);

-- Order_Item TAble -- Order_Items (<ins>ord_id, pizza_id, beverage_id, nonpizza_id</ins>, quantity) <br>
CREATE TABLE Order_Items (
    ord_id INTEGER NOT NULL,
    pizza_id INTEGER NOT NULL,
    beverage_id INTEGER NOT NULL,
    nonpizza_id INTEGER NOT NULL,
    quantity INTEGER,
    PRIMARY KEY (ord_id, pizza_id, beverage_id, nonpizza_id),
    FOREIGN KEY (ord_id)
        REFERENCES Order(ord_id),
    FOREIGN KEY (pizza_id)
        REFERENCES Pizza(pizza_id) DEFAULT (0),
    FOREIGN KEY (beverage_id)
        REFERENCES Beverage(beverage_id) DEFAULT (0),
    FOREIGN KEY (nonpizza_id)
        REFERENCES Non_pizza(nonpizza_id) DEFAULT (0)     
);
 