CREATE TABLE Customers (
    customer_id serial PRIMARY KEY ,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    phone_number VARCHAR
	)

insert into Customers values(1,'maithili','pande','maithili12@gmail',93827371823)
insert into Customers values(2,'shravani','pande','shravani98@gmail',82826516372)
insert into Customers values(3,'samiksha','mendhe','samiksha74@gmail',8282321637)
insert into Customers values(4,'saksham','vaidya','skvaidya9@gmail',8282321637)
insert into Customers values(5,'mayank','burde','myburde14@gmail',8282321637)
insert into Customers values(6,'subodh meshram','','sumeshram7@gmail',8282321637)
insert into Customers values(7,'khushi','takkamore','takkamore54@gmail',8282321637)
insert into Customers values(8,'yuvati','rahate','ytrahate22@gmail',8282321637)
insert into Customers values(9,'karan','siraskar','karan12@gmail',8282321637)

select * from Customers

create table Orders (
order_id serial PRIMARY KEY,
customer_id int NOT NULL,
order_date int NOT NULL,
total_amount float NOT NULL,
status varchar NOT NULL
)

insert into Orders values(1,'1',12-10-2025,'250','delivered')
insert into Orders values(2,'2',12-11-2025,'200','pending')
insert into Orders values(3,'3',12-12-2025,'300','pending')
insert into Orders values(4,'4',12-13-2025,'400','delivered')
insert into Orders values(5,'5',12-14-2025,'450','delivered')
insert into Orders values(6,'6',12-15-2025,'400','pending')
insert into Orders values(7,'7',12-16-2025,'420','delivered')
insert into Orders values(8,'8',12-17-2025,'340','delivered')
insert into Orders values(9,'9',12-18-2025,'500','pending')

select * from Orders

create table Products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR NOT NULL,
    price float NOT NULL,
    stock_quantity int NOT NULL
)

insert into Products values(1,'groceries','250','500')
insert into Products values(2,'groceries','300','5000')
insert into Products values(3,'medicines','400','5500')
insert into Products values(4,'groceries','200','5500')
insert into Products values(5,'medicines','400','6500')
insert into Products values(6,'groceries','899','5000')
insert into Products values(7,'food','500','900')
insert into Products values(8,'groceries','250','4500')
insert into Products values(9,'food','800','5000')

select * from Products

create table Orders (
order_id serial PRIMARY KEY,
customer_id int NOT NULL,
order_date int NOT NULL,
total_amount float NOT NULL,
status varchar NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

copy Orders from 'D:\da189(DATA ANALYTICS)\task2\orders.csv' DELIMITER ',' csv header

select * from Orders

CREATE TABLE OrderItems (
    order_item_id serial PRIMARY KEY,
    order_id  int NOT NULL,
    product_id  int NOT NULL,
    quantity INT NOT NULL,
    subtotal float NOT NULL
	)

insert into OrderItems values(1,1,7,9000,'900')
insert into OrderItems values(2,2,9,8000,'00')
insert into OrderItems values(3,3,7,7000,'500')
insert into OrderItems values(4,4,8,5000,'300')
insert into OrderItems values(5,5,6,9000,'200')
insert into OrderItems values(6,6,4,7000,'500')
insert into OrderItems values(7,7,3,3000,'600')
insert into OrderItems values(8,8,2,2000,'700')
insert into OrderItems values(9,9,10,9000,'800')

select * from OrderItems

CREATE TABLE Shipments (
    shipment_id  serial PRIMARY KEY,
    order_id int NOT NULL,
    shipping_date int NOT NULL,
    tracking_mail VARCHAR,
    status VARCHAR NOT NULL
	)

insert into Shipments values(1,3,10-23-2025,'sfd@','processing')
insert into Shipments values(2,56,10-24-2025,'ghh@','delivered')
insert into Shipments values(3,56,10-25-2025,'sgh@','processing')
insert into Shipments values(4,65,10-26-2025,'fgg@','processing')
insert into Shipments values(5,67,10-27-2025,'sff@','delivered')
insert into Shipments values(6,37,10-28-2025,'hnb@','processing')
insert into Shipments values(7,35,10-29-2025,'adsc@','processing')
insert into Shipments values(8,56,10-30-2025,'adxv@','delivered')
insert into Shipments values(9,8,10-22-2025,'vhhbh@','delivered')

select * from Shipments

CREATE TABLE Shipments (
    shipment_id  serial PRIMARY KEY,
    order_id int NOT NULL,
    shipping_date int NOT NULL,
    tracking_mail VARCHAR,
    status VARCHAR NOT NULL,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id)
)

copy Shipments from 'D:\da189(DATA ANALYTICS)\task2\shipments.csv' DELIMITER ',' csv header

select * from Shipments

CREATE TABLE OrderItems (
    order_item_id serial PRIMARY KEY,
    order_id  int NOT NULL,
    product_id  int NOT NULL,
    quantity INT NOT NULL,
    subtotal float NOT NULL,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
	)
	
copy OrderItems from 'D:\da189(DATA ANALYTICS)\task2\orderitems.csv' DELIMITER ',' csv header

select * from shipments










)