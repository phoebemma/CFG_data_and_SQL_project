-- This is a database for the logistics arm of a multi-region retail chain 
-- The chain operates a franchise so products sold at the different shops are similar or basically same
-- The franchise expects the franchisors to make a cash deposit from which the cost of their orders are deducted .

-- When the deposited amount is exhausted, the delivery staff is unable to make deliveries to the said franchisors except clearance is obtained from admin  




-- The database will be called "Kjoprite"
Create database Kjoprite;


#Access the database
use Kjoprite;

 #Create the main table that will contain customers' information
  Create table Franchisor(
  Franchisor_ID int not null unique, #Each franschisor's ID will be unique
  Phone_number varchar(11) not null, #this allows for special characters like "+" seen in country codes
  Address varchar(55) not null,
 primary key ( Address)
  );
  
  insert into Franchisor
  (Franchisor_ID, Phone_number, Address)
  values
  (001, 465789887, "Kongsvei 3"),
  (004, 466789086, "Dronningsvei 76"),
  (007, 87654367, "Gamlevei 2"),
  (002, 87687625, "Oslo 12"),
  (003, 097643272, "Stavanger 8"),
  (005, 0735483645, "Hamar 7"),
  (006, 987324567, "Byggevie 56");
  
  
  
select * from Franchisor
order by Franchisor_ID;
  
  
  
  
  
  #Create a table that contains the location details of the Franchisors
  create table Location(
  Customer_ID int not null unique, #should match franchisor_ID
  Address varchar(55) not null,
  Postcode int(4) not null, #Limits the postcode to 4 digits as that is the standard in Norway
  City varchar (50) not null,
  primary key (City),
  foreign key ( Address) references Franchisor( Address)
   on update cascade
  );
  
  insert into Location
  (Customer_ID, Address, Postcode, City)
  Values
  (001, "Kongsvei 3", 7654, "Oslo" ),
  (004, "Dronningsvei 76", 2654, "Bergen"),
  (007, "Gamlevei 2", 2654, "Hamar"),
  (002, "Oslo 12", 8765, "Brokkoli"),
  (003,  "Stavanger 8", 2624, "Stavanger"),
  (005, "Hamar 7", 1176, "Innlandet"),
  (006, "Byggevie 56", 3456, "Baerum");
  
  
  select * from Location
  order by Customer_id;
  
  
  
  
  
  #Create a view that calls up the contact details of the Franchisors
  #This is probably something a select set of staff would need at some points in time
create view Franchisors_details as 
select Franchisor.Franchisor_ID, Franchisor.Phone_number,  Location.Address, Location.Postcode, Location.City
from Location
join Franchisor on Franchisor.Address =Location.Address
order by Franchisor_ID;



#View the created view
select * from Franchisors_details;









  #Create a table that contains products , quantities and orders
  -- The products will be listed as the following
  -- Fruits
  -- Vegetables
  -- Dairy
  -- Household products
  -- Sweets
  -- Pastries
  -- flours
  # The products will be also classified into highly perishable, perishable and non-perishable
  #This table contains information the delivery staff would need, it thus doesnt need to contain cost
  
  
  create table Orders(
  ID int not null auto_increment,
  Product char(55) not null, #specifies if it is a fruit, vegetable, etc
  Category char(55) not null, # specifies if it is highly perishable , perishable or non-perishable
  Order_date date,
  Quantity int not null, 
  Delivery_point varchar(55) not null,
  primary key (ID),
  foreign key (Delivery_point) references Franchisor(Address)
  on update cascade
  );
  
  #alter table Orders
  #modify Product char (100) not null;
  
  
