## Using the Application

Due to the size of the project, the best way to control the output of the functions, and the readability of the code, the application is broken up into various
notebooks that need to be ran in a specific order.

The JHU original file is too large to share via git; here is a link for access- https://drive.google.com/file/d/1E6ITkErw4N46PJdBaV_dBwFAXRnuK5dY/view?usp=sharing
Please let Stephanie know if you are having trouble accessing the file.

1. creDataCleaning.ipynb
- load CRE_Equity_County_19.csv
- produces Cre_Equity_County_Processing_Complete.csv
2. jhuDataCleaning.ipynb
- load covid_us_county.csv
- produces JHU_Covid_Cases_Processing_Complete.csv
3. originalDataCleaning.ipynb
- produces Covid_Data_Original_Processing_Complete.csv
4. creAndOriginalDataMerged.ipynb
- produces FIP_concat_CRE_to_JHU.csv
- Original_Covid_Data_and_CRE_Data_Merged.csv
5. jhuDataCREDataMerged.ipynb
- produces JHU_Cases_Deaths_with_CRE_Data_2_0.csv


