<<<<<<< HEAD
# Final-Capstone-PRESENTATION
## Selected Topic
The topic selected by this group is the US Census Bureau's "Community Resilience Estimates" model data for 2019, and its correlation with reported COVID-19 mortalities at the county level.

The stated purpose of the Community Resilience Estimates model (hereafter known as the CRE) is to evaluate "the capacity of individuals and households within a community to absorb the external stresses of a disaster"1 such as an extreme weather event or, more relevantly to this group's selected topic, a viral pandemic. The data used to generate these estimates were gathered from the American Community Survey and the Census Planning Database, selected for their salience for matters of social equity.

The 2019 CRE dataset was selected specifically because it represented an opportunity to directly evaluate the predictive power of a national social scientific project in light of a national disaster event occuring shortly after the data was gathered and the model compiled. Such an evaluation, which poses real potential for producing novel insights into the empirical validity of a high-profile and publicly-funded study like the CRE, represents a worthwhile project and an excellent exercise in data analytics.

## Data Description
Two data corpora will be analyzed in conjunction by this project: a dataset originally provided by John's Hopkins University and transformed by a Kaggle user which documents reported cases and deaths attributed to COVID-19 in the USA at the county level2, and the aforementioned CRE dataset.

The COVID-19 dataset contains daily updated cases and deaths for each US county, with the earliest entry dating to 1/22/2020. Each row in the dataset represents an updated entry for a specific county, each of which is identified by multiple variables: "fips" (numerical idenitifcation code unique to each county), "count" (the official name of each county), "state" (the official name of the state each county resides within), "state_code" (the recognized two-letter abbreviation for each state name), "lat" and "long" (the two components of a county's geographic coordinates), "date" (the date on which the data for each entry was originally recorded), "cases" (confirmed COVID-19 cases), and "deaths" (confirmed deaths attributed to COVID-19). The originally published data corpus also includes a second file containing supplementary demographic information such as gender and racial population statistics but there are no plans at the moment to include or reference these data in this project's analyses.

For the purposes of this project, the two aforementioned dataset have been cleaned and merged into a single Excel .csv file to reduce filesize, increase legibility, and facilitate incorporation into the various tools through which the data as a whole will be analyzed.

## Research Questions
The meain research question for this project is the question of whether the CRE model as represented by the US Census Bureau data posesses significant predictive power for anticipating COVID-19 mortalities at the county level. This question will be answered first by comparing the CRE risk values to the real COVID-19 mortality data for each county, then by training a machine learning algorithm on the correlation between those data the purpose of extrapolating that correlation into a predictive model that could be used to anticipate the impact of such catastrophes in the future.

Part of the process of investigating this question will involve producing scatter plot visualizations and heat maps to display specifically the individual correlations between the individual risk factors which comprise the overall CRE rating for each county, comparing these variables both to eachother and to the county mortality data so that the significance of the CRE model as a whole can be understood at a more granular level. These individual risk factors will be incorporated into a 'full' ML model, within which their impacts will be subsequently examined for statistical significances and filtered accordingly for incorporation into a second 'partial' model.

README
## Segment 1
Week 1 Contributions by Group Members
Erickson Vo
Cleaned and transformed covid mortality dataset
Merged covid mortality dataset with basic CRE dataset
Performed exploratory visualizations on the merged dataset using Tableau
Alexander Melamed
Proposed initial research question and project outline
Drafted documentation for Segment 1 deliverable
Began work on proposed interactive map visualization by peforming additional cleaning on the merged dataset
Raksha Karthikeyan
Performed log transformations on various data to enable proper statistical analysis
Proposed and performed statistical tests on both the merged and separate datasets
Demonstrated empirical viability and applicability of aforementioned statistical tests
Stephanie Garrett
Cleaned and transformed CRE dataset
Produced heatmap correlation visualization of CRE variables
Combined the two original datasets into the single merged dataset

# Tableau
The dashboard created was created using tableau

The interactive dashboard showcases the covid data reported in the united states. The are 4 interactive charts within the dash board. The State Population chart displays the total population of each state. The cases and deaths chart displays total counts of covid cases and deaths from a state and county level. The risk factor chart untilizes the data from the CRE to represent the population from each state and county with zero risk factors, one to two risk factors and three plus riskfactos.
There is also an interactive map that has 3 map layers, filtered by the risk factors. The map is also used as a filter for the charts provided. When a state and county it will filter the data within the dash board. Making it very user friendly. 

The following image below shows an image of the dashboard

![covid_dashboard](https://user-images.githubusercontent.com/117749494/235545585-49d92e3e-0d3c-4b7e-9b73-88d8ed13099e.png)


## Footnotes
US Census Bureau, “Community Resilience Estimates Equity Supplement,” Census.gov, March 17, 2022, https://www.census.gov/programs-surveys/community-resilience-estimates/data/supplement.html. ↩

Kaggle. “COVID-19 US County JHU Data & Demographics,” March 1, 2023. https://www.kaggle.com/datasets/headsortails/covid19-us-county-jhu-data-demographics. ↩
=======
## Before we begin[Directions for loading DB]

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

# Contributions

For this project, my main focus was primarily finding data that would give a complete understanding of Covid on the county level for the entire duration of the pandemic, meaning cases, and deaths.
Seeing that we have a general understanding at the County and State level of socioeconomic factors, we also can derive which of those factors play an important role in covid mortality and thus justfiy
whether or not the CRE is an accurate predictor of Covid mortality. 

# The Data

The data that the group initially selected(covid_data_log_200908.csv) was sourced from Kaggle and featured data from the first few months of the pandemic, and during the same week I found the John's Hopkins University
dataset we would ultimately use. This dataset (covid_us_counties.csv) contained webscraped data from every county in the United States, with the dates ranging from 2-1-2020 to 2-9-2023. This data contained additional
information I thought may be useful for visualization purposes, like latitude, longitude, state, and county. 

# Processing the data

Unsure if our team wanted to continue using the old covid data or not, I processed the old covid data and merged it with our CRE data so that we could begin performing EDA in a timely manner, 
and followed suit with the larger, John's Hopkins University data as well. The processes for cleaning and EDA were intitially in the "Run_Through.ipynb" file, but to make it clearer, I split 
those files into "Covid_DataOG_Preprocessing.ipynb", "CRE_Equity_County_19_Preprocessing.ipynb","OG_CD_and_CRE_Data_MERGED.ipynb", "JHU_Covid_Cases_ETL.ipynb", and "JHU_data_and_CRE_data_MERGED.ipynb". After
teammates pointing out some needs with the data, the finalized data now exists as "JHU_Cases_Deaths_with_CRE_data_2_0.ipynb" and is what is stored and utilized on the Database.
I utilized various python methods all found within those files to clean the data, and combine the datasets so that we could continue performing EDA and hashing out our hypothesis.

My other main focus is database structure and database management. For the Machine Learning, it is my understanding upon feedback from my instructor that, sometimes it may be common 
to have an entire collection of data from a csv placed into the database as is. As my group began the process of cleaning data, we were constantly updating, then having to go back and 
redo tests and analysis up to the current version of the .csv. To amend this, I created a gitbash script that allows the team members to initialize the DB in their own localized instance,
which then they can connect to in their environment of choice. This change allows the group to:

    1. Have their own local development environment where if they need to adjust or alter the data, they no longer are reliant on a csv.
    2. They can connect through their IDE of choice to the database and then feed data into various models that way.
    3. Creates Data Persistence for the project.
    4. Allows for database management and easy updates *should* we want to make a permanent, change to the database overall (again, reiterating Data Persistance.)
    
Since creating the database, I have created additional tables of interest using sqlalchemy to execute in jupyter notebook, that I think may be of greatest contribution to the covid cases and deaths,
and then bolster our hypothesis. These queries included a 'JOIN' per project requirements.
>>>>>>> main
