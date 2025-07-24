# Project Overview

This project aims to analyse the air quality index (AQI) of the major cities in the Philippines from January to June 2025. The dataset was downloaded from [Kaggle](https://www.kaggle.com/datasets/bwandowando/philippine-cities-air-quality-index-data-2025). Since the dataset only includes the city names, latitude, longitude, and their pollutant components, I data scraped additional data such as the cities' regions and population. The region was based on the Philippine Statistics Authority's website (https://psa.gov.ph/classification/psgc/regions) and the 2025 population was collected from [World Population Review](https://worldpopulationreview.com/cities/philippines). The data was cleaned using Excel, analyzed using Postgresql, and visualized using Tableau.

Using Postgresql for advanced querying, I aimed to answer the following questions:
  1. What is the average pollutant component per city from Jan-Jun 2025?
  2. What is the average index quality per city per month?
  3. What are the top 10 most populated cities in the Philippines and their air quality index?

The query for Question 1 was used as a CTE to answer Question 2, and its answer was used as a CTE to answer Question 3. The AQI levels were based on [Openweather's scale](https://openweathermap.org/api/air-pollution).

The results from each of the questions above were saved as separate CSV files and visualized using a Tableau dashboard. The dashboard also provides additional insights such as the correlation between city population and average AQI.
