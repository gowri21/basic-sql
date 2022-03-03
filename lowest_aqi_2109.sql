SELECT 
 city_name,
 AVG(aqi) AS Average_AQI,
 FROM
 `bigquery-public-data.epa_historical_air_quality.pm25_frm_daily_summary` 
 WHERE date_local BETWEEN '2019-01-01'AND '2019-12-31'
 GROUP BY city_name
 ORDER BY Average_AQI ASC 
