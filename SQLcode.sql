/*1) Database setup*/
create database mv30_sheinproject;

/*2) Create tables*/
/*2.1) User table*/
create table user( 
  user_id varchar(20) not null unique, 
  user_name varchar(35) not null, 
  user_haddress varchar(35) not null, 
  user_eaddres varchar(35) not null, 
  user_phone varchar(20) not null, 
  user_pass varchar(20) not null, 
  user_points float(20) not null, 
  user_deactivation varchar(20) not null, 
  primary key (user_id) 
); 

/*2.2) Order table*/
create table vendor(
  order_id varchar(20) not null unique, 
  order_date datetime, 
  order_total float(20), 
  order_status varchar(15), 
  user_id varchar(20), 
  primary key(order_id), 
  foreign key(user_id) references user(user_id) 
); 

/*2.3) Item table*/
create table item( 
  item_id varchar(15) NOT NULL UNIQUE, 
  item_type varchar(15) NOT NULL, 
  item_color varchar(15) NOT NULL, 
  item_material varchar(15) NOT NULL, 
  item_in_stock varchar(5) NOT NULL, 
  primary key (item_id) 
); 

/*2.4) Vendor table*/
create table vendor( 
  vendor_id varchar(20) not null unique, 
  vendor_location varchar(35) not null, 
  vendor_name varchar(35) not null, 
  item_id varchar(15) not null, 
  primary key(vendor_id), 
  foreign key(item_id) references item(item_id) 
  );

/*2.5) Review table*/
create table review( 
  review_id varchar(15) NOT NULL UNIQUE, 
  review_rating int NOT NULL, 
  review_overallfit varchar(10) NOT NULL, 
  order_id varchar(20) NOT NULL, 
  item_id varchar(15) NOT NULL UNIQUE, 
  primary key (review_id), 
  foreign key (order_id) references order_(order_id), 
  foreign key (item_id) references item(item_id) 
); 

/*2.6) Order line table*/
create table order_line( 
  order_id varchar(20) not null, 
  item_id varchar(15) not null, 
  orderline_address varchar(35) not null, 
  primary key(order_id, item_id), 
  foreign key (order_id) references order_(order_id), 
  foreign key (item_id) references item(item_id) 
);

/*2.7) Favorite table*/
create table favorite( 
  user_id varchar(20) not null, 
  item_id varchar(15) not null, 
  favorite_date datetime, 
  favorite_category varchar(20), 
  primary key(user_id, item_id), 
  foreign key (user_id) references user(user_id), 
  foreign key (item_id) references item(item_id) 
); 

/*3) Insert sample data*/
/*3.1) User data*/
insert into user values
  ('00001','Montse Valencia', '904 S 3rd St','monval@icloud.com', '345-657-1046', 'Myname123', 204, 'Active'); 
insert into user values
  ('00002','Sophia Korman', '701 S Green Ave','skor@gmail.com', '773-456-8046', 'Password', 1000, 'Active'); 
insert into user values
  ('00003', ‘Aimee Wang’, ‘999 W 8th St’, happyman@gmail.com, 847-657-9019', ‘Onetwothree’, 10, 'Active'); 
insert into user values
  ('00004','Bob Walter', '360 E Hollywood St','bobbywalter@hotmail.com', '847-657-9019', 'Onetwothree', 10, 'Active'); 
insert into user values
  ('00004', ‘John Doe’ , ‘55 N 5th St',  ‘sadman@gmail.com’,' 333-333-3333’, 'seventy2', 99, 'Inactive');

/*3.2) Order data*/
insert into user values
  (‘00001’, ‘2022-11-13 22:22:22’, 2918.2, ‘Delivered’', '00001’); 
insert into user values
  (‘00002’, ‘2021-12-13 22:12:222’, 28.2, ‘Delivered’', ‘00002’); 
insert into user values
  (‘00003’, ‘2021-11-13 22:12:22’, 2.9, ‘Not Delivered’, ‘00003’); 
insert into user values
  (‘00004’, ‘2001-11-07 12:12:01’, 2.9, ‘Delivered’, ‘00004’); 
insert into user values
  (‘00005’, ‘2011-09-07 07:07:07’, 6, ‘Delivered’, ‘00005’);

/*3.3) Item data*/
insert into item values
  (14790569, 'summer dress', 'baby blue', 'linen', 'in stock'); 
insert into item values
  (23456389, 'mini skirt', 'black', 'rayon', 'out of stock'); 
insert into item values
  (45630052, 'baby tee', 'white', 'cotton', 'in stock'); 
insert into item values
  (27303243,'womens tops', 'black', 'viscose', 'in stock'); 
insert into item values
  (13148034,'jean shorts', 'medium wash', 'denim', 'in stock'); 

/*3.4) Vendor data*/
insert into vendor values
  ('101','Italy', 'Happy Tees', 45630052); 
insert into vendor values
  ('102', 'Canada', 'Cold Sweaters Inc.', 34526792); 
insert into vendor values
  ('103', 'Japan', 'We are Crafty', 23456389); 
insert into vendor values
  ('104', 'Mexico', 'HeartJeans',13148034); 
insert into vendor values
  ('105', 'Brazil', 'Sunny Smiles', 13148034);  
insert into vendor values
  ('106','Ukraine', 'BeSelf', 27303243); 

/*3.5) Review data*/
Insert into review value
  (‘122’,4, ‘Fits well’,’00002’, ‘27303243’); 
insert into review value 
  ('123', 4, 'Perfect', '00004', '34526792'); 
insert into review value
  ('124', 5, 'Loose' , '00001', '45630052'); 
insert into review value
  ('125', 3, 'Small' , '00005', '14790569'); 
insert into review value
  ('126', 2, 'Tight' , '00003', '13148034');

/*3.6) Order line data*/
insert into order_line value
  ('00003', ' 13148034', '904 S 3rd St'); 
insert into order_line value
  ('00004', '34526792', '360 E Hollywood St'); 
insert into order_line values
  ('00001', '45630052', '904 S 3rd St'); 
insert into order_line values
  ('00002', '27303243', '701 S Green Ave'); 
insert into order_line values
  ('00005', '14790569', '55 N 5th St'); 

/*3.7) Favorite data*/
insert into favorite values
  ( '00001', 23456389, '2022-05-07', 'Bottom'); 
insert into favorite values
  ('00002', 45630052, '2020-07-08 14:56:09', 'Top'); 
insert into favorite values
  ('00002', 23456389, '2020-08-14 12:34:45', 'Bottom'); 
insert into favorite values
  ('00002', 13148034, '2020-06-13 02:02:02', 'Bottom'); 
insert into favorite value
  ('00004', 45630052, '2021-08-21 13:04:25', 'Top'); 
insert into favorite value
  ('00005' , 14790569, '2023-09-30 08:45:56', 'Dress');

/*4) Relevant queries*/
/*4.1) List the order whose order ID is 00001*/
select * 
from order_
where order_id = '00001';

/*4.2) Count the number of items for each material group*/
select item_material, count(*)
from item
group by item_material;

/*4.3) List vendors whose name starts with H*/
select *
from vendor
where vendor_name like 'H%';

/*4.4) List orders made after 2020*/
select order_id, order_date, user_id
from order_
where order_date > '2020-01-01';

/*4.5) List all active users on SHEIN*/
select user_id, user_name, user_eaddres, user_phone, user_deactivation
from user
where user_deactivation = 'Active';


 

  




