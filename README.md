# Final-Capstone-
## Before we begin..

In order for the script below to work we have to make sure of a couple things:

1. Terminal(bash) can communicate with PGadmin. 

  We can ensure this by going to system environment variables. You can use the windows search bar and type "system environment variables" and something like
  that should pop up. 
  
    -Under "Advanced" Tab:
      - Click Environment Variables, and look for PATH in BOTH User variables and system variables (one at a time obviously).
      - Click "Path"
      - You should see a list of all the user (or system) env variables, and one that includes PostgreSQL. 
      - If you see it, it should look something like C:\Program Files\PostgreSQL\15\bin . This is what we want/ is good!
      - If you do not see it, you need to go to your Program Files in your local drive, find PostgreSQL, then find your 'bin' folder. When you
        find this, copy the file path, and then go back to your environment variables screen like before, and paste this both into User and System windows within 
        Path. (This will make the rest of your life easy :'))

2. That your port matches what is listed in the command ( next to -p ):
    
    This is a little easier than the other one! 
      - Navigate to PGadmin and right click on the server you are wanting to use to create the database in.
      - Click "properties"
      - Go to "Connection"
      - Read the port, if it matches, awesome. We are good. If it doesn't, then you can edit it to match!
      - Now we are ready to intitialize the (almost!)
       

## Initializing the Database:

1. From your pgAdmin, create a database instance named CRE_COVID_DB.

2. From your terminal(bash), cd to the root directory of the capstone project, 
make sure that you have checked out your own branch. Do not go into another persons branch!
and don't make changes there! 

3. THEN Run the following command: `psql -h localhost -p 5432 -U postgres --dbname=CRE_COVID_DB -f sql/setup.sql`
    - You will see a prompt asking for a password. This is YOUR PGadmin password.
    - This will initialize your local db with the blank database tables. You do not need to worry about the schema, its already loaded in :)

4. You can now import the `location_data.csv` and `JHU_Cases_Deaths_with_CRE_Data_2_0.csv` into the location and jhu_cre_cases_deaths tables, respectively.
  - You can view the data and now run your own commands in PGadmin if you want to create more tables, do more with the numbers, etc. 
  - This makes it more convenient because now we don't have to toss around different CSV's, can easily drop columns here or in Jupyter, do whatever,
    without losing progress. The best part is, this will allow YOU to make a connection to your mlenv and JN with the help of sqlalchemy.

## Making a Connection to the Database with Jupyter Notebook:

1. Wherever you saved the lot of these files, you can open jupyter notebook from there via bash or your preferred method. Near the homepage, you should see
   .csv files, an 'database_connection.ipnyb' file, and then sql. 
2. In the sql file, there is a config_copy.json file. 
   - update the password from a blank string to your PGadmin password
   - do NOT print this in the JN
   - do NOT push this anywhere!
   - keep this file HERE! Or the relationship of the config_copy.json the same as the other files.
   - rename config_copy.json to config.json

3. Create a copy of the 'database_connection.ipynb' file from this repo.
  - keep one of these as a 'base' so that each time you want to do any modeling, heatmapping, etc, you can just simply connect to the 
    database and then you are even stevens.
    
4. REMEMBER, make copies if you are adding this info into the ML stuff, just so if you want to go back and edit or compare you can.
  - This way, instead of loading in csv's you are connecting to a localized instance of a the DB on your own end, and can modify it as you wish, preprocess for ML,
    etc.

