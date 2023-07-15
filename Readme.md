# EHR Database Schema

This repository contains the SQL schema file for the Electronic Health Record (EHR) system database. The schema includes tables for patients, doctors, medicines, and prescriptions.

## Database Setup

To set up the database and create the necessary tables, follow these steps:

1. Make sure you have a compatible database management system (e.g., MySQL, PostgreSQL) installed and running.

2. Create a new database for the EHR system. You can use a database management tool or execute the following SQL command:

   ```sql
   CREATE DATABASE ehr_database; 

   ```

Open your database management tool or connect to the database using the command line.

Execute the ehr_schema.sql file provided in this repository to create the required tables. You can do this by running the following command:
```
psql -U your_username -d ehr_database -f ehr_schema.sql

```

Replace your_username with your database username, and ehr_database with the name of the database you created.

Note: Adjust the command based on the database management system you're using.

## Running the Schema
1. Once the database and tables are set up, you can start using the EHR system. Here's an example of how to execute SQL queries to interact with the database:

2. Connect to your database using your preferred database management tool or command-line interface.

Execute SQL queries to perform operations such as adding patients, doctors, medicines, and prescriptions, retrieving patient data along with their prescribed medicines, etc.

#### Example query: Retrieve patient data along with their prescribed medicines:

```
SELECT p.name AS patient_name, m.name AS medicine_name, pr.prescribed_date
FROM patients p
INNER JOIN prescriptions pr ON p.id = pr.patient_id
INNER JOIN medicines m ON pr.medicine_id = m.id;

```