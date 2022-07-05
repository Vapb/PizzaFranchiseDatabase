# ER -> TableSchema

Customer (cust_id, username, birthday, password, firstname, surname)

***

Phone_list (cust_id, phone_number) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Phone_list(cust_id) => Customer(cust_id)

***

Address_list (add_id, cust_id, zipcode, state, city, st_name, st_number, custom_name) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Address_list(cust_id) => Customer(cust_id)

***

Order (ord_id, cust_id, rest_id, staff_id, cupom_id, price, status, order_type, payment_method, ord_startDate, delivered_date) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(rest_id) => Restaunrant(rest_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(cust_id) => Customer(cust_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(staff_id) => Staff(staff_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order(cupom_id) => Cupom(cupom_id) <br>

***

Cupom (cupom_id, valid, start_date, expiration_date, description)

***

Restaurant (rest_id, name, phone_number, zipcode, state, city, st_name, st_number)

***

Staff (staff_id, rest_id, name, job_role, salary, phone_number, start_timeshift, end_timeshift) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Staff(rest_id) => Restaurant(rest_id)

***

DeliveryMan (staff_id, license, exp_date, license_plate) <br>
&nbsp;&nbsp;&nbsp;&nbsp;DeliverMan(staff_id) => Staff(staff_id)

***

Order_Items (ord_id, item_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(ord_id) => Order(ord_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Order_Items(item_id) => Item(item_id)

***

Item (item_id, quantity, price)

***

Beverage (item_id, name, brand, size) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Beverage(item_id) => Item(item_id)

***

Pizza (item_id, size, dough, crust, flavor_rightside, flavor_leftside) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza(item_id) => Item(item_id)

***

Non_pizza (item_id, name, flavor) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Non_pizza(item_id) => Item(item_id)

***

Pizza_Toppings (item_id, top_id, quantity) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza_Toppings(item_id) => Item(item_id) <br>
&nbsp;&nbsp;&nbsp;&nbsp;Pizza_Toppings(top_id) => Toppings(top_id)

***

Toppings(top_id, name, price, pizzaside)