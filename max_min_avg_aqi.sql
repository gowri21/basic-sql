SELECT
state_name,city_name, 
AVG(aqi) AS average_aqi,
MAX(aqi) AS max_aqi,
MIN(aqi) AS min_aqi,
FROM
`bigquery-public-data.epa_historical_air_quality.pm25_frm_daily_summary`
WHERE
sample_duration = "24 HOUR"
AND poc = 2
GROUP BY state_name, city_name
ORDER BY average_aqi desc
