SELECT state_name,
AVG(arithmetic_mean) AS Average_Temperature
FROM `bigquery-public-data.epa_historical_air_quality.temperature_daily_summary` 
GROUP BY state_name
