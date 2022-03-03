SELECT 
city_name,
COUNT (city_name) AS Number_of_observations
FROM `bigquery-public-data.epa_historical_air_quality.o3_daily_summary` 
WHERE LOWER(state_name)='alabama'
GROUP BY city_name
