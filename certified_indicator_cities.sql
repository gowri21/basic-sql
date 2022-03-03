SELECT DISTINCT city_name,
FROM `bigquery-public-data.epa_historical_air_quality.air_quality_annual_summary`
WHERE LOWER(certification_indicator)='certified'
AND city_name IS NOT NULL 
