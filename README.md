# ETL-Project

## U.S. Quality of life by State

![ETL](/Images/ETL.jpg)

### Team Members

* Harry Feldman
* Jessica Pardo
* Andrey Tokarev
* Raven Washington

### Introduction

 This project is designed to conduct an ETL process by extracting, transforming, and loading data that pertains to the quality of life in different States of the USA. The purpose of extracting the data will be to create a database for potential future country-wide analysis of housing, healthcare, and other measure of quality of life.


### Data Extraction

In this project, CVS datasets were extrated from the following sources:

* U.S. State Table: http://www.whypad.com/posts/excel-spreadsheet-of-us-states/583/
* Quality Of Life by State: https://worldpopulationreview.com/state-rankings/quality-of-life-by-state
* USA Public Schools Data: https://www.kaggle.com/carlosaguayo/usa-public-schools
* Zillow Economics Data: https://www.kaggle.com/zillow/zecon
* USA Income Levels by United States Census Bureau: https://data.world/uscensusbureau/acs-2015-5-e-income/workspace/file?filename=USA_ZCTA.csv
* US Crime rates by County: https://www.kaggle.com/mikejohnsonjr/united-states-crime-rates-by-county
* USA Income Levels by United States Census Bureau: https://data.world/uscensusbureau/acs-2015-5-e-income/workspace/file?filename=USA_ZCTA.csv
* Hospital Dataset: https://www.kaggle.com/carlosaguayo/usa-hospitals/version/1
* Hospital Rating Dataset: https://www.kaggle.com/center-for-medicare-and-medicaid/hospital-ratings
* USA Unemployment rate Dataset: https://www.kaggle.com/carlosaguayo/2018-unemployment-rate-by-county/version/1

To complete the process of data extraction and transformation, it was prepared a python file [ETL Notebook](ETL_Notebook.ipynb).


## Data Enginering

After extracting the data, The Entity-Relationship Diagram (ERD) by using an open-source toolkit called Quickdatabasediagrams was created. The model looks as follows:

![ERD](/ERD/QuickDBD-sates_db.png)

## Data Transformation

The transformation of the data include the following workflow:

* Pandas functions in Jupyter Notebook to transform all CSV files responses.
* CVS files transformed into a dataframes.
* Python transformation functions for data cleaning, joining, filtering, and null values removed.
* Several columns removed
* Duplicate rows was removed, and successfully managed.

More detail of the transformation of the data can be seen in [ETL Notebook](ETL_Notebook.ipynb).

## Data Loading

After the process of extrating and transforming the data, a SQL database was creaded to load the dababase. Firts, A table schema was created [SQL Table Schema](schema.sql) for each of the CSV files saved in the Resources directory.

![Schema](/Images/schema.png)

Using Python and SQLAlchemy, the data was loaded to the tables into PostgreSQL for population.

![Loading](/Images/SQL_Loading.png)