insert into orders
( Product, Category, Order_date, Quantity, Delivery_point)  
values
("Dairy", "Highly perishable", "2023-03-28", 5, "Byggevie 56"), 
("Fruits", "Highly perishable", "2023-03-28", 12, "Byggevie 56"),
( "Vegetables", "Highly perishable", "2023-04-28", 8, "Byggevie 56"),
( "Vegetables", "Highly perishable", "2023-04-28", 50, "Gamlevei 2" ),
( "Household products", "non perishable", "2023-02-28", 18, "Gamlevei 2" ),
( "Pastries", "Perishable", "2023-04-28", 20, "Gamlevei 2" ),
( "Flour", "non perishable", "2023-01-28", 6, "Gamlevei 2" ),
( "Vegetables", "Highly perishable", "2023-10-28", 50, "Dronningsvei 76" ),
( "Vegetables", "Highly perishable", "2023-08-28", 10, "Dronningsvei 76" ),
( "Sweets", "Non perishable", "2022-12-28", 50, "Dronningsvei 76" ),
( "Pastries", "Perishable", "2023-02-28", 16, "Hamar 7" );

  
  
  select * from Orders;
   
   #Query the Franchisor and Customer_ID table
  select Franchisor.Franchisor_ID as Customer_ID, Orders.ID as "Order_ID", Orders.Product, Orders.Order_date, Orders.Quantity, Orders.Delivery_point
  from Orders
  inner join Franchisor on Franchisor.Address =Orders.Delivery_point
  order by Customer_ID;
  
  -- Create a database that contains details of each Franchisor's deposit
  
  create table Deposit(
Franchisors_ID int not null, #Same as Franchisor_ID
Date_of_deposit date not null,
Amount decimal not null, 
primary key(Franchisors_ID)

);

insert into Deposit
  (Franchisors_ID, Date_of_Deposit, Amount)
  values
  (1, "2022-12-30", "1000000.00"),
  (7, "2022-02-28", "100000.00"),
  (3, "2023-10-30", "500000.00"),
  (2, "2023-02-20", "1000000.00"),
  (4, "2022-12-30", "1000000.00"),
  (6, "2023-09-26", "100500.00"),
  (5, "2023-12-30", "90000.00");

select * from Deposit;

  #Create table that contains the credit and debit details of franchisors and how much they owe
  create table Accounts(
  Order_ID int not null,
  Customer_ID int , #same as ID on franchisor table
  Cost decimal not null, # specifies the cost of the product
  Quantity int not null, #specifies the quantity of products delivered
  Credit decimal not null, #specifies the amount the franchisor has deposited with the franchisee for each product group
  #from the credit, the cost of each product will be deducted
  #primary key (Customer_ID),
  foreign key (Order_ID) references Orders(ID),
  foreign key (Customer_ID) references Deposit(Franchisors_ID)
  on update cascade
  ); 

  
  alter table Accounts
  drop Credit; # drop this. Should be in another table entirely
  
  alter table Accounts
  modify Quantity int;
  
  alter table Accounts
  drop Quantity;

  insert into Accounts
  (Customer_ID, Order_ID,  Cost) # Using join, the order_ID and the quantity will be matched and a view created
  values
  (006, 1, "700.0" ),
 (006, 2,  "400.0"),
 (006, 3, "800.00"),
 (007, 4, "800.00"),
 (007, 5, "1000.00"),
 (007, 6, "600.00"),
 (005, 11, "650.00"),
 (004, 10, "550.00"),
 (007, 7, "300.00"),
 (004, 8, "800.50"),
 (004, 9, "950.90");

select * from Accounts;
select * from Orders;
#While the Accounts and Deposit tables look like both unnecessary, they serve different purposes
-- Part of the idea of the franchise is that franchisors deposit cash from which they make deductions


  
  
  -- create a query where you extract the total cost 
