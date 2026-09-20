## 🛍️ SHEIN Database Design and Management

## 📌 Overview
This project focuses on designing and implementing a relational database system for a SHEIN e-commerce application. The database was developed to organize information related to users, orders, items, vendors, reviews, favorites and order details.

The project includes database design, table creation, data insertion, primary and foreign key relationships and SQL queries for retrieving and analyzing information. The database consists of seven main tables: user, order_, item, vendor, review, order_line and favorite.

The project demonstrates how a relational database can be used to structure e-commerce data and support common business queries.

2. 🗂 Project & Structure
```text
├── images/                                        # screenshots of database tables and queries
├── SQLcode.sql                                    # database creation, data insertion, and SQL queries  
├── Thu Thao Huynh - SHEIN Report Paper.pdf        # detailed project report
└── README.md                                      # this file
```
## 🛠 Methodology
The database was developed using a relational database approach.

**Database Design**

The database was designed around seven main entities:

- User — stores user account and contact information.
- Order — stores order dates, totals, statuses and associated users.
- Item — stores product information such as type, color, material and inventory status.
- Vendor — stores vendor information and the items they provide.
- Review — stores customer ratings and product reviews.
- Order Line — connects orders with the items included in each order.
- Favorite — records items saved by users.

Primary keys were used to uniquely identify records while foreign keys were used to establish relationships between related tables.

**SQL Implementation**

The database was implemented using SQL through the following steps:

- Create the database.
- Create the relational tables.
- Define primary and foreign key relationships.
- Insert sample data.
- Write SQL queries to retrieve and analyze information.

The project also includes queries for retrieving specific orders, grouping items by material, filtering vendors by name, identifying orders made after 2020 and listing active users.

## 🔁 Reproducibility

The project can be reproduced using the provided SQLcode.sql file.

To reproduce the database:

- Create a compatible SQL database environment.
- Run the database creation statement.
- Execute the table creation statements.
- Insert the provided sample data.
- Run the relevant SQL queries to reproduce the results.

The SQL file contains the database structure, sample data and analysis queries required to recreate the project.

## 📈 Result

The completed database successfully organizes SHEIN e-commerce data into seven related tables.

The SQL queries demonstrate several types of database operations, including:

- Retrieving a specific order by order ID.
- Counting items by material type.
- Filtering vendors based on their names.
- Identifying orders placed after a specific date.
- Filtering users based on account status.

These queries demonstrate how the database can be used to retrieve information from different parts of an e-commerce system and support basic business data analysis.

## 📚 References

- BADM 352 – Database Design and Management, University of Illinois Urbana-Champaign.
- MySQL Documentation — SQL syntax and relational database concepts.
- Project SQL file — SQLcode.sql.
