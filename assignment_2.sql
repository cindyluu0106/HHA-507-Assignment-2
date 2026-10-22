--Creating a table for Coffee Orders
Create Table CoffeeOrders (
    order_id int,
    customer_name varchar(100),
    drink_name varchar(100),
    drink_size varchar(100),
    quantity int,
    price NUMBER(8,2),
    total_amount NUMBER(8,2),
    order_date date,
    order_time timestamp,
    order_status varchar(30)
);




--I'm checking to see if the code is correct by select * which means select all and using from (table name) to see the column




select *
from CoffeeOrders ;


--Im now manually adding data into the table


Insert into CoffeeOrders
Values (
    1,
    'John Doe',
    'Iced Latte',
    'Large',
    1,
    3.50,
    3.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('9:15','HH24:MI'),
    'Completed'
);


Insert into CoffeeOrders
Values (
    2,
    'Jane Doe',
    'Cappucino',
    'Small',
    2,
    4.50,
    9.00,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('6:15','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    3,
    'Alex Grape',
    'Macchiato',
    'Medium',
    1,
    4.00,
    4.00,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('8:32','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    4,
    'Cherry Nescafe',
    'Chai Latte',
    'Small',
    5,
    5.50,
    27.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('12:55','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    5,
    'Doe Deer',
    'Iced Americano',
    'Large',
    2,
    5.75,
    11.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('14:12','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    6,
    'Cal Bean',
    'Iced Latte',
    'Small',
    2,
    1.50,
    3.00,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('14:45','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    6,
    'Alex Dane',
    'Orange Juice',
    'Small',
    7,
    3.50,
    24.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('17:01','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    7,
    'Bruno Saturn',
    'Water',
    'Small',
    2,
    1.50,
    3.00,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('18:20','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    8,
    'Cindy Luu',
    'Black Coffee',
    'Small',
    1,
    2.50,
    2.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('20:20','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    9,
    'Jennifer Luu',
    'Chai Latte',
    'Large',
    1,
    7.50,
    7.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('20:20','HH24:MI'),
    'Completed'
);

Insert into CoffeeOrders
Values (
    10,
    'Parker Butters',
    'Cappucino',
    'Small',
    1,
    4.50,
    4.50,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('20:35','HH24:MI'),
    'In Complete'
);

--Im now going to upadate one of the columns
Update COFFEEORDERS
Set order_status = 'Completed'
Where CUSTOMER_NAME = 'Parker Butters'; 

Commit;

--I'm now going to alter the table and add another column for payment methods
Alter table CoffeeOrders
Add (
    payment_method varchar(100)
);

select *
from COFFEEORDERS;

--I'm going to add an order that was cancelled so I can delete it

Insert into CoffeeOrders
Values (
    11,
    'Karen Dover',
    'Ice Latte',
    'Small',
    1,
    1.25,
    1.25,
    TO_DATE ('2026-10-10','YYYY-MM-DD'),
    TO_TIMESTAMP ('21:22','HH24:MI'),
    'Canceled',
    'Card'
);

Update COFFEEORDERS
Set PAYMENT_METHOD = 'Canceled'
Where CUSTOMER_NAME = 'Karen Dover'; 

Commit; 

--I'm now going to delete the row that has Karen Dover's order
Delete from COFFEEORDERS
Where customer_name = 'Karen Dover'
And order_status = 'Canceled';

Commit;

select *
from CoffeeOrders;

--I'm now going to make a second table so that I can do the join commands
Create table Menu (
    drink_name varchar(100),
    price_drink number(8,2),
    category varchar(100)
);

Insert into Menu
Values (
    'Iced Latte',
    1.25,
    'Small'
);

Insert into Menu
Values (
    'Iced Latte',
    2.25,
    'Medium'
);
Insert into Menu
Values (
    'Iced Latte',
    3.25,
    'Large'
);

Insert into Menu
Values (
    'Cappucino',
    4.50,
    'Small'
);

Insert into Menu
Values (
    'Cappucino',
    5.50,
    'Medium'
);
Insert into Menu
Values (
    'Cappucino',
    6.50,
    'Large'
);

Insert into Menu
Values (
    'Macchiato',
    3.00,
    'Small'
);

Insert into Menu
Values (
    'Macchiato',
    4.00,
    'Medium'
);
Insert into Menu
Values (
    'Macchiato',
    5.00,
    'Large'
);

Insert into Menu
Values (
    'Chai Latte',
    5.50,
    'Small'
);

Insert into Menu
Values (
    'Chai Latte',
    6.50,
    'Medium'
);
Insert into Menu
Values (
    'Chai Latte',
    7.50,
    'Large'
);

Insert into Menu
Values (
    'Iced Americano',
    3.50,
    'Small'
);

Insert into Menu
Values (
    'Iced Americano',
    4.50,
    'Medium'
);
Insert into Menu
Values (
    'Iced Americano',
    5.50,
    'Large'
);

Insert into Menu
Values (
    'Orange Juice',
    3.50,
    'Small'
);

Insert into Menu
Values (
    'Orange Juice',
    4.50,
    'Medium'
);
Insert into Menu
Values (
    'Orange Juice',
    5.50,
    'Large'
);

Insert into Menu
Values (
    'Water',
    1.50,
    'Small'
);

Insert into Menu
Values (
    'Water',
    2.50,
    'Medium'
);
Insert into Menu
Values (
    'Water',
    3.50,
    'Large'
);

Insert into Menu
Values (
    'Black Coffee',
    2.50,
    'Small'
);

Insert into Menu
Values (
    'Black Coffee',
    3.50,
    'Medium'
);
Insert into Menu
Values (
    'Black Coffee',
    4.50,
    'Large'
);
 select *
 from Menu
 ;

 -- Im going to sleect specific fields that are no mroe than 100 rows
 SELECT
    order_id,
    customer_name,
    drink_name,
    quantity,
    total_amount,
    order_date,
    order_status
from CoffeeOrders
order by order_id
Fetch first 100 rows only;

select *
from menu ;

--Im now going to do an inner join and left outer join by selecting specific columns from each table and giving them a label where o is the coffeeorders and m is from the menu
select
    o.order_id,
    o.customer_name,
    o.total_amount,
    m.category,
    m.price_drink
from COFFEEORDERS o
inner join Menu m
    ON o.drink_name = m.drink_name
order by o.order_id
fetch first 100 rows only;

SELECT
    o.order_id,
    o.customer_name,
    o.drink_name,
    o.total_amount,
    m.category,
    m.price_drink
FROM CoffeeOrders o
LEFT OUTER JOIN Menu m
    ON o.drink_name = m.drink_name
ORDER BY o.order_id
FETCH FIRST 100 ROWS ONLY;