# Restaurant Management System
## Overview

The Restaurant Management System is a Java-based application designed to streamline the operations of a restaurant. It allows users to manage menus, place orders, track customers, and generate reports. The system uses MySQL for data storage and Java Swing with WindowBuilder for the graphical user interface (GUI).

This project demonstrates the use of Object-Oriented Programming (OOP) principles, recursive methods , control structures , and database connectivity in Java. It also includes a login form for user authentication and ensures modularity by using multiple Java classes.

## Features
Login Form :
Authenticate users (e.g., admin, staff).
Secure access to the system.

Menu Management :
Add, update, delete, and view menu items.
Categorize items into starters, mains, desserts, and drinks.

Order Management :
Place orders and calculate totals.
Generate receipts for customers.

Customer Management :
Add and view customer details (name, phone, email).

Reports :
Generate sales summaries and order histories.

Graphical User Interface (GUI) :
Built using Java Swing and WindowBuilder .
Includes visually appealing forms and dialog windows.

Database Integration :
MySQL database (restaurant_db) stores all data.
Efficient data retrieval and manipulation using JDBC.

## Technologies Used
Programming Language : Java
Database : MySQL
IDE : Apache NetBeans
GUI Framework : Java Swing (with WindowBuilder)
Database Driver : MySQL Connector/J
Design Principles : Object-Oriented Programming (OOP)

## Setup Instructions
Prerequisites
Java Development Kit (JDK) : Ensure you have JDK 8 or higher installed.
Apache NetBeans : Install the latest version of Apache NetBeans.
MySQL Server : Install MySQL Server and create a database named restaurant_db.
MySQL Connector/J : Download the MySQL Connector/J JAR file from MySQL's official website .

# Steps to Set Up
1. Database Setup
Open MySQL Workbench or any MySQL client.
Create a new database named restaurant_db:
sql - CREATE DATABASE restaurant_db;
Run the SQL script provided in the db_script.sql file to create the required tables.

2. Import the Project into NetBeans
Open Apache NetBeans.
Go to File > Open Project and select the project folder.
Right-click on the project > Properties > Libraries > Add JAR/Folder .
Add the downloaded MySQL Connector/J JAR file to the project.

3. Configure Database Connection
Open the DatabaseConnection.java file in the src folder.
Update the following fields with your MySQL credentials:
java :
private static final String URL = "jdbc:mysql://localhost:3306/restaurant_db";
private static final String USER = "root"; // Replace with your MySQL username
private static final String PASSWORD = ""; // Replace with your MySQL password

4. Run the Application
Right-click on the project in NetBeans and select Run .
The login form will appear. Use the default credentials:
Username : admin
Password : password
Explore the system's features through the GUI.

# Project structure
RestaurantManagementSystem/
├── src/
│   ├── com.restaurant.management/
│   │   ├── DatabaseConnection.java    # Handles MySQL connection
│   │   ├── UserAuth.java              # Manages user authentication
│   │   ├── MenuManager.java           # Handles menu-related operations
│   │   ├── OrderManager.java          # Manages order placement and processing
│   │   ├── CustomerManager.java       # Handles customer-related operations
│   │   ├── MainApp.java               # Entry point of the application
│   │   └── gui/
│   │       ├── LoginForm.java         # Login form
│   │       ├── MainForm.java          # Main application window
│   │       ├── MenuForm.java          # Menu management form
│   │       ├── OrderForm.java         # Order management form
│   │       └── ReportForm.java        # Sales report generation form
├── db_script.sql                      # SQL script for database setup
└── README.md                          # This file

# Usage
Login : Enter valid credentials to access the system.
Menu Management : Add, update, or delete menu items.
Place Orders : Select items, specify quantities, and calculate totals.
Customer Management : Add new customers or view existing ones.
Generate Reports : View sales summaries and export them if needed.

# Screenshots
Include screenshots of the GUI here to give users a visual idea of the application. For example:

Login Form
SignUp form
SignUp success
Admin Dashboard
Menu Management
Order Placement
Sales Report