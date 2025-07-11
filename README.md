# ph_aqi_analysis

This project aims to analyse the air quality index (AQI) of the major cities in the Philippines from January to June 2025. The dataset was downloaded from Kaggle (https://www.kaggle.com/datasets/bwandowando/philippine-cities-air-quality-index-data-2025). Since the dataset only includes the city names, latitude, longitude, and their pollutant components, I data scraped additional data such as the cities' regions and population. The data was cleaned using Excel, analyzed using Postgresql, and visualized using Tableau.

Using Postgresql for advanced querying, I aimed to answer the following questions:
  1. What is the average index quality per city per month?
  2. What is the index quality per month?
  3. What are the top 10 most populated cities and their air quality index?

The AQI levels were based on Openweather's scale (https://openweathermap.org/api/air-pollution).
