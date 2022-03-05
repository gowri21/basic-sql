SELECT 
temp.city_name,
AVG(temp.arithmetic_mean) AS Temperature,
AVG(pre.arithmetic_mean) AS Pressure,
FROM `bigquery-public-data.epa_historical_air_quality.temperature_daily_summary` temp
LEFT JOIN  `bigquery-public-data.epa_historical_air_quality.pressure_daily_summary` pre
ON temp.city_name=pre.city_name
WHERE temp.city_name != 'Not in a city'
GROUP BY temp.city_name
limit 1000
