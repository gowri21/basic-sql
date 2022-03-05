SELECT 
temp.city_name,
temp.arithmetic_mean AS Temperature,
pre.arithmetic_mean AS Pressure,
FROM `bigquery-public-data.epa_historical_air_quality.temperature_daily_summary` temp
LEFT JOIN  `bigquery-public-data.epa_historical_air_quality.pressure_daily_summary` pre
ON temp.city_name=pre.city_name
WHERE temp.city_name != 'Not in a city'
limit 1000
