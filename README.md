# Final-Capstone-

## Initializing the Database

First, ensure that you have postgreSQL installed on your machine, and that the database instance is running on port 5432.

From your pgAdmin, create a database instance named CRE_COVID_DB.

From your terminal, cd to the root directory of the capstone project.

Run the following command: `psql -h localhost -p 5432 -U postgres --dbname=CRE_COVID_DB -f sql/initialize.sql`

This will initialize your local db with the blank databases.

You can now import the `location_data.csv` and `JHU_Cases_Deaths_with_CRE_DataV2.0_Deaths_Corrected.csv` into the location and jhu_cre_cases_deaths tables, respectively.

## Making a Connection to the Database

Create a copy of 