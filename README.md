# SQL-Assignments
# SQL DDL & Constraints Assignment

## 📌 Overview

This repository contains my SQL assignment focused on **Data Definition Language (DDL)** commands and **database constraints** using MySQL.

The assignment demonstrates how to create and modify a relational database, define tables, establish relationships, and enforce data integrity using different SQL constraints.

## 🗄️ Database

**Database Name:** `employee`

### Tables

- `departments`
- `location`
- `employees`

## 📚 Topics Covered

### DDL Commands

- `CREATE DATABASE`
- `CREATE TABLE`
- `ALTER TABLE`
- `RENAME TABLE`
- `TRUNCATE TABLE`
- `DROP TABLE`
- `DROP DATABASE`

### Constraints

The assignment demonstrates the use of:

- **PRIMARY KEY** – uniquely identifies records
- **FOREIGN KEY** – establishes relationships between tables
- **NOT NULL** – prevents NULL values
- **UNIQUE** – prevents duplicate values
- **CHECK** – enforces data validation rules
- **ENUM** – restricts values to predefined options
- **AUTO_INCREMENT** – automatically generates sequential identifiers
- **DEFAULT** – automatically assigns a default value

## 🔗 Database Relationships

The `employees` table is connected to:

- `departments` through `department_id`
- `location` through `location_id`

### Relationship Structure

```text
Departments
    |
    | department_id
    |
    v
Employees
    ^
    |
    | location_id
    |
Location
