# ph_aqi_analysis
## Project Description:

This project analyzes the Air Quality Index (AQI) of major cities in the Philippines from January to June 2025. The primary dataset was sourced from Kaggle: [Philippine Cities Air Quality Index Data 2025](https://www.kaggle.com/datasets/bwandowando/philippine-cities-air-quality-index-data-2025). Since the dataset only included city names, latitude, longitude, and pollutant components, I scraped additional data on each city's region and population.

- **Region data** was sourced from the [Philippine Statistics Authority.](https://psa.gov.ph/classification/psgc/regions)
- **2025 population estimates** were obtained from World [Population Review.](https://worldpopulationreview.com/cities/philippines)

Data cleaning was performed in Excel, analysis in PostgreSQL, and visualizations in Tableau.

Using PostgreSQL for advanced querying, I aimed to answer the following questions:

  1. What is the average pollutant component per city (Jan–Jun 2025)?
  2. What is the average AQI per city per month?
  3. What are the top 10 most populated cities and their corresponding AQI?

To structure the analysis, the query from Question 1 was used as a Common Table Expression (CTE) for Question 2, and its results were used as a CTE for Question 3. AQI levels were categorized based on [OpenWeather’s scale.](https://openweathermap.org/api/air-pollution)

Results were exported as separate CSV files and visualized in a Tableau dashboard, which also includes insights such as the correlation between population and average AQI.

**You can find the interactive dashboard [here](https://public.tableau.com/views/Book2_17522219524310/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) or view the preview in the repository.**
