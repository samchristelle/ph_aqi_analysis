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

**You can view the interactive dashboard (here)[https://public.tableau.com/views/Book2_17522114616340/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link] with the preview below.**

<div class='tableauPlaceholder' id='viz1752221475115' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Bo&#47;Book2_17522114616340&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Book2_17522114616340&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Bo&#47;Book2_17522114616340&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1752221475115');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='1377px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
