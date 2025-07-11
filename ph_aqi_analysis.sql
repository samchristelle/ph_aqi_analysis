--Wrap average pollutant component per city from Jan-Jun in CTEs
With Jan AS
(SELECT 
	city_name,
	ROUND(AVG(carbon_monoxide_components),2) AS avg_co,
	ROUND(AVG(nitrogen_oxide_components),2) AS avg_no,
	ROUND(AVG(nitrogen_dioxide_components),2) AS avg_no2,
	ROUND(AVG(trioxygen_component),2) AS avg_o3,
	ROUND(AVG(sulfur_dioxide_component),2) AS avg_so2,
	ROUND(AVG(fine_particulate_matter),2) AS avg_pm2_5,
	ROUND(AVG(particulate_matter_10),2) AS avg_pm10,
	ROUND(AVG(ammonia_component),2) AS avg_nh3
FROM Jan2025
GROUP BY city_name),
Feb AS
(SELECT 
	city_name,
	ROUND(AVG(carbon_monoxide_components),2) AS avg_co,
	ROUND(AVG(nitrogen_oxide_components),2) AS avg_no,
	ROUND(AVG(nitrogen_dioxide_components),2) AS avg_no2,
	ROUND(AVG(trioxygen_component),2) AS avg_o3,
	ROUND(AVG(sulfur_dioxide_component),2) AS avg_so2,
	ROUND(AVG(fine_particulate_matter),2) AS avg_pm2_5,
	ROUND(AVG(particulate_matter_10),2) AS avg_pm10,
	ROUND(AVG(ammonia_component),2) AS avg_nh3
FROM Feb2025
GROUP BY city_name),
Mar AS
(SELECT 
	city_name,
	ROUND(AVG(carbon_monoxide_components),2) AS avg_co,
	ROUND(AVG(nitrogen_oxide_components),2) AS avg_no,
	ROUND(AVG(nitrogen_dioxide_components),2) AS avg_no2,
	ROUND(AVG(trioxygen_component),2) AS avg_o3,
	ROUND(AVG(sulfur_dioxide_component),2) AS avg_so2,
	ROUND(AVG(fine_particulate_matter),2) AS avg_pm2_5,
	ROUND(AVG(particulate_matter_10),2) AS avg_pm10,
	ROUND(AVG(ammonia_component),2) AS avg_nh3
FROM Mar2025
GROUP BY city_name),
Apr AS
(SELECT 
	city_name,
	ROUND(AVG(carbon_monoxide_components),2) AS avg_co,
	ROUND(AVG(nitrogen_oxide_components),2) AS avg_no,
	ROUND(AVG(nitrogen_dioxide_components),2) AS avg_no2,
	ROUND(AVG(trioxygen_component),2) AS avg_o3,
	ROUND(AVG(sulfur_dioxide_component),2) AS avg_so2,
	ROUND(AVG(fine_particulate_matter),2) AS avg_pm2_5,
	ROUND(AVG(particulate_matter_10),2) AS avg_pm10,
	ROUND(AVG(ammonia_component),2) AS avg_nh3
FROM Apr2025
GROUP BY city_name),
May AS
(SELECT 
	city_name,
	ROUND(AVG(carbon_monoxide_components),2) AS avg_co,
	ROUND(AVG(nitrogen_oxide_components),2) AS avg_no,
	ROUND(AVG(nitrogen_dioxide_components),2) AS avg_no2,
	ROUND(AVG(trioxygen_component),2) AS avg_o3,
	ROUND(AVG(sulfur_dioxide_component),2) AS avg_so2,
	ROUND(AVG(fine_particulate_matter),2) AS avg_pm2_5,
	ROUND(AVG(particulate_matter_10),2) AS avg_pm10,
	ROUND(AVG(ammonia_component),2) AS avg_nh3
FROM May2025
GROUP BY city_name),
Jun AS
(SELECT 
	city_name,
	ROUND(AVG(carbon_monoxide_components),2) AS avg_co,
	ROUND(AVG(nitrogen_oxide_components),2) AS avg_no,
	ROUND(AVG(nitrogen_dioxide_components),2) AS avg_no2,
	ROUND(AVG(trioxygen_component),2) AS avg_o3,
	ROUND(AVG(sulfur_dioxide_component),2) AS avg_so2,
	ROUND(AVG(fine_particulate_matter),2) AS avg_pm2_5,
	ROUND(AVG(particulate_matter_10),2) AS avg_pm10,
	ROUND(AVG(ammonia_component),2) AS avg_nh3
FROM Jun2025
GROUP BY city_name),
--Average index quality per city per month and wrap in CTE
avg_air_qual_month AS 
(SELECT 
	Jan.city_name,
	CAST((CASE 
		WHEN Jan.avg_so2 < 20 AND Jan.avg_no2 < 40 AND Jan.avg_pm10 < 20 AND Jan.avg_pm2_5 < 10 AND Jan.avg_o3 < 60 AND Jan.avg_co < 4400
			THEN '1'
		WHEN Jan.avg_so2 < 80 AND Jan.avg_no2 < 70 AND Jan.avg_pm10 < 50 AND Jan.avg_pm2_5 < 25 AND Jan.avg_o3 < 100 AND Jan.avg_co < 9400
			THEN '2'
		WHEN Jan.avg_so2 < 250 AND Jan.avg_no2 < 150 AND Jan.avg_pm10 < 100 AND Jan.avg_pm2_5 < 50 AND Jan.avg_o3 < 140 AND Jan.avg_co < 12400
			THEN '3'
		WHEN Jan.avg_so2 < 350 AND Jan.avg_no2 < 200 AND Jan.avg_pm10 < 200 AND Jan.avg_pm2_5 < 75 AND Jan.avg_o3 < 180 AND Jan.avg_co < 15400
			THEN '4'
		ELSE '5' END) AS INTEGER) AS Jan_index,
	CAST((CASE 
		WHEN Feb.avg_so2 < 20 AND Feb.avg_no2 < 40 AND Feb.avg_pm10 < 20 AND Feb.avg_pm2_5 < 10 AND Feb.avg_o3 < 60 AND Feb.avg_co < 4400
			THEN '1'
		WHEN Feb.avg_so2 < 80 AND Feb.avg_no2 < 70 AND Feb.avg_pm10 < 50 AND Feb.avg_pm2_5 < 25 AND Feb.avg_o3 < 100 AND Feb.avg_co < 9400
			THEN '2'
		WHEN Feb.avg_so2 < 250 AND Feb.avg_no2 < 150 AND Feb.avg_pm10 < 100 AND Feb.avg_pm2_5 < 50 AND Feb.avg_o3 < 140 AND Feb.avg_co < 12400
			THEN '3'
		WHEN Feb.avg_so2 < 350 AND Feb.avg_no2 < 200 AND Feb.avg_pm10 < 200 AND Feb.avg_pm2_5 < 75 AND Feb.avg_o3 < 180 AND Feb.avg_co < 15400
			THEN '4'
		ELSE '5' END) AS INTEGER) AS Feb_index,
	CAST((CASE 
		WHEN Mar.avg_so2 < 20 AND Mar.avg_no2 < 40 AND Mar.avg_pm10 < 20 AND Mar.avg_pm2_5 < 10 AND Mar.avg_o3 < 60 AND Mar.avg_co < 4400
			THEN '1'
		WHEN Mar.avg_so2 < 80 AND Mar.avg_no2 < 70 AND Mar.avg_pm10 < 50 AND Mar.avg_pm2_5 < 25 AND Mar.avg_o3 < 100 AND Mar.avg_co < 9400
			THEN '2'
		WHEN Mar.avg_so2 < 250 AND Mar.avg_no2 < 150 AND Mar.avg_pm10 < 100 AND Mar.avg_pm2_5 < 50 AND Mar.avg_o3 < 140 AND Mar.avg_co < 12400
			THEN '3'
		WHEN Mar.avg_so2 < 350 AND Mar.avg_no2 < 200 AND Mar.avg_pm10 < 200 AND Mar.avg_pm2_5 < 75 AND Mar.avg_o3 < 180 AND Mar.avg_co < 15400
			THEN '4'
		ELSE '5' END) AS INTEGER) AS Mar_index,
	CAST((CASE 
		WHEN Apr.avg_so2 < 20 AND Apr.avg_no2 < 40 AND Apr.avg_pm10 < 20 AND Apr.avg_pm2_5 < 10 AND Apr.avg_o3 < 60 AND Apr.avg_co < 4400
			THEN '1'
		WHEN Apr.avg_so2 < 80 AND Apr.avg_no2 < 70 AND Apr.avg_pm10 < 50 AND Apr.avg_pm2_5 < 25 AND Apr.avg_o3 < 100 AND Apr.avg_co < 9400
			THEN '2'
		WHEN Apr.avg_so2 < 250 AND Apr.avg_no2 < 150 AND Apr.avg_pm10 < 100 AND Apr.avg_pm2_5 < 50 AND Apr.avg_o3 < 140 AND Apr.avg_co < 12400
			THEN '3'
		WHEN Apr.avg_so2 < 350 AND Apr.avg_no2 < 200 AND Apr.avg_pm10 < 200 AND Apr.avg_pm2_5 < 75 AND Apr.avg_o3 < 180 AND Apr.avg_co < 15400
			THEN '4'
		ELSE '5' END) AS INTEGER) AS Apr_index,
	CAST((CASE 
		WHEN May.avg_so2 < 20 AND May.avg_no2 < 40 AND May.avg_pm10 < 20 AND May.avg_pm2_5 < 10 AND May.avg_o3 < 60 AND May.avg_co < 4400
			THEN '1'
		WHEN May.avg_so2 < 80 AND May.avg_no2 < 70 AND May.avg_pm10 < 50 AND May.avg_pm2_5 < 25 AND May.avg_o3 < 100 AND May.avg_co < 9400
			THEN '2'
		WHEN May.avg_so2 < 250 AND May.avg_no2 < 150 AND May.avg_pm10 < 100 AND May.avg_pm2_5 < 50 AND May.avg_o3 < 140 AND May.avg_co < 12400
			THEN '3'
		WHEN May.avg_so2 < 350 AND May.avg_no2 < 200 AND May.avg_pm10 < 200 AND May.avg_pm2_5 < 75 AND May.avg_o3 < 180 AND May.avg_co < 15400
			THEN '4'
		ELSE '5' END) AS INTEGER) AS May_index,
	CAST((CASE 
		WHEN Jun.avg_so2 < 20 AND Jun.avg_no2 < 40 AND Jun.avg_pm10 < 20 AND Jun.avg_pm2_5 < 10 AND Jun.avg_o3 < 60 AND Jun.avg_co < 4400
			THEN '1'
		WHEN Jun.avg_so2 < 80 AND Jun.avg_no2 < 70 AND Jun.avg_pm10 < 50 AND Jun.avg_pm2_5 < 25 AND Jun.avg_o3 < 100 AND Jun.avg_co < 9400
			THEN '2'
		WHEN Jun.avg_so2 < 250 AND Jun.avg_no2 < 150 AND Jun.avg_pm10 < 100 AND Jun.avg_pm2_5 < 50 AND Jun.avg_o3 < 140 AND Jun.avg_co < 12400
			THEN '3'
		WHEN Jun.avg_so2 < 350 AND Jun.avg_no2 < 200 AND Jun.avg_pm10 < 200 AND Jun.avg_pm2_5 < 75 AND Jun.avg_o3 < 180 AND Jun.avg_co < 15400
			THEN '4'
		ELSE '5' END)AS INTEGER) AS Jun_index
FROM Jan
INNER JOIN Feb ON Jan.city_name = Feb.city_name
INNER JOIN Mar ON Feb.city_name = Mar.city_name
INNER JOIN Apr ON Mar.city_name = Apr.city_name
INNER JOIN May ON Apr.city_name = May.city_name
INNER JOIN Jun ON May.city_name = Jun.city_name)
--Top 10 Most Populated Cities in the Philippines as of June 2025 and their air quality index
SELECT 
  c.city_name,
  est_population_2025,
  ROUND((jan_index + feb_index + mar_index + apr_index + may_index + jun_index) / 6.0, 2) AS avg_city_index,
  CASE 
    WHEN ROUND((jan_index + feb_index + mar_index + apr_index + may_index + jun_index) / 6.0, 2) <= 1 THEN 'Good'
    WHEN ROUND((jan_index + feb_index + mar_index + apr_index + may_index + jun_index) / 6.0, 2) <= 2 THEN 'Fair'
    WHEN ROUND((jan_index + feb_index + mar_index + apr_index + may_index + jun_index) / 6.0, 2) <= 3 THEN 'Moderate'
    WHEN ROUND((jan_index + feb_index + mar_index + apr_index + may_index + jun_index) / 6.0, 2) <= 4 THEN 'Poor'
    ELSE 'Very Poor'
  END AS index_quality
FROM cities_info AS c
INNER JOIN avg_air_qual_month AS a
  ON c.city_name = a.city_name
ORDER BY est_population_2025 DESC;
