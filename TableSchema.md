# ER -> TableSchema

Customer (<ins>cust_id</ins>, username, birthday, password, firstname, surname)

***

Phone_list (<ins>cust_id, phone_number</ins>) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Phone_list(cust_id) => Customer(cust_id)

***

Address_list (<ins>add_id, cust_id</ins>, zipcode, state, city, st_name, st_number, custom_name) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Address_list(cust_id) => Customer(cust_id)

***

Order (<ins>ord_id, cust_id, rest_id, staff_id, cupom_id</ins>, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(rest_id) => Restaunrant(rest_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(cust_id) => Customer(cust_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(staff_id) => Staff(staff_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(cupom_id) => Cupom(cupom_id) <br>

***

Cupom (<ins>cupom_id</ins>, valid, start_date, expiration_date, description)

***

Restaurant (<ins>rest_id</ins>, name, phone_number, zipcode, state, city, st_name, st_number)

***

Staff (<ins>staff_id, rest_id</ins>, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Staff(rest_id) => Restaurant(rest_id)

***

DeliveryMan (<ins>staff_id</ins>, license, exp_date, license_plate) <br>
&nbsp;&nbsp;&nbsp;&nbsp;DeliverMan(staff_id) => Staff(staff_id)

***

Order_Items (<ins>ord_id, item_id</ins>, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(ord_id) => Order(ord_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(item_id) => Item(item_id)

***

Item (<ins>item_id</ins>, name, price)

***

Beverage (<ins>item_id</ins>, brand, size) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Beverage(item_id) => Item(item_id)

***

Pizza (<ins>item_id</ins>, size, dough, crust, flavor_rightside, flavor_leftside) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza(item_id) => Item(item_id)

***

Non_pizza (<ins>item_id</ins>, flavor, description) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Non_pizza(item_id) => Item(item_id)

***

Pizza_Toppings (<ins>item_id, top_id</ins>, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza_Toppings(item_id) => Item(item_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza_Toppings(top_id) => Toppings(top_id)

***

Toppings(<ins>top_id</ins>, name, price, pizzaside)