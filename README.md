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

Footnotes
US Census Bureau, “Community Resilience Estimates Equity Supplement,” Census.gov, March 17, 2022, https://www.census.gov/programs-surveys/community-resilience-estimates/data/supplement.html. ↩

Kaggle. “COVID-19 US County JHU Data & Demographics,” March 1, 2023. https://www.kaggle.com/datasets/headsortails/covid19-us-county-jhu-data-demographics. ↩