#select Franchisor.ID as Customer_ID, Accounts.Cost, Orders.Delivery_point, Orders.Product,  Orders.quantity, Accounts.Cost * Orders.quantity as "Total_cost"
#from Accounts
#inner join Orders on Orders.ID =Accounts.Order_ID;





  #Create a table that shows the status of orders
  create table status_report(
  Delivery_id int not null,
  Delivery_status char (50) not null, #specifies if goods have been delivered, on-transit, halted or not-delivered
  Delivery_staff char (50) not null, #specifies staff who has been designated to take charge of delivery
  Date_of_update date,
  foreign key (Delivery_id) references Accounts(Order_ID)
  on update cascade
  );
  
  
  
   insert into status_report
  (Delivery_id,  Delivery_status, Date_of_update, Delivery_staff) # Using join, the order_ID and the quantity will be matched and a view created
  values
  (1, "Delivered" , "2022-12-30", "Mark"),
 (2,  "Delivered", "2022-12-30", "Mark"),
 (3, "Halted", "2022-11-30", "Stein"),
 (4, "On transit", "2023-9-30", "Ray"),
 (5, "Halted", "2023-11-30", "Ray"),
 (6, "Delivered", "2022-12-30", "Chidimma"),
 (11, "Not delivered", "2022-07-30", "Stein"),
 (10, "Delivered", "2022-12-30", "Dan"),
 (7, "On transit", "2022-09-30", "Dan"),
 (8, "On transit", "2022-12-30", "Chidimma"),
 (9, "Not delivered", "2021-12-30", "Vikar")
 ;
  
  
  
  
  
  
  #Create a function that could be used to check the status of a particular delivery
  -- This is used to check the status of a particular product
  delimiter //
create function delivery_update (
#set parameter
Status varchar(60)
)
returns varchar(60)
deterministic
begin
#here comes what the function does
	declare delivery_status varchar(60);
    if Status = "Delivered"  then
    set delivery_status = "Product delivered";
    elseif status = "On transit"  then  # The bracket is needed to run the two conditions before execution
		set delivery_status = "Product enroute to delivery point";
        elseif status = "Halted" then
			set delivery_status = "Delivery halted, contact Admin";
		elseif status = "Not delivered" then
			set delivery_status = "Product not delivered, Follow up to ensure delivery";
	end if;
    return(delivery_status);
    
end//
delimiter ; 
  
  
  select Delivery_id, delivery_update(Delivery_status) as "Status"
  from status_report
  #where Delivery_id = 3
  ;
  
  
  
  -- check for deliveries that are yet to be made
  drop view if exists Delivery_instructions;
  Create view Delivery_instructions as
  select distinct Orders.ID as "Order_id", 
  Orders.Delivery_point,  
  Orders.Product, 
  Orders.Category, 
  status_report.Delivery_status
  from Orders, status_report
 where status_report.Delivery_status = "Not Delivered"
 #inner join Orders on Orders.Delivery_point =Location.Address
 ;
 
  
 select * from Delivery_instructions;
  
  
  
  
  # Create a view called Balance_sheet that sums up how much a Frannchisor has left in the deposit account
   drop view if exists Balance_sheet;
 create view Balance_sheet as 
select F.Franchisor_ID, o.id as "order_id",  O.Product , O.order_date, O.Quantity, A.cost,  sum(O.Quantity * A.Cost) as "Total_cost" #, D.Amount-sum(O.Quantity * A.Cost) as "Balance"
from Franchisor F, Orders O, Deposit D,  Accounts A
#inner join Deposit on Deposit.Franchisors_ID = Franchisor_ID
where F.Franchisor_ID = D.Franchisors_ID
and O.ID = A.Order_id
group by F.Franchisor_ID, O.ID,  A.cost, O.quantity, O.ID
order by F.Franchisor_ID
;

  select * from Balance_sheet
  #where Franchisor_ID = 1
  ;
  
  #Find out which Franchisors are owing
  select B.Franchisor_ID,  sum(B.Total_cost) as "Debit",
  D.Amount, (D.Amount-sum(B.Total_cost)) as "Balance"
  from Balance_sheet B
  Join Deposit D
  on B.Franchisor_ID =  D.Franchisors_ID
  group by B.Franchisor_ID
  ;
  
 

  


  