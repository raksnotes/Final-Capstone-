# PRESENTATION

## Selected Topic
The topic selected by this group is the US Census Bureau's "Community Resilience Estimates" model data for 2019, and its correlation with reported COVID-19 mortalities at the county level.  

The stated purpose of the Community Resilience Estimates model (hereafter known as the CRE) is to evaluate "the capacity of individuals and households within a community to absorb the external stresses of a disaster"[^1] such as an extreme weather event or, more relevantly to this group's selected topic, a viral pandemic.  The data used to generate these estimates were gathered from the American Community Survey and the Census Planning Database, selected for their salience for matters of social equity.

The 2019 CRE dataset was selected specifically because it represented an opportunity to directly evaluate the predictive power of a national social scientific project in light of a national disaster event occuring shortly after the data was gathered and the model compiled.  Such an evaluation, which poses real potential for producing novel insights into the empirical validity of a high-profile and publicly-funded study like the CRE, represents a worthwhile project and an excellent exercise in data analytics.

## Data Description
Two data corpora will be analyzed in conjunction by this project:  a dataset originally provided by John's Hopkins University and transformed by a Kaggle user which documents reported cases and deaths attributed to COVID-19 in the USA at the county level[^2], and the aforementioned CRE dataset.  

The COVID-19 dataset contains daily updated cases and deaths for each US county, with the earliest entry dating to 1/22/2020.  Each row in the dataset represents an updated entry for a specific county, each of which is identified by multiple variables: "fips" (numerical idenitifcation code unique to each county), "count" (the official name of each county), "state" (the official name of the state each county resides within), "state_code" (the recognized two-letter abbreviation for each state name), "lat" and "long" (the two components of a county's geographic coordinates), "date" (the date on which the data for each entry was originally recorded), "cases" (confirmed COVID-19 cases), and "deaths" (confirmed deaths attributed to COVID-19).  The originally published data corpus also includes a second file containing supplementary demographic information such as gender and racial population statistics but there are no plans at the moment to include or reference these data in this project's analyses.

For the purposes of this project, the two aforementioned dataset have been cleaned and merged into a single Excel .csv file to reduce filesize, increase legibility, and facilitate incorporation into the various tools through which the data as a whole will be analyzed.   

## Research Questions
The main research question for this project is the question of whether the CRE model as represented by the US Census Bureau data posesses significant predictive power for anticipating COVID-19 mortalities at the county level.  This question will be answered first by comparing the CRE risk values to the real COVID-19 mortality data for each county to test for a significant correlation between them, then by training a machine learning algorithm on the correlation between those data the purpose of extrapolating that correlation into a predictive model that could be used to anticipate the impact of such catastrophes in the future.  

## Data Exploration 
The data exploration phase for this project entailed multiple approaches, statistical and visual.  Scatter plot visualizations and statistical summaries were generated using R to display the specific correlations between the individual risk factors which comprise the overall CRE rating for each county, comparing these variables both to eachother and to the county mortality data so that the significance of the CRE model as a whole can be understood at a more granular level.  While these explorations did reveal a number of inter-variable correlations [see below] it was ultimately decided to remove these secondary variables from the dataset so that the risk factor variables themselves could be focused upon.  This is due to these variables' nature as compound measurements inherently accounting for the magnitudes of many of the most prominent secondary variables, as well as being notable for being unique products of the CRE corpus which stand as the best representatives of the CRE project itself.  
 ![DeathsVsVulnerablePops_MLR](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%202/Images/DeathsVsVulnerablePops_MLR.png)
  ![DeathsVsVulnerablePops_MS](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%202/Images/DeathsVsVulnerablePops_MS.png)
## Data Analysis
The results of the project's data analysis, such as they are at this moment, comprise primarily a set of statistical measures as seen below.  
 ![DeathsVsRF_MLR](https://github.com/raksnotes/Final-Capstone-/blob/Alexander/AM_Segment%202/Images/DeathsVsRF_MLR.png)
These measures, specifically the p-values and t-values, are notable becuase the former indicates that there is a significant correlation between the CRE risk factor variables and COVID deaths while the latter indicates the directionality of that correlation is reversed in the case of the "Zero_RF" variables (i.e. the array of values for a given county absent major risk factors).  This, it is proposed by this project, corroborates the hypothesis that the precence of CRE major risk factors should correlate positively with increased COVID mortalities while their absence should correlate negatively.

## Technologies, Tools, and Algorithms
A wide variety of software have been used thus far in the development of this project.  Python 3 has been used as the programming enviroment for exploring the data and subsequently building the predictive machine learning model.  Within Python, the Pandas module has been used to read and transform the dataset, Matplotlib have been used to produce helpful visualizations, and Sklearn in combination with Tensorflow and Keras have been used to build and train the algorithm.  The statistical significance tests described in the Data Analysis section above were performed using R, as were some of the scatter plots described in the Data Exploration section.  The interactive map and accompanying visualizations shown in the README below were all created using Tableau.  In the final version of this project, the data pipeline for such interactive visualizations and the predictive model will be connected directly to an SQL database.       





[^1]: US Census Bureau, “Community Resilience Estimates Equity Supplement,” Census.gov, March 17, 2022, https://www.census.gov/programs-surveys/community-resilience-estimates/data/supplement.html.
[^2]: Kaggle. “COVID-19 US County JHU Data & Demographics,” March 1, 2023. https://www.kaggle.com/datasets/headsortails/covid19-us-county-jhu-data-demographics.







# README

## Segment 2

### Week 2 Contributions by Group Members
- Erickson Vo
    - Began work on PowerPoint presentation for summarizing the project and findings
    - Created interactive geographic map and additional visualizations using Tableau
    - Created interactive dashboard to accompany Tableau visualizations
- Alexander Melamed
    - Contributed to developing the predictive machine learning model trained on the dataset
    - Drafted README and Presentation for Segment 2 deliverables
- Raksha Karthikeyan
    - Performed additional statistical tests on the dataset in R to discover correlation significance between designated independant and dependant variables
    - Contributed to developing the predictive machine learning model trained on the dataset 
- Stephanie Garrett
    - Finalized processing and cleaning of the merged dataset 
    - Created SQL database for storage and access of the dataset 
    - Created gitbash script for locally initializing and connecting database to working environments

### Week 2 Project Status
The current status of the project is on track for the final stage next week; the preliminary data analysis has been completed and the research question clarified such that the only remaining major task is to complete the machine learning model which is anticipated to prove the empirical validity of the project by successfully passing the accuracy threshold required to be considered a means of applying the CRE model for predictions of COVID mortalities.  

As part of With the statistical significance of the correlation between all three CRE Risk Factor variables pasing a p-test, as well as conforming to hypothesized t-value trends, the statistical basis for applying multivariate linear regression as a predictive model algorithm has been established.  Work on that algorithm has begun along parallel tracks by two different group members to maximize chances of discovering an optimal featureset.  

Meanwhile, the data pipeline at the database end has been established along with the interactive visualizations which will play a prominent role in the final presentation of the project as well as having served to facilitate the data exploration and analysis phases.    

### Week 2 Project Results
As of this writing, two different machine learning models are being developed in parallel with the goal of designing a multivariate logestic regression algorithm capable of using the various CRE variable values as independant variables in the prediction of COVID deaths as the dependant variable.  At the moment, both models have not suceeded in achieving accuracy ratings above 0.0127 and 0.0087, respectively.  Additional optimization and alternative featuresets will be pursued to improve these results.  

