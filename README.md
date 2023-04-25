# Final-Capstone-

## Initializing the Database

First, ensure that you have postgreSQL installed on your machine, and that the database instance is running on port 5432.

From your pgAdmin, create a database instance named CRE_COVID_DB.

From your terminal, cd to the root directory of the capstone project, make sure that you have checked out your own branch. Do not go into another persons branch

and don't make changes there!

THEN Run the following command: `psql -h localhost -p 5432 -U postgres --dbname=CRE_COVID_DB -f sql/setup.sql`

This will initialize your local db with the blank database tables.

You can now import the `location_data.csv` and `JHU_Cases_Deaths_with_CRE_DataV2.0_Deaths_Corrected.csv` into the location and jhu_cre_cases_deaths tables, respectively.

## Making a Connection to the Database

Create a copy of the 'database_connection.ipynb' file from this repo.

All the other required files(give big DB table and the smaller location one I made on the fly) are here, so we should be good from here on out.

From here on out, you shouldn't have to adjust anything, HOWEVER, you need to make copies of it- so rename it something like ex: 'db_ML_modeling.ipynb'. 

This way, instead of loading in csv's you are connecting to a localized instance of a the DB on your own end, and can modify it as you wish, preprocess for ML, etc.

