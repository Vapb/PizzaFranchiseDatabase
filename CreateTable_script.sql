-- Script to create tables in database

CREATE TABLE Customers (
    cust_id SERIAL PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    birthday DATE,
);


CREATE TABLE Phone_list (
    cust_id INTEGER NOT NULL,
    phone_number INTEGER NOT NULL,
    PRIMARY KEY (cust_id, phone_number),
    FOREIGN KEY (cust_id)
        REFERENCES Customers (cust_id)
);


CREATE TABLE Address_list (
    add_id INTEGER NOT NULL,
    cust_id INTEGER NOT NULL,
    zipcode INTEGER NOT NULL,
    state VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    st_name VARCHAR(60) NOT NULL,
    st_number SMALLINT NOT NULL,
    custom_name VARCHAR(30),
    PRIMARY KEY (add_id, cust_id),
    FOREIGN KEY (cust_id)
        REFERENCES Customers (cust_id)
);

-- Order (<ins>ord_id</ins>, cust_id, rest_id, staff_id, cupom_id, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>

CREATE TABLE Order (
    ord_id SERIAL PRIMARY KEY,
    cust_id INTEGER NOT NULL,
    rest_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    cupom_id INTEGER NOT NULL,
    price INTEGER,
    status VARCHAR(30),
    order_type VARCHAR(30),
    payment_method VARCHAR(30),
    ord_startDate TIMESTAMP,
    delivered_date TIMESTAMP,
    FOREIGN KEY (cust_id)
        REFERENCES Customers(cust_id),
    FOREIGN KEY (rest_id)
        REFERENCES Restaurant(rest_id),
    FOREIGN KEY (staff_id)
        REFERENCES Staff(staff_id),
    FOREIGN KEY (cupom_id)
        REFERENCES Cupom(cupom_id)
);

-- Cupom (<ins>cupom_id</ins>, valid, start_date, expiration_date, description)

CREATE TABLE Cupom (
    cupom_id SERIAL PRIMARY KEY,
    valid BOOLEAN,
    start_date TIMESTAMP,
    expiration_date TIMESTAMP,
    description VARCHAR(80),
);

-- Restaurant (<ins>rest_id</ins>, name, phone_number, zipcode, state, city, st_name, st_number)

CREATE TABLE Restaurant (
    rest_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    phone_number INTEGER,
    zipcode INTEGER,
    state VARCHAR(30),
    city VARCHAR(30),
    st_name VARCHAR(30),
    st_number SMALLINT
);

-- Staff (<ins>staff_id</ins>, rest_id, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>

CREATE TABLE Staff (
    staff_id SERIAL PRIMARY KEY,
    rest_id INTEGER NOT NULL,
    name VARCHAR(30),
    job_role VARCHAR(30),
    salary FLOAT,
    phone_number INTEGER,
    start_timeshift TIMESTAMP,
    end_timeshift TIMESTAMP,
    FOREIGN KEY (rest_id)
        REFERENCES Restaurant(rest_id)
);

-- DeliveryMan (<ins>staff_id</ins>, license, exp_date, license_plate) <br>
CREATE TABLE DeliveryMan (
    staff_id INTEGER NOT NULL,
    license VARCHAR,
    exp_date DATE,
    license_plate VARCHAR,
    PRIMARY KEY (staff_id),
    FOREIGN KEY (staff_id)
        REFERENCES Staff(staff_id)
);

-- Order_Items (<ins>ord_id, item_id</ins>, quantity) <br>
CREATE TABLE Order_Items (
    ord_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    quantity INTEGER,
    PRIMARY KEY (ord_id, item_id),
    FOREIGN KEY (ord_id)
        REFERENCES Order(ord_id),
    FOREIGN KEY (item_id)
        REFERENCES Item(item_id)
);

-- Item (<ins>item_id</ins>, name, price)
CREATE TABLE Item (
    item_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    price FLOAT
);

-- Beverage (<ins>item_id</ins>, brand, size) <br>
CREATE TABLE Beverage (
    item_id INTEGER NOT NULL,
    brand VARCHAR(30),
    size VARCHAR(30),
    PRIMARY KEY (item_id),
    FOREIGN KEY (item_id)
        REFERENCES Item(item_id)
);

-- Pizza (<ins>item_id</ins>, size, dough, flavor_rightside, flavor_leftside) <br>
CREATE TABLE Pizza (
    item_id INTEGER NOT NULL,
    size VARCHAR(30),
    dough VARCHAR(30),
    flavor_rightside VARCHAR(30),
    flavor_leftside VARCHAR(30),
    PRIMARY KEY (item_id),
    FOREIGN KEY (item_id)
        REFERENCES Item(item_id)
);

-- Non_pizza (<ins>item_id</ins>, flavor, description) <br>
CREATE TABLE Non_pizza (
    item_id INTEGER NOT NULL,
    flavor VARCHAR(30),
    description VARCHAR(50),
    PRIMARY KEY (item_id),
    FOREIGN KEY (item_id)
        REFERENCES Item(item_id)
);

-- Pizza_Toppings (<ins>item_id, top_id</ins>, quantity) <br>
CREATE TABLE Pizza_Toppings (
    item_id INTEGER NOT NULL,
    top_id INTEGER NOT NULL,
    quantity INTEGER,
    PRIMARY KEY (item_id, top_id),
    FOREIGN KEY (item_id)
        REFERENCES Item(item_id),
    FOREIGN KEY (top_id)
        REFERENCES Toppings(top_id)
);

-- Toppings(<ins>top_id</ins>, name, price, pizzaside)
CREATE TABLE Toppings (
    top_id SERIAL PRIMARY KEY,
    name VARCHAR(30),
    price FLOAT,
    pizzaside CHAR
);


