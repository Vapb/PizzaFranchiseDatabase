# ER -> TableSchema

customer (<ins>cust_id</ins>, username, birthday, password, firstname, surname)

***

phone_list (<ins>cust_id, phone_number</ins>) <br>
&nbsp;&nbsp;&nbsp;&nbsp;phone_list(cust_id) => customer(cust_id)

***

address_list (<ins>add_id, cust_id</ins>, zipcode, state, city, st_name, st_number, custom_name) <br>
&nbsp;&nbsp;&nbsp;&nbsp;address_list(cust_id) => customer(cust_id)

***

customer_order (<ins>ord_id</ins>, cust_id, rest_id, staff_id, cupom_id, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>
&nbsp;&nbsp;&nbsp;&nbsp;customer_order(rest_id) => restaunrant(rest_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;customer_order(cust_id) => customer(cust_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;customer_order(staff_id) => staff(staff_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;customer_order(cupom_id) => cupom(cupom_id) <br>

***

cupom (<ins>cupom_id</ins>, valid, start_date, expiration_date, description)

***

restaurant (<ins>rest_id</ins>, name, phone_number, zipcode, state, city, st_name, st_number)

***

staff (<ins>staff_id</ins>, rest_id, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>
&nbsp;&nbsp;&nbsp;&nbsp;staff(rest_id) => restaurant(rest_id)

***

deliverman (<ins>staff_id</ins>, license, exp_date, license_plate) <br>
&nbsp;&nbsp;&nbsp;&nbsp;deliverman(staff_id) => staff(staff_id)

***

order_items (<ins>ord_id, pizza_id, beverage_id, nonpizza_id</ins>, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;order_items(ord_id) => customer_order(ord_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;order_items(pizza_id) => pizza(pizza_id)
&nbsp;&nbsp;&nbsp;&nbsp;order_items(beverage_id) => beverage(beverage_id)
&nbsp;&nbsp;&nbsp;&nbsp;order_items(nonpizza_id) => non_pizza(nonpizza_id)

***

beverage (<ins>beverage_id</ins>, brand, size, name, price) <br>

***

pizza (<ins>pizza_id</ins>, size, dough, flavor_rightside, flavor_leftside, name, price) <br>

***

non_pizza (<ins>nonpizza_id</ins>, flavor, description, name, price) <br>

***

pizza_toppings (<ins>pizza_id, top_id</ins>, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;pizza_toppings(pizza_id) => pizza(pizza_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;pizza_toppings(top_id) => toppings(top_id)

***

toppings(<ins>top_id</ins>, name, price, pizzaside)