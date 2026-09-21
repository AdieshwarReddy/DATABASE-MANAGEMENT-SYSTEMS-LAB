# Experiment 1 - File System, Database System and Data Models

## Aim

To understand File Systems, Database Systems and different types of Data Models.

## File System

A file system stores data inside files on a computer.

Examples:

- Text files
- CSV files
- Excel files
- Documents

Before database systems became common, organizations stored information in separate files.

## Problems with File Systems

### 1. Data Redundancy

The same information may be stored in multiple files.

### 2. Data Inconsistency

If one copy of data changes but another copy does not, inconsistent data can occur.

### 3. Difficult Data Access

Finding specific information from many files can become difficult.

### 4. Security Problems

Controlling who can access specific data is difficult.

### 5. Data Isolation

Information may be stored in different file formats and locations.

## Database System

A database is an organized collection of related data.

A Database Management System (DBMS) is software used to create, store, retrieve and manage data.

Examples:

- MySQL
- PostgreSQL
- Oracle Database
- Microsoft SQL Server

## Advantages of DBMS

- Reduced data redundancy
- Improved data consistency
- Better security
- Easier data retrieval
- Backup and recovery
- Multiple-user access
- Data integrity

## Data Models

A data model defines how data is organized and related.

### Hierarchical Model

Data is arranged in a tree-like structure.

Example:

Company
↓
Department
↓
Employee

### Network Model

A record can have relationships with multiple records.

### Relational Model

Data is stored in tables containing rows and columns.

Example:

| Student ID | Name | Department |
|---|---|---|
| 1 | Adhi | AIML |
| 2 | Ravi | CSE |

### Object-Oriented Model

Data is represented using objects similar to object-oriented programming.

## Conclusion

DBMS provides a better way to manage large amounts of structured information compared to traditional file systems.
