# ER -> TableSchema

Customer (<ins>cust_id</ins>, username, birthday, password, firstname, surname)

***

Phone_list (<ins>cust_id, phone_number</ins>) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Phone_list(cust_id) => Customer(cust_id)

***

Address_list (<ins>add_id, cust_id</ins>, zipcode, state, city, st_name, st_number, custom_name) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Address_list(cust_id) => Customer(cust_id)

***

Order (<ins>ord_id</ins>, cust_id, rest_id, staff_id, cupom_id, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(rest_id) => Restaunrant(rest_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(cust_id) => Customer(cust_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(staff_id) => Staff(staff_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(cupom_id) => Cupom(cupom_id) <br>

***

Cupom (<ins>cupom_id</ins>, valid, start_date, expiration_date, description)

***

Restaurant (<ins>rest_id</ins>, name, phone_number, zipcode, state, city, st_name, st_number)

***

Staff (<ins>staff_id</ins>, rest_id, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Staff(rest_id) => Restaurant(rest_id)

***

DeliveryMan (<ins>staff_id</ins>, license, exp_date, license_plate) <br>
&nbsp;&nbsp;&nbsp;&nbsp;DeliverMan(staff_id) => Staff(staff_id)

***

Order_Items (<ins>ord_id, pizza_id, beverage_id, nonpizza_id</ins>, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(ord_id) => Order(ord_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(pizza_id) => Pizza(pizza_id)
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(beverage_id) => Beverage(beverage_id)
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(nonpizza_id) => NonPizza(nonpizza_id)

***

Beverage (<ins>beverage_id</ins>, brand, size, name, price) <br>

***

Pizza (<ins>pizza_id</ins>, size, dough, flavor_rightside, flavor_leftside, name, price) <br>

***

Non_pizza (<ins>nonpizza_id</ins>, flavor, description, name, price) <br>

***

Pizza_Toppings (<ins>pizza_id, top_id</ins>, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza_Toppings(pizza_id) => Pizza(pizza_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza_Toppings(top_id) => Toppings(top_id)

***

Toppings(<ins>top_id</ins>, name, price, pizzaside)