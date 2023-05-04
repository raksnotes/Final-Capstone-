

## Selected Topic
The topic selected by this group is the US Census Bureau's "Community Resilience Estimates" model data for 2019, and its correlation with reported COVID-19 mortalities at the county level.  

The stated purpose of the Community Resilience Estimates model (hereafter known as the CRE) is to evaluate "the capacity of individuals and households within a community to absorb the external stresses of a disaster"[^1] such as an extreme weather event or, more relevantly to this group's selected topic, a viral pandemic.  The data used to generate these estimates were gathered from the American Community Survey and the Census Planning Database, selected for their salience for matters of social equity.

The 2019 CRE dataset was selected specifically because it represented an opportunity to directly evaluate the predictive power of a national social scientific project in light of a national disaster event occuring shortly after the data was gathered and the model compiled.  Such an evaluation, which poses real potential for producing novel insights into the empirical validity of a high-profile and publicly-funded study like the CRE, represents a worthwhile project and an excellent exercise in data analytics.

## Data Description
Two data corpora were analyzed in conjunction by this project:  a dataset originally provided by John's Hopkins University and transformed by a Kaggle user which documents reported cases and deaths attributed to COVID-19 in the USA at the county level[^2], and the aforementioned CRE dataset.  

The COVID-19 dataset contains daily updated cases and deaths for each US county, with the earliest entry dating to 1/22/2020.  Each row in the dataset represents an updated entry for a specific county, each of which is identified by multiple variables: "fips" (numerical idenitifcation code unique to each county), "count" (the official name of each county), "state" (the official name of the state each county resides within), "state_code" (the recognized two-letter abbreviation for each state name), "lat" and "long" (the two components of a county's geographic coordinates), "date" (the date on which the data for each entry was originally recorded), "cases" (confirmed COVID-19 cases), and "deaths" (confirmed deaths attributed to COVID-19).

For the purposes of this project, the two aforementioned dataset have been cleaned and merged into a single Excel .csv file to reduce filesize, increase legibility, and facilitate incorporation into the various tools through which the data as a whole will be analyzed.   

## Research Questions
The main research question for this project is the question of whether the CRE model as represented by the US Census Bureau data posesses significant predictive power for anticipating COVID-19 mortalities at the county level.  This question will be answered first by comparing the CRE risk values to the real COVID-19 mortality data for each county to test for a significant correlation between them, then by training a machine learning algorithm on the correlation between those data for the purpose of extrapolating that correlation into a predictive model that could be used to anticipate the impact of such catastrophes in the future.  

## Data Exploration 
The data exploration phase for this project entailed multiple approaches, statistical and visual.  

### Tableau
To easily visualize the geospatial aspects of the merged dataset, an interactive dashboard was created using Tableau, the link to which is embedded below, along with a representative screenshot.

https://public.tableau.com/app/profile/erickson.vo/viz/Filterd_map_updated/Dashboard1?publish=yes

 ![tableau_map](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%203/Images/tableau_map.png)

 This dashboard uses Tableau's powerful interactive layers to render the geospatial data in the dataset as a map of the United States where the user can click on any individual county to instantly see 4 different charts displaying its population, total counts of COVID-19 reported cases and deaths, as well as its reported CRE risk factors.

 ### R
Scatter plot visualizations and statistical summaries were generated using R to display the specific correlations between the individual risk factors which comprise the overall CRE rating for each county, comparing these variables both to eachother and to the county mortality data so that the significance of the CRE model as a whole can be understood at a more granular level.  

 ![vuln_pops](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%203/Images/vuln_pops.png)
 
 ![rac_pops](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%203/Images/rac_pops.png)
 
 ![comb_rf](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%203/Images/comb_rf.png)

From the observed trends in the scatter plots and statistical tests performed for these three divisions of the CRE dataset variables, it was ultimately concluded that the combined risk factor variables indicated the greatest promise as the basis for a regression-based machine learning model for predicting COVID-19 deaths.  

## Data Analysis
Before beginning the data analysis phase of this project, it was decided that an ETL pipeline would be established between a postgreSQL database using PGAdmin4 and the Python 3 programming enviroment in which the machine learning model would be built, trained, and tested.  In the final version  of this project, two models were constructed: a multivariate linear regression model, and a random forest classifier.  In both cases, the COVID-19 mortality data was transformed from a purely continuous variable to a pseudo-qualitative factor by dividing the variable's range into four quartiles which were ascribed the labels of "low", "medium", "intermediate", and "high" indicating corresponding levels of mortality.  This allowed the models to treat the variable as a category, and thereby acheive better performance predicing it as a dependent outcome.  Both models were adjusted for the skewness observed in the dataset during the data exploration phase.  Both models achieved satisfactory levels of accuracy, but the random forest classifier ultimately performed best.  

### Multivariate Linear Regression Model
 ![mlr_model](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%203/Images/mlr_model.png)

### Random Forest Classifier Model
 ![rfc_model](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%203/Images/rfc_model.png)


## Technologies, Tools, and Algorithms
A wide variety of software were used in the development of this project.  Python 3 has been used as the programming enviroment for exploring the data and subsequently building the predictive machine learning model.  Within Python, the Pandas module has been used to read and transform the dataset, Matplotlib have been used to produce helpful visualizations, and Sklearn in combination with Tensorflow and Keras have been used to build and train the algorithm.  The statistical significance tests and scatter plots described in the data exploration section were performed using R.  The interactive map and accompanying visualizations were all created using Tableau.  In the final version of this project, the data pipeline for the predictive model was connected directly to an SQL database using postgreSQL, pgAdmin4, and sqlalchemy.         
  

## Final Project Results
The final results of this project were overall highly satisfactory.  A falsifiable research question was posed, including a null hypothesis which was tested and rejected using proper statistical methods, a sophisticated interactive dashboard was created which aided in understanding the selected dataset, and an accurate machine learning algorithm was produced for the express purpose of capitalizing upon the latent predictive power of the independant variables contained within the CRE corpus.  



[^1]: US Census Bureau, “Community Resilience Estimates Equity Supplement,” Census.gov, March 17, 2022, https://www.census.gov/programs-surveys/community-resilience-estimates/data/supplement.html.
[^2]: Kaggle. “COVID-19 US County JHU Data & Demographics,” March 1, 2023. https://www.kaggle.com/datasets/headsortails/covid19-us-county-jhu-data-demographics.









